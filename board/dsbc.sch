EESchema Schematic File Version 4
LIBS:dsbc-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "spartan w65c816 "
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L custom:W65C816S6PG-14 U1
U 1 1 5D2090DE
P 1900 1550
F 0 "U1" H 2050 2175 50  0000 C CNN
F 1 "W65C816S6PG-14" H 2050 2084 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 1600 1950 50  0001 C CNN
F 3 "https://www.westerndesigncenter.com/wdc/documentation/w65c816s.pdf" H 1600 1950 50  0001 C CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
Text Label 1600 1150 2    50   ~ 0
A0
Text Label 1600 1250 2    50   ~ 0
A1
Text Label 1600 1350 2    50   ~ 0
A2
Text Label 1600 1450 2    50   ~ 0
A3
Text Label 1600 1550 2    50   ~ 0
A4
Text Label 1600 1650 2    50   ~ 0
A5
Text Label 1600 1750 2    50   ~ 0
A6
Text Label 1600 1850 2    50   ~ 0
A7
Text Label 1600 1950 2    50   ~ 0
A8
Text Label 1600 2050 2    50   ~ 0
A9
Text Label 1600 2150 2    50   ~ 0
A10
Text Label 1600 2250 2    50   ~ 0
A11
Text Label 1600 2350 2    50   ~ 0
A12
Text Label 1600 2450 2    50   ~ 0
A13
Text Label 1600 2550 2    50   ~ 0
A14
Text Label 1600 2650 2    50   ~ 0
A15
Text Label 1600 2750 2    50   ~ 0
~IRQ
Text Label 1600 2850 2    50   ~ 0
~NMI
Wire Wire Line
	1600 3050 1550 3050
Wire Wire Line
	1550 3050 1550 3100
$Comp
L power:GND #PWR0101
U 1 1 5D20B1D0
P 1550 3100
F 0 "#PWR0101" H 1550 2850 50  0001 C CNN
F 1 "GND" H 1555 2927 50  0000 C CNN
F 2 "" H 1550 3100 50  0001 C CNN
F 3 "" H 1550 3100 50  0001 C CNN
	1    1550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 5D20B87E
P 1250 2950
F 0 "#PWR0102" H 1250 2800 50  0001 C CNN
F 1 "+3V3" V 1265 3078 50  0000 L CNN
F 2 "" H 1250 2950 50  0001 C CNN
F 3 "" H 1250 2950 50  0001 C CNN
	1    1250 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5D210872
P 1450 3050
F 0 "C1" V 1425 2975 50  0000 C CNN
F 1 "100n" V 1500 2925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1450 3050 50  0001 C CNN
F 3 "~" H 1450 3050 50  0001 C CNN
	1    1450 3050
	0    1    1    0   
$EndComp
Connection ~ 1550 3050
Wire Wire Line
	1250 2950 1325 2950
Wire Wire Line
	1350 3050 1325 3050
Wire Wire Line
	1325 3050 1325 2950
Connection ~ 1325 2950
Wire Wire Line
	1325 2950 1600 2950
Text Label 2500 3050 0    50   ~ 0
CLK_CPU
Text Label 2500 2950 0    50   ~ 0
~RESET_CPU
Text Label 2500 2850 0    50   ~ 0
R~W
Text Label 2500 2650 0    50   ~ 0
BE
Text Label 2500 2450 0    50   ~ 0
VDA
Text Label 2500 2350 0    50   ~ 0
VPA
Text Label 2500 2250 0    50   ~ 0
MLB
Text Label 2500 2150 0    50   ~ 0
~ABORT
Text Label 2500 2050 0    50   ~ 0
RDY
Text Label 2500 1950 0    50   ~ 0
VPB
Text Label 2500 1150 0    50   ~ 0
DB0
Text Label 2500 1250 0    50   ~ 0
DB1
Text Label 2500 1350 0    50   ~ 0
DB2
Text Label 2500 1450 0    50   ~ 0
DB3
Text Label 2500 1550 0    50   ~ 0
DB4
Text Label 2500 1650 0    50   ~ 0
DB5
Text Label 2500 1750 0    50   ~ 0
DB6
Text Label 2500 1850 0    50   ~ 0
DB7
Text Label 4100 1000 2    50   ~ 0
GND
Text Label 4600 1000 0    50   ~ 0
+5V
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5D281951
P 4300 1900
F 0 "J?" H 4350 3017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 4350 2926 50  0000 C CNN
F 2 "" H 4300 1900 50  0001 C CNN
F 3 "~" H 4300 1900 50  0001 C CNN
	1    4300 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J?
U 1 1 5D2831D9
P 5750 1900
F 0 "J?" H 5800 3017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 5800 2926 50  0000 C CNN
F 2 "" H 5750 1900 50  0001 C CNN
F 3 "~" H 5750 1900 50  0001 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
Text Label 4100 1100 2    50   ~ 0
+3V3
NoConn ~ 4600 2900
NoConn ~ 4600 2800
NoConn ~ 4600 2700
NoConn ~ 4100 2900
NoConn ~ 4100 2800
Text Label 5550 1000 2    50   ~ 0
GND
Text Label 5550 1100 2    50   ~ 0
+3V3
Text Label 6050 1000 0    50   ~ 0
+5V
Text Label 4100 1200 2    50   ~ 0
DB0
Text Label 4100 1300 2    50   ~ 0
DB1
Text Label 4100 1400 2    50   ~ 0
DB2
Text Label 4100 1500 2    50   ~ 0
DB3
Text Label 4100 1600 2    50   ~ 0
DB4
Text Label 4100 1700 2    50   ~ 0
DB5
Text Label 4100 1800 2    50   ~ 0
DB6
Text Label 4100 1900 2    50   ~ 0
DB7
NoConn ~ 4600 1700
NoConn ~ 4600 1800
Text Label 4600 1200 0    50   ~ 0
A0
Text Label 4600 1300 0    50   ~ 0
A1
Text Label 4600 1400 0    50   ~ 0
A2
Text Label 4600 1500 0    50   ~ 0
A3
Text Label 4600 1600 0    50   ~ 0
A4
Text Label 4600 2100 0    50   ~ 0
A5
Text Label 4100 2100 2    50   ~ 0
A6
Text Label 4600 2200 0    50   ~ 0
A7
Text Label 4100 2200 2    50   ~ 0
A8
Text Label 4600 2300 0    50   ~ 0
A9
Text Label 4100 2300 2    50   ~ 0
A10
Text Label 4600 2400 0    50   ~ 0
A11
Text Label 4100 2400 2    50   ~ 0
A12
Text Label 4600 2500 0    50   ~ 0
A13
Text Label 4100 2500 2    50   ~ 0
A14
Text Label 4600 2600 0    50   ~ 0
A15
Text Notes 4600 1700 0    50   ~ 0
~SRAM_WE
Text Notes 4600 1800 0    50   ~ 0
~SRAM_OE
NoConn ~ 4100 2600
NoConn ~ 4100 2700
Text Notes 4100 2600 2    50   ~ 0
A16
Text Notes 4100 2700 2    50   ~ 0
A17
Text Notes 4100 2800 2    50   ~ 0
TMS
Text Notes 4100 2900 2    50   ~ 0
TDO
Text Notes 4600 2700 0    50   ~ 0
JTAG-ISO
Text Notes 4600 2800 0    50   ~ 0
TCK
NoConn ~ 5550 2800
NoConn ~ 5550 2900
NoConn ~ 6050 2800
NoConn ~ 6050 2700
Text Notes 5550 2800 2    50   ~ 0
DONE
Text Notes 5550 2900 2    50   ~ 0
CCLK
Text Notes 6050 2700 0    50   ~ 0
PROG_B
Text Notes 6050 2800 0    50   ~ 0
INIT_B
NoConn ~ 4600 1900
Text Notes 4600 1900 0    50   ~ 0
FPGA-DOUT
Text Label 4100 2000 2    50   ~ 0
CLK_CPU
Text Label 6050 1200 0    50   ~ 0
~RESET_CPU
Text Label 4600 2000 0    50   ~ 0
R~W
Text Label 6050 1100 0    50   ~ 0
BE
Text Label 6050 1400 0    50   ~ 0
VDA
Text Label 6050 1300 0    50   ~ 0
VPA
Text Label 4600 1100 0    50   ~ 0
MLB
Text Label 5550 1400 2    50   ~ 0
~ABORT
Text Label 5550 1500 2    50   ~ 0
RDY
Text Label 6050 1500 0    50   ~ 0
VPB
Text Label 5550 1200 2    50   ~ 0
~IRQ
Text Label 5550 1300 2    50   ~ 0
~NMI
NoConn ~ 2500 2550
NoConn ~ 2500 2750
$Comp
L Connector:DB15_Female_HighDensity J?
U 1 1 5D38EBCB
P 2350 4750
F 0 "J?" H 2350 5617 50  0000 C CNN
F 1 "DB15_Female_HighDensity" H 2350 5526 50  0000 C CNN
F 2 "" H 1400 5150 50  0001 C CNN
F 3 " ~" H 1400 5150 50  0001 C CNN
	1    2350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4250 1950 4250
Wire Wire Line
	1950 4250 1950 4450
Wire Wire Line
	2050 4450 1950 4450
Connection ~ 1950 4450
Wire Wire Line
	1950 4450 1950 4650
Wire Wire Line
	2050 4650 1950 4650
Connection ~ 1950 4650
Wire Wire Line
	1950 4650 1950 5050
Wire Wire Line
	2050 5050 1950 5050
Connection ~ 1950 5050
Wire Wire Line
	1950 5050 1950 5350
$Comp
L power:GND #PWR?
U 1 1 5D3A31C6
P 1950 5350
F 0 "#PWR?" H 1950 5100 50  0001 C CNN
F 1 "GND" H 1955 5177 50  0000 C CNN
F 2 "" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 50  0001 C CNN
	1    1950 5350
	1    0    0    -1  
$EndComp
Text Label 2050 4550 2    50   ~ 0
G
Text Label 2050 4750 2    50   ~ 0
B
Text Label 2650 4750 0    50   ~ 0
HSYNC
Text Label 2650 4950 0    50   ~ 0
VSYNC
NoConn ~ 2650 5150
NoConn ~ 2050 5150
NoConn ~ 2050 4950
NoConn ~ 2050 4850
NoConn ~ 2650 4550
Text Label 6050 2100 0    50   ~ 0
R0
Text Label 6050 2200 0    50   ~ 0
R1
Text Label 6050 2300 0    50   ~ 0
R2
Text Label 5550 2100 2    50   ~ 0
G0
Text Label 5550 2200 2    50   ~ 0
G1
Text Label 5550 2300 2    50   ~ 0
G2
Text Label 5550 2400 2    50   ~ 0
B0
Text Label 6050 2400 0    50   ~ 0
B1
Text Label 6050 2500 0    50   ~ 0
HSYNC
Text Label 5550 2500 2    50   ~ 0
VSYNC
$Comp
L Device:R_Small R?
U 1 1 5D3C785F
P 1700 4250
F 0 "R?" V 1504 4250 50  0000 C CNN
F 1 "R_Small" V 1595 4250 50  0000 C CNN
F 2 "" H 1700 4250 50  0001 C CNN
F 3 "~" H 1700 4250 50  0001 C CNN
	1    1700 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3C7DF6
P 1700 4350
F 0 "R?" V 1504 4350 50  0000 C CNN
F 1 "R_Small" V 1595 4350 50  0000 C CNN
F 2 "" H 1700 4350 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3C82AF
P 1700 4450
F 0 "R?" V 1504 4450 50  0000 C CNN
F 1 "R_Small" V 1595 4450 50  0000 C CNN
F 2 "" H 1700 4450 50  0001 C CNN
F 3 "~" H 1700 4450 50  0001 C CNN
	1    1700 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3C8945
P 1700 4700
F 0 "R?" V 1504 4700 50  0000 C CNN
F 1 "R_Small" V 1595 4700 50  0000 C CNN
F 2 "" H 1700 4700 50  0001 C CNN
F 3 "~" H 1700 4700 50  0001 C CNN
	1    1700 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3C8A45
P 1700 4800
F 0 "R?" V 1504 4800 50  0000 C CNN
F 1 "R_Small" V 1595 4800 50  0000 C CNN
F 2 "" H 1700 4800 50  0001 C CNN
F 3 "~" H 1700 4800 50  0001 C CNN
	1    1700 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 4250 1850 4250
Wire Wire Line
	1850 4250 1850 4350
Connection ~ 1850 4350
Wire Wire Line
	1800 4450 1850 4450
Wire Wire Line
	1850 4450 1850 4350
Wire Wire Line
	1900 4350 1850 4350
Wire Wire Line
	1850 4350 1800 4350
Wire Wire Line
	1850 4350 2050 4350
$Comp
L Device:R_Small R?
U 1 1 5D3EFB9E
P 1300 4450
F 0 "R?" V 1104 4450 50  0000 C CNN
F 1 "R_Small" V 1195 4450 50  0000 C CNN
F 2 "" H 1300 4450 50  0001 C CNN
F 3 "~" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3EFBA4
P 1300 4550
F 0 "R?" V 1104 4550 50  0000 C CNN
F 1 "R_Small" V 1195 4550 50  0000 C CNN
F 2 "" H 1300 4550 50  0001 C CNN
F 3 "~" H 1300 4550 50  0001 C CNN
	1    1300 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5D3EFBAA
P 1300 4650
F 0 "R?" V 1104 4650 50  0000 C CNN
F 1 "R_Small" V 1195 4650 50  0000 C CNN
F 2 "" H 1300 4650 50  0001 C CNN
F 3 "~" H 1300 4650 50  0001 C CNN
	1    1300 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 4450 1450 4450
Wire Wire Line
	1450 4450 1450 4550
Connection ~ 1450 4550
Wire Wire Line
	1400 4650 1450 4650
Wire Wire Line
	1450 4650 1450 4550
Wire Wire Line
	1450 4550 1400 4550
Wire Wire Line
	1450 4550 2050 4550
Wire Wire Line
	2050 4750 1850 4750
Wire Wire Line
	1850 4750 1850 4700
Wire Wire Line
	1850 4700 1800 4700
Wire Wire Line
	1850 4750 1850 4800
Wire Wire Line
	1850 4800 1800 4800
Connection ~ 1850 4750
Text Label 1600 4700 2    50   ~ 0
B0
Text Label 1600 4800 2    50   ~ 0
B1
Text Label 1200 4450 2    50   ~ 0
G0
Text Label 1200 4550 2    50   ~ 0
G1
Text Label 1200 4650 2    50   ~ 0
G2
Text Label 1600 4250 2    50   ~ 0
R0
Text Label 1600 4350 2    50   ~ 0
R1
Text Label 1600 4450 2    50   ~ 0
R2
NoConn ~ 2650 4350
Text Notes 1300 5750 0    50   ~ 0
0,7V max.\nRGB-Kanal: Widerstände zusammen 270 Ohm.\nIm Monitor sind 75 Ohm gegen GND.
$EndSCHEMATC
