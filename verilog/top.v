module top(
    i_clk,
    i_reset,
    uart_rx,
    uart_tx,

    ram_addr,
    ram_oe_n,
    ram_we_n,
    ram_ce_n,
    ram_data
);

input i_clk;
input i_reset;
input uart_rx;
output uart_tx;

output [17:0] ram_addr;
output ram_oe_n;
output ram_we_n;
output ram_ce_n;
inout [7:0] ram_data;

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
    .i_fifo_push(send),
    .tx(uart_tx)
);

wire [23:0] wb_addr;
wire [7:0] wb_dat;
wire wb_ack;
wire wb_stb;
wire wb_cyc;
wire wb_we;

uart2wb uart2wb0(
    .i_wb_clk(i_clk),
    .i_wb_rst(i_reset),
    .i_wb_ack(wb_ack),
    .i_wb_dat(ram_data[7:0]),
    .o_wb_dat(wb_dat),
    .o_wb_stb(wb_stb),
    .o_wb_cyc(wb_cyc),
    .o_wb_addr(wb_addr),
    .o_wb_we(wb_we),
    
    .rx_dat(rx_data),
    .received(received),
    .tx_dat(tx_data),
    .send(send)
);

assign ram_data[7:0] = wb_we ? wb_dat[7:0] : 8'hz;
assign ram_addr[17:0] = wb_addr[17:0];
assign ram_oe_n = ~wb_cyc;
assign ram_ce_n = wb_we;
assign ram_we_n = ~wb_we;

endmodule
