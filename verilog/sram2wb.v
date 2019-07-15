module sram2wb(
    i_wb_clk,
    i_wb_stb,
    i_wb_cyc,
    i_wb_rst,
    i_wb_we,
    i_wb_addr,
    i_wb_dat,
    o_wb_dat,
    o_wb_ack,

    i_ram_dat,
    o_ram_dat,
    o_ram_addr,
    o_ram_oe,
    o_ram_ce,
    o_ram_we
);

input i_wb_clk;
input i_wb_stb; // TODO [x:0] !
input i_wb_cyc;
input i_wb_rst;
input i_wb_we;
input [7:0] i_wb_addr;
input [7:0] i_wb_dat;
output [7:0] o_wb_dat;
output o_wb_ack;

input i_ram_dat;
output o_ram_dat;
output [15:0] o_ram_addr;
output o_ram_oe;
output o_ram_ce;
output o_ram_we;

assign o_ram_addr = i_wb_addr;
assign o_ram_ce = i_wb_cyc;
assign o_ram_we = i_wb_we;
assign o_ram_oe = ~i_wb_we;

assign o_ram_dat = i_wb_dat;
assign o_wb_dat = i_ram_dat;
assign o_wb_ack = i_wb_cyc; // ack immediately

endmodule

