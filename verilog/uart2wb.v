// PC sendet                           FPGA sendet
// p Adressmodus                       p
// 00 00 00 Adresse mit LSB first      k k k
// w Datenmodus                        w
// 00 00 00 Payload                    k k k oder n für Fehler


module uart2wb(
    i_wb_clk,
    i_wb_rst,
    i_wb_ack,
    i_wb_dat,
    o_wb_dat,
    o_wb_stb,
    o_wb_cyc,
    rx_dat,
    received,
    tx_dat,
    send
);

// wb interface
input i_wb_clk;
input i_wb_rst;
input i_wb_ack;
input [7:0] i_wb_dat;
output reg [7:0] o_wb_dat;
output reg o_wb_stb;
output o_wb_cyc;
assign o_wb_cyc = o_wb_stb;

// uart interface
input [7:0] rx_dat;
input received;
output reg [7:0] tx_dat;
output reg send;


// . 0x2e
// p 0x70
// w 0x77
// r 0x72
// 0-9 0x30-0x39
// A-F 0x41-0x46


function [7:0] convert;
input [3:0] val;
begin
    case( val )
        4'h0: convert = 7'h30;
        4'h1: convert = 7'h31;
        4'h2: convert = 7'h32;
        4'h3: convert = 7'h33;
        4'h4: convert = 7'h34;
        4'h5: convert = 7'h35;
        4'h6: convert = 7'h36;
        4'h7: convert = 7'h37;
        4'h8: convert = 7'h38;
        4'h9: convert = 7'h39;
        4'ha: convert = 7'h42;
        4'hb: convert = 7'h43;
        4'hc: convert = 7'h44;
        4'hd: convert = 7'h45;
        4'he: convert = 7'h46;
        4'hf: convert = 7'h47;
    endcase
end
endfunction

// input data evalutation
localparam
    DECODE_RESET      = 5'h10,
    DECODE_SET_ADDR   = 5'h11,
    DECODE_READ_DATA  = 5'h12,
    DECODE_WRITE_DATA = 5'h13,
    DECODE_INVALID    = 5'h1f;

reg [4:0] r_decode;
reg next;
always @(posedge i_wb_clk)
begin
    next <= 'h0;
    if( received ) begin
        next <= 'h1;
        case( rx_dat )
            8'h2e: r_decode <= DECODE_RESET;
            8'h70: r_decode <= DECODE_SET_ADDR;
            8'h72: r_decode <= DECODE_READ_DATA;
            8'h77: r_decode <= DECODE_WRITE_DATA;

            8'h30: r_decode <= 'h0;
            8'h31: r_decode <= 'h1;
            8'h32: r_decode <= 'h2;
            8'h33: r_decode <= 'h3;
            8'h34: r_decode <= 'h4;
            8'h35: r_decode <= 'h5;
            8'h36: r_decode <= 'h6;
            8'h37: r_decode <= 'h7;
            8'h38: r_decode <= 'h8;
            8'h39: r_decode <= 'h9;
            8'h41: r_decode <= 'ha;
            8'h42: r_decode <= 'hb;
            8'h43: r_decode <= 'hc;
            8'h44: r_decode <= 'hd;
            8'h45: r_decode <= 'he;
            8'h46: r_decode <= 'hf;
            default: r_decode <= DECODE_INVALID;
        endcase
    end
end


localparam
    STATE_IDLE      = 0,
    STATE_ADDRESS   = 1,
    STATE_DATA      = 2,
    STATE_WAITWRITE = 3,
    STATE_READ      = 4,
    STATE_READ2     = 5;

reg [23:0] r_addr;
reg [5:0] r_addr_nibble_idx;

reg [7:0] r_data;
reg r_data_nibble_idx;

reg [2:0] r_state;
always @(posedge i_wb_clk)
begin
    o_wb_dat <= 'h0;
    o_wb_stb <= 1'b0;
    tx_dat <= 'h0;
    send <= 1'b0;
    case(r_state)
        STATE_IDLE:
            if( r_decode == DECODE_SET_ADDR ) begin
                r_state <= STATE_ADDRESS;
                r_addr <= 'h0;
                r_addr_nibble_idx <= 'h1;
            end else if( r_decode == DECODE_WRITE_DATA ) begin
                r_state <= STATE_DATA;
                r_data_nibble_idx <= 'h0;
            end
        STATE_ADDRESS:
            if( next ) begin
                if( r_decode[4] ) begin
                    r_state <= STATE_IDLE; // evaluate r_decode in next state
                end else begin
                    r_addr_nibble_idx[5:0] <= { r_addr_nibble_idx[4:0], 1'b0 };
                    if     ( r_addr_nibble_idx[0] == 'b1 ) r_addr[7:4] <= r_decode[3:0];
                    else if( r_addr_nibble_idx[1] == 'b1 ) r_addr[3:0] <= r_decode[3:0];
                    else if( r_addr_nibble_idx[2] == 'b1 ) r_addr[15:12] <= r_decode[3:0];
                    else if( r_addr_nibble_idx[3] == 'b1 ) r_addr[11:8] <= r_decode[3:0];
                    else if( r_addr_nibble_idx[4] == 'b1 ) r_addr[23:20] <= r_decode[3:0];
                    else if( r_addr_nibble_idx[5] == 'b1 ) r_addr[19:16] <= r_decode[3:0];
                end
            end
        STATE_DATA:
            if ( next ) begin
                if( r_data_nibble_idx ) begin
                    //r_data[3:0]] <= r_decode[3:0];
                    r_state <= STATE_WAITWRITE;
                    o_wb_dat <= { r_data[3:0], r_decode[3:0] };
                    o_wb_stb <= 1'b1;
                end else begin
                    r_data[3:0] <= r_decode[3:0];
                end
                r_data_nibble_idx <= ~r_data_nibble_idx;
            end
        STATE_WAITWRITE:
            if ( i_wb_ack ) begin
                o_wb_stb <= 'b0;
            end
        STATE_READ:
            if ( i_wb_ack ) begin
                // send upper nibble
                r_data <= i_wb_dat;
                tx_dat <= convert(r_data[7:4]);
                send <= 1'b1;
                r_state <= STATE_READ2;
            end
        STATE_READ2:
            if( send ) begin
                send <= 1'b0;
            end else begin
                send <= 1'b1;
                tx_dat <= convert(r_data[3:0]);
                r_state <= STATE_IDLE;
            end
            
    endcase

    if( i_wb_rst || r_decode == DECODE_INVALID ) begin
        r_state <= STATE_IDLE;
    end
end

endmodule

