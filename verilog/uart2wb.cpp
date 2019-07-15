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

void tick(int count = 1) {
    while(count--) {
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
}

void reset() {
    pCore->received = 0;
    pCore->send = 0;
    pCore->i_wb_rst = 1;
    tick();
    pCore->i_wb_rst = 0;
}

void uart_send( char c ) {
    pCore->rx_dat = c;
    pCore->received = 1;
    tick();
    pCore->rx_dat = 0;
    pCore->received = 0;
    tick();
}

char uart_receive() {
    while(!pCore->send) tick();
    return pCore->tx_dat;
}

void uart_sendstr( const char *s ) {
    while(*s) {
        uart_send(*s++);
        if( *s ) tick(5);
    }
}

void wb_ack() {
    pCore->i_wb_ack = 1;
    tick();
    pCore->i_wb_ack = 0;
}

void wb_write(uint8_t d) {
    pCore->i_wb_dat = d;
    pCore->i_wb_ack = 1;
    while(pCore->o_wb_cyc) tick();
    pCore->i_wb_dat = 0;
    pCore->i_wb_ack = 0;
    tick();
}

int main(int argc, char *argv[]) {
    Verilated::traceEverOn(true);
    pCore = new Vuart2wb();
    opentrace("trace.vcd");

    reset();

    tick();

    // write to addr
    uart_sendstr("p452301wAF");
    while( !pCore->o_wb_cyc ) tick();
    assert(pCore->o_wb_we);
    assert(pCore->o_wb_addr == 0x012345);
    assert(pCore->o_wb_dat == 0xAF);
    wb_ack();
    assert(!pCore->o_wb_cyc);
    tick(4);

    uart_sendstr("wF9");
    while( !pCore->o_wb_cyc ) tick();
    assert(pCore->o_wb_we);
    assert(pCore->o_wb_addr == 0x012346);
    assert(pCore->o_wb_dat == 0xF9);
    wb_ack();
    assert(!pCore->o_wb_cyc);
    tick(4);

    // read
    uart_sendstr("p00r");
    while( !pCore->o_wb_cyc ) tick();
    assert(!pCore->o_wb_we);
    assert(pCore->o_wb_addr == 0x012300);
    tick(4);
    wb_write(0xA9);

    tick(5);

    int addr = 0x012301;
    for( int i = 0; i<4; i++ ) {
        uart_send('r');
        while( !pCore->o_wb_cyc ) tick();
        assert(!pCore->o_wb_we);
        assert(pCore->o_wb_addr == addr);
        wb_write(i);
        addr++;
    }

    tick(5);

    // abort test
    uart_sendstr("p0F.");
    assert(pCore->o_wb_addr == 0x01230f);
    assert(!pCore->o_wb_cyc);
    assert(pCore->uart2wb__DOT__r_state == 0);

    if (pTrace) {
        pTrace->close();
        pTrace = NULL;
    }
    return 0;
}
