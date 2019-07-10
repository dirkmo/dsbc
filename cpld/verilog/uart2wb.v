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


localparam
    STATE_IDLE      = 0,
    STATE_ADDRESS   = 1,
    STATE_DATA      = 2,
    STATE_WAITWRITE = 3,
    STATE_WAITREAD  = 4;


// . 0x2e
// p 0x70
// w 0x77
// 0-9 0x48-0x57
// A-F 0x41-0x46
// k 0x6b
// n 0x6e

reg [7:0] r_uart_rec;
reg [] r_state;

wire nibble_received;

always @(posedge i_wb_clk)
begin
    if( received ) begin
        case( r_State )
            STATE_IDLE: begin
                addr_nibble_idx <= 1;
                if( received ) begin
                    if( rx_dat == 8'h70 ) r_state <= STATE_ADDRESS;
                    if( rx_dat == 8'h77 ) r_state <= STATE_DATA;
                end
            end
            STATE_ADDRESS: begin
                if( nibble_received )
                    addr_nibble_idx <= { addr_nibble_idx[3:1], 1'b0 };
                    case ( addr_nibble_idx )
                       1: r_addr[3:0] <= val;
                       2: r_addr[7:4] <= val;
                       4: r_addr[11:8] <= val;
                       8: r_addr[15:12] <= val;
                       16: r_addr[19:16] <= val;
                       32: r_addr[23:20] <= val;
                    endcase

            end
            STATE_DATA: begin
            end
            default: begin
                // send 'n' for NACK
            end
        endcase

        // return to idle is always possible
        if( rx_dat == 8'h2E ) r_state <= STATE_IDLE; // '.'
    end
    if( i_wb_rst ) begin
        r_state <= STATE_IDLE;
    end
end

endmodule

