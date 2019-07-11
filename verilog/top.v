module top(
);

input clk_50mhz;
output clk_cpu;
input rw;
inout [7:0] db; // data & bank multiplexed from cpu
input [15:0] addr;
output [7:0] bank;
inout [7:0] data;
inout be;
input vpa;
input vda;
output valid_addr;
output mem_access;
input stop;
input boot;

output ram_oe_n;
output ram_we_n;
output ram_cs_n;

assign valid_addr = vpa & vda;
assign mem_access = valid_addr & clk_cpu;

assign ram_cs_n = 1'b0;

//-----------------------------------------
// clk for w65c816
// clk_cpu = 50MHz / 2^CLKDIV

`define CLKDIV 3
reg [`CLKDIV:0] r_clkcounter;
wire [`CLKDIV:0] clkcounter_next = r_clkcounter + 'd1;

assign clk_cpu = r_clkcounter[`CLKDIV];
wire clk_cpu_next = clkcounter_next[`CLKDIV];

always @(posedge clk_50mhz)
    if( ~stop )
        r_clkcounter <= clkcounter_next;

//-----------------------------------------
// cpu interface

// fetch bank just before the posedge of cpu_clk
reg [7:0] r_bank;
always @(posedge clk_50mhz)
if( ~clk_cpu && clk_cpu_next ) // posedge is coming
    r_bank <= db;

assign bank = r_bank;


// fetch data just before the negedge of cpu_clk
// this data can then be written when possible

reg [7:0] r_data_from_cpu;
always @(posedge clk_50mhz)
    if( clk_cpu && ~clk_cpu_next ) // negedge is coming
        r_data_from_cpu <= db;

wire fetch_cpu_data; // 1 if cpu outputs something, just for one cycle
assign fetch_cpu_data = clk_cpu && ~clk_cpu_next && ~rw;

reg [7:0] r_data_from_cpu;
always @(posedge clk_50mhz)
    if( fetch_cpu_data ) begin
        r_data_from_cpu <= db;
    end

//-----------------------------------------

reg vga_access;
always @(posedge clk_50mhz)
    vga_access <= ~vga_access;



assign ram_oe_n = vga_access ? 1'b0 : cpu_oe;
assign ram_we_n = vga_access ? 1'b1 : ~cpu_oe;



endmodule

