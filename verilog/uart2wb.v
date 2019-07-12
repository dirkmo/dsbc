module uart2wb(
    i_wb_clk,
    i_wb_rst,
    i_wb_ack,
    i_wb_dat,
    o_wb_dat,
    o_wb_stb,
    o_wb_cyc,
    o_wb_addr,
    o_wb_rw,
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
output reg [23:0] o_wb_addr;
output reg o_wb_rw;

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
            default: r_decode <= DECODE_RESET;
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

reg [5:0] addr_nibble_idx;

reg [3:0] r_data;
reg r_data_nibble_idx;

wire [3:0] nibble;
reg [7:0] nibble_ascii;

reg [2:0] r_state;
always @(posedge i_wb_clk)
begin
    tx_dat <= 'h0;
    send <= 1'b0;
    o_wb_stb <= 1'b0;
    case(r_state)
        STATE_IDLE: if( next ) begin
                if( r_decode == DECODE_SET_ADDR ) begin
                    r_state <= STATE_ADDRESS;
                    addr_nibble_idx <= 'h1;
                end else if( r_decode == DECODE_WRITE_DATA ) begin
                    r_state <= STATE_DATA;
                    r_data_nibble_idx <= 'h0;
                end else if( r_decode == DECODE_READ_DATA ) begin
                    o_wb_stb <= 1'b1;
                    o_wb_rw <= 1'b1;
                    r_state <= STATE_READ;
                end
            end
        STATE_ADDRESS: if( next ) begin
                if( r_decode == DECODE_WRITE_DATA ) begin
                    r_state <= STATE_DATA;
                    r_data_nibble_idx <= 'h0;
                end else if( r_decode == DECODE_READ_DATA ) begin
                    o_wb_stb <= 1'b1;
                    o_wb_rw <= 1'b1;
                    r_state <= STATE_READ;
                end else if( ~r_decode[4] ) begin
                    addr_nibble_idx[5:0] <= { addr_nibble_idx[4:0], 1'b0 };
                    if     ( addr_nibble_idx[0] == 'b1 ) o_wb_addr[7:4] <= r_decode[3:0];
                    else if( addr_nibble_idx[1] == 'b1 ) o_wb_addr[3:0] <= r_decode[3:0];
                    else if( addr_nibble_idx[2] == 'b1 ) o_wb_addr[15:12] <= r_decode[3:0];
                    else if( addr_nibble_idx[3] == 'b1 ) o_wb_addr[11:8] <= r_decode[3:0];
                    else if( addr_nibble_idx[4] == 'b1 ) o_wb_addr[23:20] <= r_decode[3:0];
                    else if( addr_nibble_idx[5] == 'b1 ) o_wb_addr[19:16] <= r_decode[3:0];
                end
            end
        STATE_DATA: if ( next ) begin
                if( r_data_nibble_idx ) begin
                    r_state <= STATE_WAITWRITE;
                    o_wb_dat <= { r_data[3:0], r_decode[3:0] };
                    o_wb_stb <= 1'b1;
                    o_wb_rw <= 1'b0;
                end else begin
                    r_data[3:0] <= r_decode[3:0];
                end
                r_data_nibble_idx <= ~r_data_nibble_idx;
            end
        STATE_WAITWRITE: begin
                o_wb_stb <= 1'b1;
                if ( i_wb_ack ) begin
                    o_wb_stb <= 'b0;
                    o_wb_addr <= o_wb_addr + 'h1;
                    r_state <= STATE_IDLE;
                end
            end
        STATE_READ: begin
                o_wb_stb <= 1'b1;
                if ( i_wb_ack ) begin
                    o_wb_stb <= 1'b0;
                    // send upper nibble
                    r_data[3:0] <= i_wb_dat[3:0];
                    tx_dat <= nibble_ascii;
                    send <= 1'b1;
                    r_state <= STATE_READ2;
                end
            end
        STATE_READ2:
            if( send ) begin
                send <= 1'b0;
            end else begin
                send <= 1'b1;
                tx_dat <= nibble_ascii;
                o_wb_addr <= o_wb_addr + 'h1;
                r_state <= STATE_IDLE;
            end
            
    endcase

    if( i_wb_rst || r_decode == DECODE_RESET ) begin
        r_state <= STATE_IDLE;
    end
end

// ascii encoder for uart-tx
assign nibble = (r_state == STATE_READ) ? i_wb_dat[7:4] : r_data[3:0];
always @(nibble)
begin
    case( nibble )
        4'h0: nibble_ascii = 8'h30;
        4'h1: nibble_ascii = 8'h31;
        4'h2: nibble_ascii = 8'h32;
        4'h3: nibble_ascii = 8'h33;
        4'h4: nibble_ascii = 8'h34;
        4'h5: nibble_ascii = 8'h35;
        4'h6: nibble_ascii = 8'h36;
        4'h7: nibble_ascii = 8'h37;
        4'h8: nibble_ascii = 8'h38;
        4'h9: nibble_ascii = 8'h39;
        4'ha: nibble_ascii = 8'h41;
        4'hb: nibble_ascii = 8'h42;
        4'hc: nibble_ascii = 8'h43;
        4'hd: nibble_ascii = 8'h44;
        4'he: nibble_ascii = 8'h45;
        4'hf: nibble_ascii = 8'h46;
    endcase
end


endmodule

