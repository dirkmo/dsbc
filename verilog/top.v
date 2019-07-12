module top(
);

input i_clk;
input i_reset;
input uart_rx;
output uart_tx;

output [23:0] addr;
output ram_oe_n;
output ram_we_n;
output ram_ce_n;
inout ram_data;

wire [7:0] rx_data;
wire [7:0] tx_data;
wire received;
wire send;

parameter SYS_CLK = 'd25_000_000;
parameter BAUDRATE = 'd115200;

uart_rx #(.SYS_CLK(SYS_CLK), .BAUDRATE(BAUDRATE)) Uart0_rx(
    .i_clk(i_clk),
    .i_reset(i_reset),
    .o_dat(rx_data),
    .rx(uart_rx),
    .received(received)
);

uart_tx #(.SYS_CLK(SYS_CLK), .BAUDRATE(BAUDRATE)) Uart0_tx(
    .i_clk(i_clk),
    .i_reset(i_reset),
    .i_dat(tx_data),
    .i_send(send),
    .tx(uart_tx)
);

wire wb_ack;
wire [7:0] data_from_ram;
wire [7:0] data_to_ram;
wire wb_stb;
wire wb_cyc;


uart2wb uart2wb0(
    .i_wb_clk(i_clk),
    .i_wb_rst(i_reset),
    .i_wb_ack(wb_ack),
    .i_wb_dat(),
    .o_wb_dat(),
    .o_wb_stb(),
    .o_wb_cyc(),
    .o_wb_addr(addr),
    .o_wb_rw(rw),
    
    .rx_dat(rx_data),
    .received(received),
    .tx_dat(tx_data),
    .send(send)
);

assign ram_ce_n = 1'b0;
assign ram_we_n = rw;
assign ram_oe_n = ~rw;
assign ram_data = rw ? 8'hz : rx_data;

endmodule
