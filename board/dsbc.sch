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
Text Label 2700 2050 0    50   ~ 0
RDY
Text Label 2700 1950 0    50   ~ 0
VPB
Text Label 2700 1150 0    50   ~ 0
DB0
Text Label 2700 1250 0    50   ~ 0
DB1
Text Label 2700 1350 0    50   ~ 0
DB2
Text Label 2700 1450 0    50   ~ 0
DB3
Text Label 2700 1550 0    50   ~ 0
DB4
Text Label 2700 1650 0    50   ~ 0
DB5
Text Label 2700 1750 0    50   ~ 0
DB6
Text Label 2700 1850 0    50   ~ 0
DB7
Text Label 4100 1000 2    50   ~ 0
GND
Text Label 4600 1000 0    50   ~ 0
+5V
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J2
U 1 1 5D281951
P 4300 1900
F 0 "J2" H 4350 3017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 4350 2926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Horizontal" H 4300 1900 50  0001 C CNN
F 3 "~" H 4300 1900 50  0001 C CNN
	1    4300 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J3
U 1 1 5D2831D9
P 5750 1900
F 0 "J3" H 5800 3017 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 5800 2926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Horizontal" H 5750 1900 50  0001 C CNN
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
L Connector:DB15_Female_HighDensity J1
U 1 1 5D38EBCB
P 2350 4750
F 0 "J1" H 2350 5617 50  0000 C CNN
F 1 "DB15_Female_HighDensity" H 2350 5526 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-15-HD_Female_Horizontal_P2.29x1.98mm_EdgePinOffset9.40mm" H 1400 5150 50  0001 C CNN
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
L power:GND #PWR01
U 1 1 5D3A31C6
P 1950 5350
F 0 "#PWR01" H 1950 5100 50  0001 C CNN
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
Text Label 5550 1800 2    50   ~ 0
R0
Text Label 6050 1800 0    50   ~ 0
R1
Text Label 5550 1900 2    50   ~ 0
R2
Text Label 6050 1900 0    50   ~ 0
G0
Text Label 5550 2000 2    50   ~ 0
G1
Text Label 6050 2000 0    50   ~ 0
G2
Text Label 5550 2100 2    50   ~ 0
B0
Text Label 6050 2100 0    50   ~ 0
B1
Text Label 6050 2200 0    50   ~ 0
HSYNC
Text Label 5550 2200 2    50   ~ 0
VSYNC
$Comp
L Device:R_Small R4
U 1 1 5D3C785F
P 1700 4250
F 0 "R4" V 1504 4250 50  0000 C CNN
F 1 "R_Small" V 1595 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4250 50  0001 C CNN
F 3 "~" H 1700 4250 50  0001 C CNN
	1    1700 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D3C7DF6
P 1700 4350
F 0 "R5" V 1504 4350 50  0000 C CNN
F 1 "R_Small" V 1595 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4350 50  0001 C CNN
F 3 "~" H 1700 4350 50  0001 C CNN
	1    1700 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5D3C82AF
P 1700 4450
F 0 "R6" V 1504 4450 50  0000 C CNN
F 1 "R_Small" V 1595 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4450 50  0001 C CNN
F 3 "~" H 1700 4450 50  0001 C CNN
	1    1700 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D3C8945
P 1700 4700
F 0 "R7" V 1504 4700 50  0000 C CNN
F 1 "R_Small" V 1595 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4700 50  0001 C CNN
F 3 "~" H 1700 4700 50  0001 C CNN
	1    1700 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5D3C8A45
P 1700 4800
F 0 "R8" V 1504 4800 50  0000 C CNN
F 1 "R_Small" V 1595 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1700 4800 50  0001 C CNN
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
L Device:R_Small R1
U 1 1 5D3EFB9E
P 1300 4450
F 0 "R1" V 1104 4450 50  0000 C CNN
F 1 "R_Small" V 1195 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 4450 50  0001 C CNN
F 3 "~" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5D3EFBA4
P 1300 4550
F 0 "R2" V 1104 4550 50  0000 C CNN
F 1 "R_Small" V 1195 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 4550 50  0001 C CNN
F 3 "~" H 1300 4550 50  0001 C CNN
	1    1300 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5D3EFBAA
P 1300 4650
F 0 "R3" V 1104 4650 50  0000 C CNN
F 1 "R_Small" V 1195 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1300 4650 50  0001 C CNN
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
$Comp
L Device:R_Small R17
U 1 1 5D2CC268
P 2600 2050
F 0 "R17" V 2404 2050 50  0000 C CNN
F 1 "R_Small" V 2495 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 2050 50  0001 C CNN
F 3 "~" H 2600 2050 50  0001 C CNN
	1    2600 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5D3228A2
P 2600 1150
F 0 "R9" V 2404 1150 50  0000 C CNN
F 1 "R_Small" V 2495 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1150 50  0001 C CNN
F 3 "~" H 2600 1150 50  0001 C CNN
	1    2600 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5D322C37
P 2600 1250
F 0 "R10" V 2404 1250 50  0000 C CNN
F 1 "R_Small" V 2495 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1250 50  0001 C CNN
F 3 "~" H 2600 1250 50  0001 C CNN
	1    2600 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5D323067
P 2600 1350
F 0 "R11" V 2404 1350 50  0000 C CNN
F 1 "R_Small" V 2495 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1350 50  0001 C CNN
F 3 "~" H 2600 1350 50  0001 C CNN
	1    2600 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5D323288
P 2600 1450
F 0 "R12" V 2404 1450 50  0000 C CNN
F 1 "R_Small" V 2495 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1450 50  0001 C CNN
F 3 "~" H 2600 1450 50  0001 C CNN
	1    2600 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5D323454
P 2600 1550
F 0 "R13" V 2404 1550 50  0000 C CNN
F 1 "R_Small" V 2495 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1550 50  0001 C CNN
F 3 "~" H 2600 1550 50  0001 C CNN
	1    2600 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5D323640
P 2600 1650
F 0 "R14" V 2404 1650 50  0000 C CNN
F 1 "R_Small" V 2495 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1650 50  0001 C CNN
F 3 "~" H 2600 1650 50  0001 C CNN
	1    2600 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5D32384C
P 2600 1750
F 0 "R15" V 2404 1750 50  0000 C CNN
F 1 "R_Small" V 2495 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
	1    2600 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5D323A52
P 2600 1850
F 0 "R16" V 2404 1850 50  0000 C CNN
F 1 "R_Small" V 2495 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2600 1850 50  0001 C CNN
F 3 "~" H 2600 1850 50  0001 C CNN
	1    2600 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1950 2500 1950
$Comp
L Memory_EEPROM:25LCxxx U2
U 1 1 5D329CA0
P 4625 4175
F 0 "U2" H 4625 4656 50  0000 C CNN
F 1 "25LCxxx" H 4625 4565 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 4625 4175 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21832H.pdf" H 4625 4175 50  0001 C CNN
	1    4625 4175
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 5D32B03C
P 4625 3725
F 0 "#PWR02" H 4625 3575 50  0001 C CNN
F 1 "+3V3" H 4640 3898 50  0000 C CNN
F 2 "" H 4625 3725 50  0001 C CNN
F 3 "" H 4625 3725 50  0001 C CNN
	1    4625 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4625 3875 4625 3800
Wire Wire Line
	4225 4075 4225 3800
Wire Wire Line
	4225 3800 4625 3800
Connection ~ 4625 3800
Wire Wire Line
	4625 3800 4625 3725
Wire Wire Line
	4225 4075 4225 4175
Connection ~ 4225 4075
$Comp
L Device:C_Small C2
U 1 1 5D32D7E6
P 4025 3925
F 0 "C2" H 3933 3879 50  0000 R CNN
F 1 "C_Small" H 3933 3970 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4025 3925 50  0001 C CNN
F 3 "~" H 4025 3925 50  0001 C CNN
	1    4025 3925
	-1   0    0    1   
$EndComp
Wire Wire Line
	4225 3800 4025 3800
Wire Wire Line
	4025 3800 4025 3825
Connection ~ 4225 3800
Wire Wire Line
	4625 4475 4025 4475
Wire Wire Line
	4025 4475 4025 4025
Wire Wire Line
	4625 4475 4625 4525
Connection ~ 4625 4475
$Comp
L power:GND #PWR03
U 1 1 5D3321B1
P 4625 4525
F 0 "#PWR03" H 4625 4275 50  0001 C CNN
F 1 "GND" H 4630 4352 50  0000 C CNN
F 2 "" H 4625 4525 50  0001 C CNN
F 3 "" H 4625 4525 50  0001 C CNN
	1    4625 4525
	1    0    0    -1  
$EndComp
Text Label 4225 4275 2    50   ~ 0
~EEPROM_CS
Text Label 5025 4075 0    50   ~ 0
SPI_SCK
Text Label 5025 4175 0    50   ~ 0
SPI_MOSI
Text Label 5025 4275 0    50   ~ 0
SPI_MISO
Text Label 6050 1600 0    50   ~ 0
SPI_SCK
Text Label 5550 1700 2    50   ~ 0
SPI_MOSI
Text Label 6050 1700 0    50   ~ 0
SPI_MISO
Text Label 5550 1600 2    50   ~ 0
~EEPROM_CS
Text Label 6300 3950 0    50   ~ 0
~RESET_CPU
Text Label 6300 3850 0    50   ~ 0
R~W
Text Label 6300 4150 0    50   ~ 0
~IRQ
Text Label 6300 4050 0    50   ~ 0
~NMI
$Comp
L Device:R_Small R18
U 1 1 5D33670C
P 6200 3850
F 0 "R18" V 6004 3850 50  0000 C CNN
F 1 "R_Small" V 6095 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 3850 50  0001 C CNN
F 3 "~" H 6200 3850 50  0001 C CNN
	1    6200 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5D3379EC
P 6200 3950
F 0 "R19" V 6004 3950 50  0000 C CNN
F 1 "R_Small" V 6095 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 3950 50  0001 C CNN
F 3 "~" H 6200 3950 50  0001 C CNN
	1    6200 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5D337B22
P 6200 4050
F 0 "R20" V 6004 4050 50  0000 C CNN
F 1 "R_Small" V 6095 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 4050 50  0001 C CNN
F 3 "~" H 6200 4050 50  0001 C CNN
	1    6200 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5D337E7D
P 6200 4150
F 0 "R21" V 6004 4150 50  0000 C CNN
F 1 "R_Small" V 6095 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6200 4150 50  0001 C CNN
F 3 "~" H 6200 4150 50  0001 C CNN
	1    6200 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4150 6100 4050
Wire Wire Line
	6100 3950 6100 4050
Connection ~ 6100 4050
Wire Wire Line
	6100 3950 6100 3850
Connection ~ 6100 3950
Wire Wire Line
	6100 3850 6100 3750
Connection ~ 6100 3850
$Comp
L power:+3V3 #PWR04
U 1 1 5D33B596
P 6100 3750
F 0 "#PWR04" H 6100 3600 50  0001 C CNN
F 1 "+3V3" H 6115 3923 50  0000 C CNN
F 2 "" H 6100 3750 50  0001 C CNN
F 3 "" H 6100 3750 50  0001 C CNN
	1    6100 3750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
