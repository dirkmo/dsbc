// PC sendet                           FPGA sendet
// p Adressmodus                       p
// 00 00 00 Adresse mit LSB first      k k k
// w Datenmodus                        w
// 00 00 00 Payload                    k k k oder n für Fehler


module uart2wb(
);

// wb interface
input i_wb_clk;
input i_wb_rst;
input i_wb_ack;
input [7:0] i_wb_dat;
output [7:0] o_wb_dat;
output i_wb_sel;
output i_wb_cyc;

// uart interface
input [7:0] rx_dat;
input received;
output [7:0] tx_dat;
output send;


// . 0x2e
// p 0x70
// w 0x77
// r 0x72
// 0-9 0x30-0x39
// A-F 0x41-0x46


// input data evalutation
localparam
    DECODE_RESET = 5'h10,
    DECODE_SET_ADDR = 5'h11,
    DECODE_READ_DATA = 5'h12,
    DECODE_WRITE_DATA = 5'h13,
    DECODE_INVALD = 5'h1f;

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
    STATE_WAITREAD  = 4;

reg [23:0] r_addr;
reg [5:0] r_addr_nibble_idx;

reg [7:0] r_data;
reg r_data_nibble_idx;

reg [] r_state;
always @(posedge i_wb_clk)
begin
    case(r_state)
        STATE_IDLE:
            if( r_decode == DECODE_SET_ADDR ) begin
                r_state <= STATE_ADDRESS;
                r_addr <= 'h0;
                r_nibble_idx <= 'h1;
            end else if( r_decode == DECODE_WRITE_DATA ) begin
                r_state <= STATE_DATA;
                r_data_nibble_idx <= 'h0;
            end
        STATE_ADDRESS:
            if( next ) begin
                r_addr_nibble_idx[5:0] <= { r_addr_nibble_idx[4:0], 1'b0 };
                if     ( r_addr_nibble_idx[0] == 'b1 ) r_addr[7:4] <= r_decode[3:0];
                else if( r_addr_nibble_idx[1] == 'b1 ) r_addr[3:0] <= r_decode[3:0];
                else if( r_addr_nibble_idx[2] == 'b1 ) r_addr[15:12] <= r_decode[3:0];
                else if( r_addr_nibble_idx[3] == 'b1 ) r_addr[11:8] <= r_decode[3:0];
                else if( r_addr_nibble_idx[4] == 'b1 ) r_addr[23:20] <= r_decode[3:0];
                else if( r_addr_nibble_idx[5] == 'b1 ) r_addr[19:16] <= r_decode[3:0];
            end
        STATE_DATA:
            if ( next ) begin
                if( r_data_nibble_idx ) begin
                    r_data[3:0]] <= r_decode[3:0];
                    r_state <= STATE_WAITWRITE;
                    // hier auf bus schreiben
                end else begin
                    r_data[7:4] <= r_decode[3:0];
                end
                r_data_nibble_idx <= ~r_data_nibble_idx;
            end
        STATE_WAITWRITE:
            begin
            end
        STATE_WAITREAD:
            begin
            end
    endcase

    if( i_wb_rst || r_decode == DECODE_INVALD ) begin
        r_state <= STATE_IDLE;
    end
end

endmodule

