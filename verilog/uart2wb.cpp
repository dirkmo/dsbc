#include <stdint.h>
#include <stdio.h>
#include <verilated_vcd_c.h>
#include "Vuart2wb.h"
#include "verilated.h"

VerilatedVcdC *pTrace;
Vuart2wb *pCore;
uint64_t tickcount;

void opentrace(const char *vcdname) {
    if (!pTrace) {
        pTrace = new VerilatedVcdC;
        pCore->trace(pTrace, 99);
        pTrace->open(vcdname);
    }
}

void tick() {
    tickcount++;

    pCore->i_wb_clk = 0;
    pCore->eval();
    
    if(pTrace) pTrace->dump(static_cast<vluint64_t>(10*tickcount-2));

    pCore->i_wb_clk = 1;
    pCore->eval();
    if(pTrace) pTrace->dump(static_cast<vluint64_t>(10*tickcount));

    pCore->i_wb_clk = 0;
    pCore->eval();
    if (pTrace) {
        pTrace->dump(static_cast<vluint64_t>(10*tickcount+5));
        pTrace->flush();
    }
}

void reset() {
    pCore->i_wb_rst = 1;
    tick();
    pCore->i_wb_rst = 0;
}

int main(int argc, char *argv[]) {
    Verilated::traceEverOn(true);
    pCore = new Vuart2wb();
    opentrace("trace.vcd");

    reset();




    if (pTrace) {
        pTrace->close();
        pTrace = NULL;
    }
    return 0;
}
