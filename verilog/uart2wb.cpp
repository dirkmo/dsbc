#include <stdint.h>
#include <stdio.h>
#include <verilated_vcd_c.h>
#include "Vuart2wb.h"
#include "verilated.h"

VerilatedVcdC *pTrace;
Vuart2wb *pCore;
uint64_t tickcount;

uint8_t ram[0x100000];

void opentrace(const char *vcdname) {
    if (!pTrace) {
        pTrace = new VerilatedVcdC;
        pCore->trace(pTrace, 99);
        pTrace->open(vcdname);
    }
}

void tick(int count = 1) {
    while(count--) {
        printf("tick %lld\n",tickcount);
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
    pCore->uart_received_strobe = 0;
    pCore->uart_tx_trigger = 0;
    pCore->i_wb_rst = 1;
    tick();
    pCore->i_wb_rst = 0;
}

void uart_send( char c ) {
    pCore->uart_rx_dat = c;
    pCore->uart_received_strobe = 1;
    tick();
    pCore->uart_rx_dat = 0;
    pCore->uart_received_strobe = 0;
    tick();
}

char uart_receive() {
    while(!pCore->uart_tx_trigger) tick();
    return pCore->uart_tx_dat;
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

void handle_wb(bool block = true) {
    pCore->i_wb_ack = 0;
    while( pCore->o_wb_stb ) {
        assert(pCore->o_wb_addr<sizeof(ram));
        if( pCore->o_wb_we ) {
            printf("write ram[0x%06X] = 0x%02X\n", pCore->o_wb_addr, pCore->o_wb_dat);
            ram[pCore->o_wb_addr] = pCore->o_wb_dat;
            pCore->i_wb_ack = 1;
        } else {
            printf("read ram[0x%06X] = 0x%02X\n", pCore->o_wb_addr, ram[pCore->o_wb_addr]);
            pCore->i_wb_dat = ram[pCore->o_wb_addr];
            pCore->i_wb_ack = 1;
        }
        if(block) tick(); else break;
    }
    if( !pCore->o_wb_stb ) pCore->i_wb_ack = 0;
}

int main(int argc, char *argv[]) {
    Verilated::traceEverOn(true);
    pCore = new Vuart2wb();
    opentrace("trace.vcd");

    reset();

    tick();
/*
    // data register selection tests
    printf("Test1 %lld\n",tickcount);
    uart_sendstr("d");
    assert(pCore->uart2wb__DOT__r_nibble_idx == 6);

    printf("Test2 %lld\n",tickcount);
    uart_sendstr("a");
    handle_wb();
    assert(pCore->uart2wb__DOT__r_nibble_idx == 0);

    // write to addr test
    printf("Test3 %lld\n",tickcount);
    uart_sendstr("a543210dFAw");
    handle_wb();
    assert(ram[0x012345]==0xaf);
    tick(2);
    assert((pCore->uart2wb__DOT__registers & 0xFFFFFF) == 0x12346);
    assert(pCore->uart2wb__DOT__r_state == 0);

    // auto-increment and write test
    printf("Test4 %lld\n",tickcount);

    uart_sendstr("d");
    assert(pCore->uart2wb__DOT__r_nibble_idx == 6);

    uart_sendstr("dB2w");
    handle_wb();
    assert(ram[0x012346]==0x2b);

    // read test
    printf("Test5 %lld\n",tickcount);

    // reset test
    uart_sendstr(".");
    assert(pCore->o_reset == 1);
*/

    ram[0] = 0xd4;
    uart_sendstr("a00r");
    handle_wb();

    tick(10);

    if (pTrace) {
        pTrace->close();
        pTrace = NULL;
    }
    return 0;
}
