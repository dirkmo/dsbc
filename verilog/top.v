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
    .i_send(send),
    .tx(uart_tx)
);

wire wb_ack;
wire [7:0] uart2wb_wb_dat;
wire [7:0] sram2wb_wb_dat;
wire [23:0] wb_addr;

wire wb_stb;
wire wb_cyc;
wire wb_we;


// Wishbone master
uart2wb uart2wb0(
    .i_wb_clk(i_clk),
    .i_wb_rst(i_reset),
    .i_wb_ack(wb_ack),
    .i_wb_dat(sram2wb_wb_dat),
    .o_wb_dat(uart2wb_wb_dat),
    .o_wb_stb(wb_stb),
    .o_wb_cyc(wb_cyc),
    .o_wb_addr(wb_addr),
    .o_wb_we(wb_we),
    
    .rx_dat(rx_data),
    .received(received),
    .tx_dat(tx_data),
    .send(send)
);

wire [17:0] sram_addr;

// wishbone slave
sram2wb sram2wb0(
    .i_wb_clk(i_clk),
    .i_wb_stb(wb_stb),
    .i_wb_cyc(wb_cyc),
    .i_wb_rst(i_reset),
    .i_wb_we(wb_we),
    .i_wb_addr(wb_addr[17:0]),
    .i_wb_dat(uart2wb_wb_dat),
    .o_wb_dat(sram2wb_wb_dat),
    .o_wb_ack(sram2wb_ack),

    .i_ram_dat(ram_data),
    .o_ram_dat(sram2wb_dat),
    .o_ram_addr(sram_addr),
    .o_ram_oe(ram_oe),
    .o_ram_ce(ram_ce),
    .o_ram_we(ram_we)
);

assign ram_data[7:0] = ram_oe ? 8'hz : sram2wb_dat;
assign ram_addr[17:0] = { 6'h0, sram_addr };
assign ram_oe_n = ~ram_oe;
assign ram_ce_n = ~ram_ce;
assign ram_we_n = ~ram_we;

endmodule
