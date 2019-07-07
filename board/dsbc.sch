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
F 2 "" H 1600 1950 50  0001 C CNN
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
F 2 "" H 1450 3050 50  0001 C CNN
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
Text Label 6450 1550 0    50   ~ 0
VPA
Text Label 6450 1650 0    50   ~ 0
VDA
Text Label 6450 1750 0    50   ~ 0
VALID_ADDR
Text Notes 6950 1750 0    50   ~ 0
VALID_ADDR = VPA & VDA
Text Label 4150 2250 2    50   ~ 0
CLK_CPU
Text Label 4150 2350 2    50   ~ 0
CLK_50MHz
Text Label 6400 6075 0    50   ~ 0
TCK
Text Label 6400 5875 0    50   ~ 0
TDI
Text Label 6400 6175 0    50   ~ 0
TDO
Text Label 6400 5975 0    50   ~ 0
TMS
Text Label 4175 1350 2    50   ~ 0
D0
Text Label 4175 1450 2    50   ~ 0
D1
Text Label 4175 1550 2    50   ~ 0
D2
Text Label 4175 1650 2    50   ~ 0
D3
Text Label 4175 1750 2    50   ~ 0
D4
Text Label 4175 1850 2    50   ~ 0
D5
Text Label 4175 1950 2    50   ~ 0
D6
Text Label 4175 2050 2    50   ~ 0
D7
Text Label 6450 4950 0    50   ~ 0
A16
Text Label 6450 5050 0    50   ~ 0
A17
Text Label 6450 5150 0    50   ~ 0
A18
Text Label 6450 5250 0    50   ~ 0
A19
Text Label 6450 5350 0    50   ~ 0
A20
Text Label 6450 5450 0    50   ~ 0
A21
Text Label 6450 5550 0    50   ~ 0
A22
Text Label 6450 5650 0    50   ~ 0
A23
Text Label 6450 1450 0    50   ~ 0
BE
$Comp
L Device:R_Small R1
U 1 1 5D226790
P 875 3850
F 0 "R1" V 875 3850 50  0000 C CNN
F 1 "R_Small" V 770 3850 50  0000 C CNN
F 2 "" H 875 3850 50  0001 C CNN
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
Text Label 4150 2550 2    50   ~ 0
DB0
Text Label 4150 2650 2    50   ~ 0
DB1
Text Label 4150 2750 2    50   ~ 0
DB2
Text Label 4150 2850 2    50   ~ 0
DB3
Text Label 4150 2950 2    50   ~ 0
DB4
Text Label 4150 3050 2    50   ~ 0
DB5
Text Label 4150 3150 2    50   ~ 0
DB6
Text Label 4150 3250 2    50   ~ 0
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
Text Label 4200 5550 2    50   ~ 0
HSYNC
Text Label 4200 5650 2    50   ~ 0
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
L Memory_EEPROM:24LC512 U6
U 1 1 5D229877
P 10550 4050
F 0 "U6" H 10550 4531 50  0000 C CNN
F 1 "24LC512" H 10550 4440 50  0000 C CNN
F 2 "" H 10550 4050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21754M.pdf" H 10550 4050 50  0001 C CNN
	1    10550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3950 10100 3950
Wire Wire Line
	10100 3950 10100 4050
Wire Wire Line
	10100 4400 10550 4400
Wire Wire Line
	10550 4400 10550 4350
Wire Wire Line
	10150 4050 10100 4050
Connection ~ 10100 4050
Wire Wire Line
	10100 4050 10100 4150
Wire Wire Line
	10150 4150 10100 4150
Connection ~ 10100 4150
Wire Wire Line
	10100 4150 10100 4400
$Comp
L power:GND #PWR0104
U 1 1 5D22BEA8
P 10550 4450
F 0 "#PWR0104" H 10550 4200 50  0001 C CNN
F 1 "GND" H 10555 4277 50  0000 C CNN
F 2 "" H 10550 4450 50  0001 C CNN
F 3 "" H 10550 4450 50  0001 C CNN
	1    10550 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 4450 10550 4400
Connection ~ 10550 4400
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5D22CF68
P 11050 2975
F 0 "J1" H 11100 3175 50  0000 C CNN
F 1 "Prop Plug" H 11225 2700 50  0000 C CNN
F 2 "" H 11050 2975 50  0001 C CNN
F 3 "~" H 11050 2975 50  0001 C CNN
	1    11050 2975
	-1   0    0    1   
$EndComp
Text Label 10125 5050 0    50   ~ 0
GND
Text Label 10125 5150 0    50   ~ 0
PROP_RST
Text Label 10125 5250 0    50   ~ 0
RX
Text Label 10125 5350 0    50   ~ 0
TX
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
	9100 1175 9025 1175
Wire Wire Line
	9025 1175 9025 825 
Wire Wire Line
	9025 825  9700 825 
Wire Wire Line
	9800 825  9800 875 
Wire Wire Line
	9700 875  9700 825 
Connection ~ 9700 825 
Wire Wire Line
	9700 825  9800 825 
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
Text Label 9100 1075 2    50   ~ 0
~PROP_RST
$Comp
L Device:C_Small C2
U 1 1 5D234419
P 9975 750
F 0 "C2" V 9746 750 50  0000 C CNN
F 1 "100n" V 9837 750 50  0000 C CNN
F 2 "" H 9975 750 50  0001 C CNN
F 3 "~" H 9975 750 50  0001 C CNN
	1    9975 750 
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 750  9875 750 
Connection ~ 9700 750 
Wire Wire Line
	9700 750  9700 700 
Wire Wire Line
	10075 750  10200 750 
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
$Comp
L custom:PS2_female U4
U 1 1 5D236A5B
P 9225 4425
F 0 "U4" H 9250 5072 60  0000 C CNN
F 1 "PS2_female" H 9250 4966 60  0000 C CNN
F 2 "" H 9225 4425 60  0001 C CNN
F 3 "" H 9225 4425 60  0001 C CNN
	1    9225 4425
	1    0    0    -1  
$EndComp
Text Label 10550 2175 0    50   ~ 0
PS2_DATA
Text Label 10550 2275 0    50   ~ 0
PS2_CLK
Text Label 9575 4025 0    50   ~ 0
PS2_DATA
Text Label 9575 4125 0    50   ~ 0
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
F 2 "" H 10775 1075 50  0001 C CNN
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
Text Label 6450 1350 0    50   ~ 0
BOOT
Text Label 9000 1875 2    50   ~ 0
BOOT
Text Label 1100 4050 0    50   ~ 0
BOOT
$Comp
L Device:R_Small R2
U 1 1 5D2418E6
P 875 4050
F 0 "R2" V 875 4050 50  0000 C CNN
F 1 "R_Small" V 770 4050 50  0000 C CNN
F 2 "" H 875 4050 50  0001 C CNN
F 3 "~" H 875 4050 50  0001 C CNN
	1    875  4050
	0    1    1    0   
$EndComp
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
Text Label 4200 4150 2    50   ~ 0
~RAM_CE
Text Label 4200 4250 2    50   ~ 0
~RAM_OE
Text Label 4200 4350 2    50   ~ 0
~RAM_WE
Text Label 8950 2675 2    50   ~ 0
~IRQ
Text Label 8950 2800 2    50   ~ 0
R~W
Text Label 6450 1850 0    50   ~ 0
MEM_ACC
Text Notes 6950 1850 0    50   ~ 0
MEM_ACC = VALID_ADDR & CLK_CPU
Text Label 8950 2900 2    50   ~ 0
MEM_ACC
$Comp
L CPLD_Xilinx:XC95144XL-TQ100 U3
U 1 1 5D23536D
P 5300 3750
F 0 "U3" H 5300 6631 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 5300 6540 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 5300 3750 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
Text Label 6450 3150 0    50   ~ 0
A0
Text Label 6450 3250 0    50   ~ 0
A1
Text Label 6450 3350 0    50   ~ 0
A2
Text Label 6450 3450 0    50   ~ 0
A3
Text Label 6450 3650 0    50   ~ 0
A4
Text Label 6450 3750 0    50   ~ 0
A5
Text Label 6450 3850 0    50   ~ 0
A6
Text Label 6450 3950 0    50   ~ 0
A7
Text Label 6450 4050 0    50   ~ 0
A8
Text Label 6450 4150 0    50   ~ 0
A9
Text Label 6450 4250 0    50   ~ 0
A10
Text Label 6450 4350 0    50   ~ 0
A11
Text Label 6450 4450 0    50   ~ 0
A12
Text Label 6450 4550 0    50   ~ 0
A13
Text Label 6450 4750 0    50   ~ 0
A14
Text Label 6450 4850 0    50   ~ 0
A15
Text Label 4200 4550 2    50   ~ 0
~NMI
Text Label 4200 4750 2    50   ~ 0
R0
Text Label 4200 4850 2    50   ~ 0
R1
Text Label 4200 4950 2    50   ~ 0
R2
Text Label 4200 5050 2    50   ~ 0
G0
Text Label 4200 5150 2    50   ~ 0
G1
Text Label 4200 5250 2    50   ~ 0
G2
Text Label 4200 5350 2    50   ~ 0
B0
Text Label 4200 5450 2    50   ~ 0
B1
Text Label 9000 2450 2    50   ~ 0
~CS2
Text Label 6450 1950 0    50   ~ 0
R~W
Text Label 6450 2350 0    50   ~ 0
MLB
Text Label 6450 2250 0    50   ~ 0
~ABORT
Text Label 6450 2150 0    50   ~ 0
RDY
Text Label 6450 2050 0    50   ~ 0
VPB
Text Label 6450 2500 0    50   ~ 0
MX
Text Label 6450 2600 0    50   ~ 0
E
Text Label 4150 2150 2    50   ~ 0
STOP_CPU
$Comp
L custom:IS61WV20488FBLL-10TLI U2
U 1 1 5D25AC87
P 2200 5750
F 0 "U2" H 2200 7231 50  0000 C CNN
F 1 "IS61WV20488FBLL-10TLI" H 2200 7140 50  0000 C CNN
F 2 "Package_SO:TSOP-II-44_10.16x18.41mm_P0.8mm" H 2200 7100 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/198/61-64WV20488FALL-FBLL-1518520.pdf" H 2200 5750 50  0001 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
Text Label 1600 6550 2    50   ~ 0
A19
Text Label 1600 6650 2    50   ~ 0
A20
$EndSCHEMATC
