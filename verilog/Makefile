.PHONY: all clean sim wave

UNAME := $(shell uname -s)

VERILATOR_OUTPUTDIR = verilator

INCDIR=-I$(VERILATOR_OUTPUTDIR) -I../verilog -I/usr/share/verilator/include -I../include

VFLAGS = -CFLAGS -std=c++11 -Wall -trace -cc --exe $(INCDIR) --Mdir $(VERILATOR_OUTPUTDIR)
GTKWAVE := gtkwave
ifeq ($(UNAME),Darwin)
VFLAGS += --compiler clang
GTKWAVE := /Applications/gtkwave.app/Contents/MacOS/gtkwave-bin
endif

CFLAGS=-Wall -std=c++11

all: vgatop

verilator: uart2wb.cpp uart2wb.v
	verilator $(VFLAGS) uart2wb.v uart2wb.cpp


uart2wb: verilator
	make -C $(VERILATOR_OUTPUTDIR) -j4 -f Vuart2wb.mk

sim: uart2wb
	$(VERILATOR_OUTPUTDIR)/Vuart2wb -d -t


wave: sim
	gtkwave trace.vcd &

clean:
	rm -f trace.vcd
	rm -f $(VERILATOR_OUTPUTDIR)/*
	-rm -r $(VERILATOR_OUTPUTDIR)
