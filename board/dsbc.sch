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
L custom:W65C816S6PG-14 U?
U 1 1 5D2090DE
P 1900 1550
F 0 "U?" H 2050 2175 50  0000 C CNN
F 1 "W65C816S6PG-14" H 2050 2084 50  0000 C CNN
F 2 "" H 1600 1950 50  0001 C CNN
F 3 "https://www.westerndesigncenter.com/wdc/documentation/w65c816s.pdf" H 1600 1950 50  0001 C CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
$Comp
L custom:P8X32A U?
U 1 1 5D20B88F
P 9550 2750
F 0 "U?" H 9525 4697 60  0000 C CNN
F 1 "P8X32A" H 9525 4591 60  0000 C CNN
F 2 "" H 9600 3450 60  0001 C CNN
F 3 "" H 9600 3450 60  0001 C CNN
	1    9550 2750
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
L power:GND #PWR?
U 1 1 5D20B1D0
P 1550 3100
F 0 "#PWR?" H 1550 2850 50  0001 C CNN
F 1 "GND" H 1555 2927 50  0000 C CNN
F 2 "" H 1550 3100 50  0001 C CNN
F 3 "" H 1550 3100 50  0001 C CNN
	1    1550 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D20B87E
P 1250 2950
F 0 "#PWR?" H 1250 2800 50  0001 C CNN
F 1 "+3V3" V 1265 3078 50  0000 L CNN
F 2 "" H 1250 2950 50  0001 C CNN
F 3 "" H 1250 2950 50  0001 C CNN
	1    1250 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D210872
P 1450 3050
F 0 "C?" V 1425 2975 50  0000 C CNN
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
Text Label 2500 1150 0    50   ~ 0
D0
Text Label 2500 1250 0    50   ~ 0
D1
Text Label 2500 1350 0    50   ~ 0
D2
Text Label 2500 1450 0    50   ~ 0
D3
Text Label 2500 1550 0    50   ~ 0
D4
Text Label 2500 1650 0    50   ~ 0
D5
Text Label 2500 1750 0    50   ~ 0
D6
Text Label 2500 1850 0    50   ~ 0
D7
Text Label 6350 5100 0    50   ~ 0
VPA
Text Label 6350 5200 0    50   ~ 0
VDA
Text Label 6350 5300 0    50   ~ 0
VALID_ADDR
Text Notes 6575 5200 0    50   ~ 0
VALID_ADDR = VPA & VDA
Text Label 4150 2300 2    50   ~ 0
CLK_CPU
Text Label 4150 2400 2    50   ~ 0
CLK_40MHz
Text Label 6225 6100 0    50   ~ 0
TCK
Text Label 6225 5900 0    50   ~ 0
TDI
Text Label 6225 6200 0    50   ~ 0
TDO
Text Label 6225 6000 0    50   ~ 0
TMS
Text Label 6350 1400 0    50   ~ 0
A0
Text Label 6350 1500 0    50   ~ 0
A1
Text Label 6350 1600 0    50   ~ 0
A2
Text Label 6350 1700 0    50   ~ 0
A3
Text Label 6350 1800 0    50   ~ 0
A4
Text Label 6350 1900 0    50   ~ 0
A5
Text Label 6350 2000 0    50   ~ 0
A6
Text Label 6350 2100 0    50   ~ 0
A7
Text Label 6350 2200 0    50   ~ 0
A8
Text Label 6350 2300 0    50   ~ 0
A9
Text Label 6350 2400 0    50   ~ 0
A10
Text Label 6350 2500 0    50   ~ 0
A11
Text Label 6350 2600 0    50   ~ 0
A12
Text Label 6350 2700 0    50   ~ 0
A13
Text Label 6350 2800 0    50   ~ 0
A14
Text Label 6350 2900 0    50   ~ 0
A15
Text Label 6350 4800 0    50   ~ 0
BOOT
$Comp
L CPLD_Xilinx:XC95144XL-TQ100 U?
U 1 1 5D2205E2
P 5225 3800
F 0 "U?" H 5225 6681 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 5225 6590 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 5225 3800 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 5225 3800 50  0001 C CNN
	1    5225 3800
	1    0    0    -1  
$EndComp
Text Label 6350 3000 0    50   ~ 0
D0
Text Label 6350 3100 0    50   ~ 0
D1
Text Label 6350 3200 0    50   ~ 0
D2
Text Label 6350 3300 0    50   ~ 0
D3
Text Label 6350 3400 0    50   ~ 0
D4
Text Label 6350 3500 0    50   ~ 0
D5
Text Label 6350 3600 0    50   ~ 0
D6
Text Label 6350 3700 0    50   ~ 0
D7
Text Label 6350 3900 0    50   ~ 0
A16
Text Label 6350 4000 0    50   ~ 0
A17
Text Label 6350 4100 0    50   ~ 0
A18
Text Label 6350 4200 0    50   ~ 0
A19
Text Label 6350 4300 0    50   ~ 0
A20
Text Label 6350 4400 0    50   ~ 0
A21
Text Label 6350 4500 0    50   ~ 0
A22
Text Label 6350 4600 0    50   ~ 0
A23
Text Label 6350 4900 0    50   ~ 0
ADDR_INC
Text Label 6350 5000 0    50   ~ 0
BE
$Comp
L Device:R_Small R?
U 1 1 5D226790
P 1100 4250
F 0 "R?" V 904 4250 50  0000 C CNN
F 1 "R_Small" V 995 4250 50  0000 C CNN
F 2 "" H 1100 4250 50  0001 C CNN
F 3 "~" H 1100 4250 50  0001 C CNN
	1    1100 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 4250 900  4250
$Comp
L power:+3V3 #PWR?
U 1 1 5D227444
P 900 4150
F 0 "#PWR?" H 900 4000 50  0001 C CNN
F 1 "+3V3" H 915 4323 50  0000 C CNN
F 2 "" H 900 4150 50  0001 C CNN
F 3 "" H 900 4150 50  0001 C CNN
	1    900  4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4150 900  4250
Wire Wire Line
	1200 4250 1325 4250
Text Label 1325 4250 0    50   ~ 0
BE
$Comp
L Memory_RAM:IS61C5128AL-10TLI U?
U 1 1 5D22887E
P 2200 5750
F 0 "U?" H 2200 7231 50  0000 C CNN
F 1 "IS61C5128AL-10TLI" H 2200 7140 50  0000 C CNN
F 2 "Package_SO:TSOP-II-44_10.16x18.41mm_P0.8mm" H 1700 6900 50  0001 C CNN
F 3 "http://www.issi.com/WW/pdf/61-64C5128AL.pdf" H 2200 5750 50  0001 C CNN
	1    2200 5750
	1    0    0    -1  
$EndComp
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
$EndSCHEMATC
