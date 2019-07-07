EESchema Schematic File Version 4
LIBS:dsbc-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
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
Text Label 2500 2750 0    50   ~ 0
E
Text Label 2500 2650 0    50   ~ 0
BE
Text Label 2500 2550 0    50   ~ 0
MX
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
Text Label 6425 2300 0    50   ~ 0
VPA
Text Label 6425 2400 0    50   ~ 0
VDA
Text Label 6425 2500 0    50   ~ 0
VALID_ADDR
Text Notes 6925 2500 0    50   ~ 0
VALID_ADDR = VPA & VDA
Text Label 4125 3000 2    50   ~ 0
CLK_CPU
Text Label 4125 3100 2    50   ~ 0
CLK_50MHz
Text Label 6375 6825 0    50   ~ 0
TCK
Text Label 6375 6625 0    50   ~ 0
TDI
Text Label 6375 6925 0    50   ~ 0
TDO
Text Label 6375 6725 0    50   ~ 0
TMS
Text Label 4150 2100 2    50   ~ 0
D0
Text Label 4150 2200 2    50   ~ 0
D1
Text Label 4150 2300 2    50   ~ 0
D2
Text Label 4150 2400 2    50   ~ 0
D3
Text Label 4150 2500 2    50   ~ 0
D4
Text Label 4150 2600 2    50   ~ 0
D5
Text Label 4150 2700 2    50   ~ 0
D6
Text Label 4150 2800 2    50   ~ 0
D7
Text Label 6425 5700 0    50   ~ 0
A16
Text Label 6425 5800 0    50   ~ 0
A17
Text Label 6425 5900 0    50   ~ 0
A18
Text Label 6425 6000 0    50   ~ 0
A19
Text Label 6425 6100 0    50   ~ 0
A20
Text Label 6425 6200 0    50   ~ 0
A21
Text Label 6425 6300 0    50   ~ 0
A22
Text Label 6425 6400 0    50   ~ 0
A23
Text Label 6425 2200 0    50   ~ 0
BE
$Comp
L Device:R_Small R1
U 1 1 5D226790
P 875 3850
F 0 "R1" V 875 3850 50  0000 C CNN
F 1 "R_Small" V 770 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 875 3850 50  0001 C CNN
F 3 "~" H 875 3850 50  0001 C CNN
	1    875  3850
	0    1    1    0   
$EndComp
Wire Wire Line
	775  3850 675  3850
$Comp
L power:+3V3 #PWR0103
U 1 1 5D227444
P 675 3750
F 0 "#PWR0103" H 675 3600 50  0001 C CNN
F 1 "+3V3" H 690 3923 50  0000 C CNN
F 2 "" H 675 3750 50  0001 C CNN
F 3 "" H 675 3750 50  0001 C CNN
	1    675  3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	675  3750 675  3850
Wire Wire Line
	975  3850 1100 3850
Text Label 1100 3850 0    50   ~ 0
BE
Text Label 2800 4650 0    50   ~ 0
D0
Text Label 2800 4750 0    50   ~ 0
D1
Text Label 2800 4850 0    50   ~ 0
D2
Text Label 2800 4950 0    50   ~ 0
D3
Text Label 2800 5050 0    50   ~ 0
D4
Text Label 2800 5150 0    50   ~ 0
D5
Text Label 2800 5250 0    50   ~ 0
D6
Text Label 2800 5350 0    50   ~ 0
D7
Text Label 1600 4650 2    50   ~ 0
A0
Text Label 1600 4750 2    50   ~ 0
A1
Text Label 1600 4850 2    50   ~ 0
A2
Text Label 1600 4950 2    50   ~ 0
A3
Text Label 1600 5050 2    50   ~ 0
A4
Text Label 1600 5150 2    50   ~ 0
A5
Text Label 1600 5250 2    50   ~ 0
A6
Text Label 1600 5350 2    50   ~ 0
A7
Text Label 1600 5450 2    50   ~ 0
A8
Text Label 1600 5550 2    50   ~ 0
A9
Text Label 1600 5650 2    50   ~ 0
A10
Text Label 1600 5750 2    50   ~ 0
A11
Text Label 1600 5850 2    50   ~ 0
A12
Text Label 1600 5950 2    50   ~ 0
A13
Text Label 1600 6050 2    50   ~ 0
A14
Text Label 1600 6150 2    50   ~ 0
A15
Text Label 1600 6250 2    50   ~ 0
A16
Text Label 1600 6350 2    50   ~ 0
A17
Text Label 1600 6450 2    50   ~ 0
A18
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
Text Label 4125 3300 2    50   ~ 0
DB0
Text Label 4125 3400 2    50   ~ 0
DB1
Text Label 4125 3500 2    50   ~ 0
DB2
Text Label 4125 3600 2    50   ~ 0
DB3
Text Label 4125 3700 2    50   ~ 0
DB4
Text Label 4125 3800 2    50   ~ 0
DB5
Text Label 4125 3900 2    50   ~ 0
DB6
Text Label 4125 4000 2    50   ~ 0
DB7
Text Label 10550 1375 0    50   ~ 0
D0
Text Label 10550 1475 0    50   ~ 0
D1
Text Label 10550 1575 0    50   ~ 0
D2
Text Label 10550 1675 0    50   ~ 0
D3
Text Label 10550 1775 0    50   ~ 0
D4
Text Label 10550 1875 0    50   ~ 0
D5
Text Label 10550 1975 0    50   ~ 0
D6
Text Label 10550 2075 0    50   ~ 0
D7
Text Label 9000 1375 2    50   ~ 0
A0
Text Label 9000 1475 2    50   ~ 0
A1
Text Label 9000 1575 2    50   ~ 0
A2
Text Label 9000 1675 2    50   ~ 0
A3
Text Label 9000 1775 2    50   ~ 0
A4
Text Label 4175 6300 2    50   ~ 0
HSYNC
Text Label 4175 6400 2    50   ~ 0
VSYNC
Text Label 10500 2575 0    50   ~ 0
SCL
Text Label 10500 2675 0    50   ~ 0
SDA
Text Label 10500 2775 0    50   ~ 0
TX
Text Label 10500 2875 0    50   ~ 0
RX
$Comp
L Memory_EEPROM:24LC512 U6
U 1 1 5D229877
P 9875 4075
F 0 "U6" H 9875 4556 50  0000 C CNN
F 1 "24LC512" H 9875 4465 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9875 4075 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21754M.pdf" H 9875 4075 50  0001 C CNN
	1    9875 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9475 3975 9425 3975
Wire Wire Line
	9425 3975 9425 4075
Wire Wire Line
	9425 4425 9875 4425
Wire Wire Line
	9875 4425 9875 4375
Wire Wire Line
	9475 4075 9425 4075
Connection ~ 9425 4075
Wire Wire Line
	9425 4075 9425 4175
Wire Wire Line
	9475 4175 9425 4175
Connection ~ 9425 4175
Wire Wire Line
	9425 4175 9425 4425
$Comp
L power:GND #PWR0104
U 1 1 5D22BEA8
P 9875 4475
F 0 "#PWR0104" H 9875 4225 50  0001 C CNN
F 1 "GND" H 9880 4302 50  0000 C CNN
F 2 "" H 9875 4475 50  0001 C CNN
F 3 "" H 9875 4475 50  0001 C CNN
	1    9875 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	9875 4475 9875 4425
Connection ~ 9875 4425
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5D22CF68
P 11050 2975
F 0 "J1" H 11100 3175 50  0000 C CNN
F 1 "Prop Plug" H 11225 2700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 11050 2975 50  0001 C CNN
F 3 "~" H 11050 2975 50  0001 C CNN
	1    11050 2975
	-1   0    0    1   
$EndComp
Wire Wire Line
	10500 2775 10850 2775
Wire Wire Line
	10500 2875 10850 2875
Wire Wire Line
	10850 3075 10800 3075
Wire Wire Line
	10800 3075 10800 3125
$Comp
L power:GND #PWR0105
U 1 1 5D231E5E
P 10800 3125
F 0 "#PWR0105" H 10800 2875 50  0001 C CNN
F 1 "GND" H 10805 2952 50  0000 C CNN
F 2 "" H 10800 3125 50  0001 C CNN
F 3 "" H 10800 3125 50  0001 C CNN
	1    10800 3125
	1    0    0    -1  
$EndComp
Text Label 10850 2975 2    50   ~ 0
~PROP_RST
Wire Wire Line
	9100 1175 9050 1175
Wire Wire Line
	9800 825  9800 875 
Wire Wire Line
	9700 875  9700 825 
Connection ~ 9700 825 
Wire Wire Line
	9700 825  9700 750 
$Comp
L power:+3V3 #PWR0106
U 1 1 5D233A97
P 9700 700
F 0 "#PWR0106" H 9700 550 50  0001 C CNN
F 1 "+3V3" H 9715 873 50  0000 C CNN
F 2 "" H 9700 700 50  0001 C CNN
F 3 "" H 9700 700 50  0001 C CNN
	1    9700 700 
	1    0    0    -1  
$EndComp
Text Label 8850 1075 2    50   ~ 0
~PROP_RST
$Comp
L Device:C_Small C2
U 1 1 5D234419
P 9975 750
F 0 "C2" V 10000 675 50  0000 C CNN
F 1 "100n" V 10000 875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9975 750 50  0001 C CNN
F 3 "~" H 9975 750 50  0001 C CNN
	1    9975 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 750  9800 750 
Connection ~ 9700 750 
Wire Wire Line
	9700 750  9700 700 
Wire Wire Line
	10075 750  10150 750 
$Comp
L power:GND #PWR0107
U 1 1 5D235FCC
P 10200 750
F 0 "#PWR0107" H 10200 500 50  0001 C CNN
F 1 "GND" V 10205 622 50  0000 R CNN
F 2 "" H 10200 750 50  0001 C CNN
F 3 "" H 10200 750 50  0001 C CNN
	1    10200 750 
	0    -1   -1   0   
$EndComp
Text Label 10550 2175 0    50   ~ 0
PS2_DATA
Text Label 10550 2275 0    50   ~ 0
PS2_CLK
Text Label 10275 5275 0    50   ~ 0
PS2_DATA
Text Label 10275 5075 0    50   ~ 0
PS2_CLK
Text Label 9000 1975 2    50   ~ 0
MISO
Text Label 9000 2075 2    50   ~ 0
MOSI
Text Label 9000 2175 2    50   ~ 0
SCLK
Text Label 9000 2275 2    50   ~ 0
~CS0
Text Label 9000 2375 2    50   ~ 0
~CS1
$Comp
L Device:Crystal Y1
U 1 1 5D23D31D
P 10775 1075
F 0 "Y1" H 10775 1343 50  0000 C CNN
F 1 "Crystal" H 10775 1252 50  0000 C CNN
F 2 "Crystal:Resonator-2Pin_W10.0mm_H5.0mm" H 10775 1075 50  0001 C CNN
F 3 "~" H 10775 1075 50  0001 C CNN
	1    10775 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1075 10625 1075
Wire Wire Line
	10925 1075 10975 1075
Wire Wire Line
	10975 1075 10975 1175
Wire Wire Line
	10975 1175 10500 1175
Text Label 6425 2100 0    50   ~ 0
BOOT
Text Label 9000 1875 2    50   ~ 0
BOOT
Text Label 1100 4050 0    50   ~ 0
BOOT
Wire Wire Line
	975  4050 1100 4050
Wire Wire Line
	675  3850 675  4050
Wire Wire Line
	675  4050 775  4050
Connection ~ 675  3850
Text Label 1600 6800 2    50   ~ 0
~RAM_CE
Text Label 1600 6900 2    50   ~ 0
~RAM_OE
Text Label 1600 7000 2    50   ~ 0
~RAM_WE
Text Label 4175 4900 2    50   ~ 0
~RAM_CE
Text Label 4175 5000 2    50   ~ 0
~RAM_OE
Text Label 4175 5100 2    50   ~ 0
~RAM_WE
Text Label 8950 2675 2    50   ~ 0
~IRQ
Text Label 8950 2800 2    50   ~ 0
R~W
Text Label 6425 2600 0    50   ~ 0
MEM_ACC
Text Notes 6925 2600 0    50   ~ 0
MEM_ACC = VALID_ADDR & CLK_CPU
Text Label 8950 2900 2    50   ~ 0
MEM_ACC
$Comp
L CPLD_Xilinx:XC95144XL-TQ100 U3
U 1 1 5D23536D
P 5275 4500
F 0 "U3" H 5275 7381 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 5275 7290 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 5275 4500 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 5275 4500 50  0001 C CNN
	1    5275 4500
	1    0    0    -1  
$EndComp
Text Label 6425 3900 0    50   ~ 0
A0
Text Label 6425 4000 0    50   ~ 0
A1
Text Label 6425 4100 0    50   ~ 0
A2
Text Label 6425 4200 0    50   ~ 0
A3
Text Label 6425 4400 0    50   ~ 0
A4
Text Label 6425 4500 0    50   ~ 0
A5
Text Label 6425 4600 0    50   ~ 0
A6
Text Label 6425 4700 0    50   ~ 0
A7
Text Label 6425 4800 0    50   ~ 0
A8
Text Label 6425 4900 0    50   ~ 0
A9
Text Label 6425 5000 0    50   ~ 0
A10
Text Label 6425 5100 0    50   ~ 0
A11
Text Label 6425 5200 0    50   ~ 0
A12
Text Label 6425 5300 0    50   ~ 0
A13
Text Label 6425 5500 0    50   ~ 0
A14
Text Label 6425 5600 0    50   ~ 0
A15
Text Label 4175 5300 2    50   ~ 0
~NMI
Text Label 4175 5500 2    50   ~ 0
R0
Text Label 4175 5600 2    50   ~ 0
R1
Text Label 4175 5700 2    50   ~ 0
R2
Text Label 4175 5800 2    50   ~ 0
G0
Text Label 4175 5900 2    50   ~ 0
G1
Text Label 4175 6000 2    50   ~ 0
G2
Text Label 4175 6100 2    50   ~ 0
B0
Text Label 4175 6200 2    50   ~ 0
B1
Text Label 9000 2450 2    50   ~ 0
~CS2
Text Label 6425 2700 0    50   ~ 0
R~W
Text Label 6425 3100 0    50   ~ 0
MLB
Text Label 6425 3000 0    50   ~ 0
~ABORT
Text Label 6425 2900 0    50   ~ 0
RDY
Text Label 6425 2800 0    50   ~ 0
VPB
Text Label 6425 3250 0    50   ~ 0
MX
Text Label 6425 3350 0    50   ~ 0
E
Text Label 4125 2900 2    50   ~ 0
STOP_CPU
Text Label 1600 6550 2    50   ~ 0
A19
Text Label 1600 6650 2    50   ~ 0
A20
$Comp
L Device:R_Small R3
U 1 1 5D223EF9
P 875 4225
F 0 "R3" V 875 4225 50  0000 C CNN
F 1 "R_Small" V 770 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 875 4225 50  0001 C CNN
F 3 "~" H 875 4225 50  0001 C CNN
	1    875  4225
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5D2245BD
P 875 4425
F 0 "R4" V 875 4425 50  0000 C CNN
F 1 "R_Small" V 770 4425 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 875 4425 50  0001 C CNN
F 3 "~" H 875 4425 50  0001 C CNN
	1    875  4425
	0    1    1    0   
$EndComp
Wire Wire Line
	675  4050 675  4225
Wire Wire Line
	675  4225 775  4225
Connection ~ 675  4050
Wire Wire Line
	675  4225 675  4425
Wire Wire Line
	675  4425 775  4425
Connection ~ 675  4225
Wire Wire Line
	975  4225 1100 4225
Wire Wire Line
	975  4425 1100 4425
Text Label 1100 4225 0    50   ~ 0
~IRQ
Text Label 1100 4425 0    50   ~ 0
~NMI
Text Label 750  4650 0    50   ~ 0
~RAM_CE
Text Label 750  4750 0    50   ~ 0
~RAM_OE
Text Label 750  4850 0    50   ~ 0
~RAM_WE
$Comp
L Device:R_Small R2
U 1 1 5D2418E6
P 875 4050
F 0 "R2" V 875 4050 50  0000 C CNN
F 1 "R_Small" V 770 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 875 4050 50  0001 C CNN
F 3 "~" H 875 4050 50  0001 C CNN
	1    875  4050
	0    1    1    0   
$EndComp
Text Label 750  4950 0    50   ~ 0
~RESET_CPU
Text Label 750  5050 0    50   ~ 0
~ABORT
$Comp
L custom:IS61WV20488FBLL-10TLI U2
U 1 1 5D233406
P 2200 5750
F 0 "U2" H 2650 7000 50  0000 C CNN
F 1 "IS61WV20488FBLL-10TLI" H 2225 4375 50  0000 C CNN
F 2 "Package_SO:TSOP-II-44_10.16x18.41mm_P0.8mm" H 2200 7100 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/198/61-64WV20488FALL-FBLL-1518520.pdf" H 2200 5750 50  0001 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
$Comp
L MCU_Parallax:P8X32A-D40 U5
U 1 1 5D21FC4A
P 9800 1975
F 0 "U5" H 10250 2975 50  0000 C CNN
F 1 "P8X32A-D40" H 10100 975 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 9800 3175 50  0001 C CNN
F 3 "https://www.parallax.com/sites/default/files/downloads/P8X32A-Propeller-Datasheet-v1.4.0_0.pdf" H 9800 1975 50  0001 C CNN
	1    9800 1975
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D23848A
P 8925 900
F 0 "R5" V 9000 850 50  0000 L CNN
F 1 "10k" V 8925 825 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8925 900 50  0001 C CNN
F 3 "~" H 8925 900 50  0001 C CNN
	1    8925 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8925 1000 8925 1075
Wire Wire Line
	8925 1075 9100 1075
Wire Wire Line
	9700 750  8925 750 
Wire Wire Line
	8925 750  8925 800 
Wire Wire Line
	9050 1175 9050 825 
Wire Wire Line
	9050 825  9700 825 
Wire Wire Line
	8925 1075 8850 1075
Connection ~ 8925 1075
$Comp
L Device:C_Small C12
U 1 1 5D241CA7
P 9975 825
F 0 "C12" V 10025 750 50  0000 C CNN
F 1 "100n" V 10025 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9975 825 50  0001 C CNN
F 3 "~" H 9975 825 50  0001 C CNN
	1    9975 825 
	0    1    1    0   
$EndComp
Wire Wire Line
	9875 825  9800 825 
Connection ~ 9800 825 
Wire Wire Line
	9800 825  9800 750 
Connection ~ 9800 750 
Wire Wire Line
	9800 750  9875 750 
Wire Wire Line
	10075 825  10150 825 
Wire Wire Line
	10150 825  10150 750 
Connection ~ 10150 750 
Wire Wire Line
	10150 750  10200 750 
Text Label 10525 4075 0    50   ~ 0
SCL
Text Label 10525 3975 0    50   ~ 0
SDA
Wire Wire Line
	10275 3975 10325 3975
Wire Wire Line
	10275 4075 10425 4075
$Comp
L Device:R_Small R6
U 1 1 5D24CB5C
P 10325 3825
F 0 "R6" V 10325 3750 50  0000 L CNN
F 1 "2k2" V 10375 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10325 3825 50  0001 C CNN
F 3 "~" H 10325 3825 50  0001 C CNN
	1    10325 3825
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5D24D5D8
P 10425 3825
F 0 "R7" V 10425 3750 50  0000 L CNN
F 1 "2k2" V 10475 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10425 3825 50  0001 C CNN
F 3 "~" H 10425 3825 50  0001 C CNN
	1    10425 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	10325 3925 10325 3975
Connection ~ 10325 3975
Wire Wire Line
	10325 3975 10525 3975
Wire Wire Line
	10425 3925 10425 4075
Connection ~ 10425 4075
Wire Wire Line
	10425 4075 10525 4075
Wire Wire Line
	10325 3725 10325 3675
Wire Wire Line
	10325 3675 10425 3675
Wire Wire Line
	10425 3675 10425 3725
Wire Wire Line
	10325 3675 10325 3600
Connection ~ 10325 3675
$Comp
L power:+3V3 #PWR05
U 1 1 5D2557C0
P 10325 3600
F 0 "#PWR05" H 10325 3450 50  0001 C CNN
F 1 "+3V3" H 10340 3773 50  0000 C CNN
F 2 "" H 10325 3600 50  0001 C CNN
F 3 "" H 10325 3600 50  0001 C CNN
	1    10325 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9875 4425 10350 4425
Wire Wire Line
	10350 4425 10350 4175
Wire Wire Line
	10350 4175 10275 4175
Wire Wire Line
	4975 7200 5075 7200
Wire Wire Line
	5075 7200 5175 7200
Connection ~ 5075 7200
Wire Wire Line
	5175 7200 5275 7200
Connection ~ 5175 7200
Wire Wire Line
	5275 7200 5375 7200
Connection ~ 5275 7200
Wire Wire Line
	5375 7200 5475 7200
Connection ~ 5375 7200
Wire Wire Line
	5475 7200 5575 7200
Connection ~ 5475 7200
Wire Wire Line
	5575 7200 5675 7200
Connection ~ 5575 7200
Wire Wire Line
	5675 7200 5675 7275
Connection ~ 5675 7200
$Comp
L power:GND #PWR03
U 1 1 5D2652E5
P 5675 7275
F 0 "#PWR03" H 5675 7025 50  0001 C CNN
F 1 "GND" H 5680 7102 50  0000 C CNN
F 2 "" H 5675 7275 50  0001 C CNN
F 3 "" H 5675 7275 50  0001 C CNN
	1    5675 7275
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5D26E099
P 4975 1450
F 0 "C5" H 4975 1500 50  0000 L CNN
F 1 "100n" H 4975 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4975 1450 50  0001 C CNN
F 3 "~" H 4975 1450 50  0001 C CNN
	1    4975 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 1800 4975 1550
Wire Wire Line
	4975 1800 5075 1800
Connection ~ 4975 1800
Wire Wire Line
	5075 1800 5175 1800
Connection ~ 5075 1800
Wire Wire Line
	5275 1800 5175 1800
Connection ~ 5175 1800
Wire Wire Line
	5275 1800 5375 1800
Connection ~ 5275 1800
Wire Wire Line
	5375 1800 5475 1800
Connection ~ 5375 1800
Wire Wire Line
	5475 1800 5575 1800
Connection ~ 5475 1800
Wire Wire Line
	5075 1550 5075 1800
Wire Wire Line
	5175 1550 5175 1800
Wire Wire Line
	5275 1550 5275 1775
Wire Wire Line
	5375 1550 5375 1800
Wire Wire Line
	5475 1550 5475 1800
Wire Wire Line
	5575 1550 5575 1800
Connection ~ 5575 1800
$Comp
L Device:C_Small C6
U 1 1 5D29F9D1
P 5075 1450
F 0 "C6" H 5075 1500 50  0000 L CNN
F 1 "100n" H 5075 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5075 1450 50  0001 C CNN
F 3 "~" H 5075 1450 50  0001 C CNN
	1    5075 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5D2A2181
P 5175 1450
F 0 "C7" H 5175 1500 50  0000 L CNN
F 1 "100n" H 5175 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5175 1450 50  0001 C CNN
F 3 "~" H 5175 1450 50  0001 C CNN
	1    5175 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D2A4856
P 5275 1450
F 0 "C8" H 5275 1500 50  0000 L CNN
F 1 "100n" H 5275 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5275 1450 50  0001 C CNN
F 3 "~" H 5275 1450 50  0001 C CNN
	1    5275 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5D2A6F44
P 5375 1450
F 0 "C9" H 5375 1500 50  0000 L CNN
F 1 "100n" H 5375 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5375 1450 50  0001 C CNN
F 3 "~" H 5375 1450 50  0001 C CNN
	1    5375 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5D2A97BC
P 5475 1450
F 0 "C10" H 5475 1500 50  0000 L CNN
F 1 "100n" H 5475 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5475 1450 50  0001 C CNN
F 3 "~" H 5475 1450 50  0001 C CNN
	1    5475 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5D2ABF8A
P 5575 1450
F 0 "C11" H 5575 1500 50  0000 L CNN
F 1 "100n" H 5575 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5575 1450 50  0001 C CNN
F 3 "~" H 5575 1450 50  0001 C CNN
	1    5575 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 1350 5075 1350
Wire Wire Line
	5075 1350 5175 1350
Connection ~ 5075 1350
Wire Wire Line
	5175 1350 5275 1350
Connection ~ 5175 1350
Wire Wire Line
	5375 1350 5275 1350
Connection ~ 5275 1350
Wire Wire Line
	5375 1350 5475 1350
Connection ~ 5375 1350
Wire Wire Line
	5475 1350 5575 1350
Connection ~ 5475 1350
$Comp
L power:GND #PWR04
U 1 1 5D2BF2B4
P 5800 1650
F 0 "#PWR04" H 5800 1400 50  0001 C CNN
F 1 "GND" H 5805 1477 50  0000 C CNN
F 2 "" H 5800 1650 50  0001 C CNN
F 3 "" H 5800 1650 50  0001 C CNN
	1    5800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 1350 5800 1350
Wire Wire Line
	5800 1350 5800 1650
Connection ~ 5575 1350
Wire Wire Line
	2150 7200 2250 7200
Wire Wire Line
	2250 7200 2250 7275
Connection ~ 2250 7200
$Comp
L power:GND #PWR01
U 1 1 5D2C930D
P 2250 7275
F 0 "#PWR01" H 2250 7025 50  0001 C CNN
F 1 "GND" H 2255 7102 50  0000 C CNN
F 2 "" H 2250 7275 50  0001 C CNN
F 3 "" H 2250 7275 50  0001 C CNN
	1    2250 7275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4450 2250 4450
Wire Wire Line
	2150 4450 2150 4400
Connection ~ 2150 4450
Wire Wire Line
	2250 4450 2250 4400
Connection ~ 2250 4450
$Comp
L Device:C_Small C3
U 1 1 5D2D3F24
P 2150 4300
F 0 "C3" H 2150 4375 50  0000 L CNN
F 1 "100n" H 2150 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2150 4300 50  0001 C CNN
F 3 "~" H 2150 4300 50  0001 C CNN
	1    2150 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D2D468A
P 2250 4300
F 0 "C4" H 2250 4375 50  0000 L CNN
F 1 "100n" H 2250 4250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2250 4300 50  0001 C CNN
F 3 "~" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4200 2250 4200
Wire Wire Line
	2250 4200 2500 4200
Wire Wire Line
	2500 4200 2500 4250
Connection ~ 2250 4200
$Comp
L power:GND #PWR02
U 1 1 5D2DE943
P 2500 4250
F 0 "#PWR02" H 2500 4000 50  0001 C CNN
F 1 "GND" H 2505 4077 50  0000 C CNN
F 2 "" H 2500 4250 50  0001 C CNN
F 3 "" H 2500 4250 50  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Mini-DIN-6 J2
U 1 1 5D3031B2
P 9975 5175
F 0 "J2" H 9975 5542 50  0000 C CNN
F 1 "Mini-DIN-6" H 9975 5451 50  0000 C CNN
F 2 "custom:MINI-DIN-6-FULL-SHIELD" H 9975 5175 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 9975 5175 50  0001 C CNN
	1    9975 5175
	1    0    0    -1  
$EndComp
Text Label 10275 5175 0    50   ~ 0
GND
Text Label 9675 5175 2    50   ~ 0
+3V3
NoConn ~ 9675 5075
NoConn ~ 9675 5275
$EndSCHEMATC
