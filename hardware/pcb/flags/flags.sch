EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_01x08_Male J1
U 1 1 5FDBBD51
P 1400 6800
F 0 "J1" H 1500 7250 50  0000 C CNN
F 1 "Bus" H 1500 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1400 6800 50  0001 C CNN
F 3 "~" H 1400 6800 50  0001 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FDBC542
P 5900 5300
F 0 "J2" H 6008 5581 50  0000 C CNN
F 1 "Control" H 6008 5490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5900 5300 50  0001 C CNN
F 3 "~" H 5900 5300 50  0001 C CNN
	1    5900 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FDBCC63
P 7850 5250
F 0 "J3" H 7958 5531 50  0000 C CNN
F 1 "Sync" H 7958 5440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7850 5250 50  0001 C CNN
F 3 "~" H 7850 5250 50  0001 C CNN
	1    7850 5250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5FDBD1A4
P 6200 6850
F 0 "J4" H 6308 7131 50  0000 C CNN
F 1 "Power" H 6308 7040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 6200 6850 50  0001 C CNN
F 3 "~" H 6200 6850 50  0001 C CNN
	1    6200 6850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Male J5
U 1 1 5FDBD7A5
P 8900 5200
F 0 "J5" H 9008 5681 50  0000 C CNN
F 1 "Conn_01x08_Male" H 9008 5590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 8900 5200 50  0001 C CNN
F 3 "~" H 8900 5200 50  0001 C CNN
	1    8900 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J6
U 1 1 5FDBE128
P 10350 5200
F 0 "J6" H 10458 5681 50  0000 C CNN
F 1 "Conn_01x08_Male" H 10458 5590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10350 5200 50  0001 C CNN
F 3 "~" H 10350 5200 50  0001 C CNN
	1    10350 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FDC948F
P 5750 7000
F 0 "#PWR0101" H 5750 6750 50  0001 C CNN
F 1 "GND" H 5755 6827 50  0000 C CNN
F 2 "" H 5750 7000 50  0001 C CNN
F 3 "" H 5750 7000 50  0001 C CNN
	1    5750 7000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5FDC9C73
P 5750 6600
F 0 "#PWR0102" H 5750 6450 50  0001 C CNN
F 1 "VCC" H 5765 6773 50  0000 C CNN
F 2 "" H 5750 6600 50  0001 C CNN
F 3 "" H 5750 6600 50  0001 C CNN
	1    5750 6600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FDCA76A
P 5500 6600
F 0 "#FLG0101" H 5500 6675 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 6773 50  0000 C CNN
F 2 "" H 5500 6600 50  0001 C CNN
F 3 "~" H 5500 6600 50  0001 C CNN
	1    5500 6600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FDCAD03
P 5500 7000
F 0 "#FLG0102" H 5500 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 7173 50  0000 C CNN
F 2 "" H 5500 7000 50  0001 C CNN
F 3 "~" H 5500 7000 50  0001 C CNN
	1    5500 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 6750 6000 6650
Wire Wire Line
	5750 6600 5750 6650
Wire Wire Line
	5750 6650 6000 6650
Connection ~ 6000 6650
Wire Wire Line
	5500 6600 5500 6650
Wire Wire Line
	5500 6650 5750 6650
Connection ~ 5750 6650
Wire Wire Line
	6000 6850 6000 6950
Wire Wire Line
	5750 7000 5750 6950
Wire Wire Line
	5750 6950 6000 6950
Connection ~ 6000 6950
Wire Wire Line
	5500 7000 5500 6950
Wire Wire Line
	5500 6950 5750 6950
Connection ~ 5750 6950
Text GLabel 1650 7200 2    50   BiDi ~ 0
BUS0
Text GLabel 1650 7100 2    50   BiDi ~ 0
BUS1
Text GLabel 1650 7000 2    50   BiDi ~ 0
BUS2
Text GLabel 1650 6900 2    50   BiDi ~ 0
BUS3
Text GLabel 1650 6800 2    50   BiDi ~ 0
BUS4
Text GLabel 1650 6700 2    50   BiDi ~ 0
BUS5
Text GLabel 1650 6600 2    50   BiDi ~ 0
BUS6
Text GLabel 1650 6500 2    50   BiDi ~ 0
BUS7
Wire Wire Line
	1600 6500 1650 6500
Wire Wire Line
	1650 6600 1600 6600
Wire Wire Line
	1600 6700 1650 6700
Wire Wire Line
	1650 6800 1600 6800
Wire Wire Line
	1600 6900 1650 6900
Wire Wire Line
	1650 7000 1600 7000
Wire Wire Line
	1600 7100 1650 7100
Wire Wire Line
	1650 7200 1600 7200
$Comp
L 74xx:74HC02 U1
U 1 1 5FDAE108
P 2000 1200
F 0 "U1" H 2000 1200 50  0000 C CNN
F 1 "74HC02" H 2000 1434 50  0000 C CNN
F 2 "" H 2000 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U1
U 2 1 5FDB1B11
P 2000 1600
F 0 "U1" H 2000 1600 50  0000 C CNN
F 1 "74HC02" H 2000 1834 50  0001 C CNN
F 2 "" H 2000 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 1600 50  0001 C CNN
	2    2000 1600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U1
U 3 1 5FDB31F6
P 2000 2000
F 0 "U1" H 2000 2000 50  0000 C CNN
F 1 "74HC02" H 2000 2234 50  0001 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 2000 50  0001 C CNN
	3    2000 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U1
U 4 1 5FDB4427
P 2000 2400
F 0 "U1" H 2000 2400 50  0000 C CNN
F 1 "74HC02" H 2000 2634 50  0001 C CNN
F 2 "" H 2000 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 2400 50  0001 C CNN
	4    2000 2400
	1    0    0    -1  
$EndComp
Text GLabel 1600 1100 0    50   Input ~ 0
BUS0
Text GLabel 1600 1300 0    50   Input ~ 0
BUS1
Text GLabel 1600 1500 0    50   Input ~ 0
BUS2
Text GLabel 1600 1700 0    50   Input ~ 0
BUS3
Text GLabel 1600 1900 0    50   Input ~ 0
BUS4
Text GLabel 1600 2100 0    50   Input ~ 0
BUS5
Text GLabel 1600 2300 0    50   Input ~ 0
BUS6
Text GLabel 1600 2500 0    50   Input ~ 0
BUS7
Wire Wire Line
	1600 1100 1700 1100
Wire Wire Line
	1700 1300 1600 1300
Wire Wire Line
	1600 1500 1700 1500
Wire Wire Line
	1700 1700 1600 1700
Wire Wire Line
	1600 1900 1700 1900
Wire Wire Line
	1700 2100 1600 2100
Wire Wire Line
	1600 2300 1700 2300
Wire Wire Line
	1700 2500 1600 2500
$Comp
L 74xx:74LS08 U2
U 1 1 5FDE00D8
P 2850 1400
F 0 "U2" H 2850 1400 50  0000 C CNN
F 1 "74HC08" H 2850 1634 50  0000 C CNN
F 2 "" H 2850 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2850 1400 50  0001 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 2 1 5FDE23AD
P 2850 2200
F 0 "U2" H 2850 2200 50  0000 C CNN
F 1 "74HC08" H 2850 2434 50  0001 C CNN
F 2 "" H 2850 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2850 2200 50  0001 C CNN
	2    2850 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 3 1 5FDE4BA9
P 3600 1800
F 0 "U2" H 3600 1800 50  0000 C CNN
F 1 "74HC08" H 3600 2034 50  0001 C CNN
F 2 "" H 3600 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3600 1800 50  0001 C CNN
	3    3600 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 4 1 5FDE6BF2
P 3150 3900
F 0 "U2" H 3150 3900 50  0000 C CNN
F 1 "74HC08" H 3150 4134 50  0001 C CNN
F 2 "" H 3150 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3150 3900 50  0001 C CNN
	4    3150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1200 2450 1200
Wire Wire Line
	2450 1200 2450 1300
Wire Wire Line
	2450 1300 2550 1300
Wire Wire Line
	2300 1600 2450 1600
Wire Wire Line
	2450 1600 2450 1500
Wire Wire Line
	2450 1500 2550 1500
Wire Wire Line
	2300 2000 2450 2000
Wire Wire Line
	2450 2000 2450 2100
Wire Wire Line
	2450 2100 2550 2100
Wire Wire Line
	2300 2400 2450 2400
Wire Wire Line
	2450 2400 2450 2300
Wire Wire Line
	2450 2300 2550 2300
Wire Wire Line
	3150 1400 3200 1400
Wire Wire Line
	3200 1400 3200 1700
Wire Wire Line
	3200 1700 3300 1700
Wire Wire Line
	3150 2200 3200 2200
Wire Wire Line
	3200 2200 3200 1900
Wire Wire Line
	3200 1900 3300 1900
$Comp
L 74xx:74LS173 U4
U 1 1 5FDF8F5E
P 6450 2400
F 0 "U4" H 6450 3481 50  0000 C CNN
F 1 "74LS173" H 6450 3390 50  0000 C CNN
F 2 "" H 6450 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 6450 2400 50  0001 C CNN
	1    6450 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U3
U 1 1 5FDFC5E9
P 4950 2400
F 0 "U3" H 4950 3481 50  0000 C CNN
F 1 "74LS157" H 4950 3390 50  0000 C CNN
F 2 "" H 4950 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1800 3950 1800
Text GLabel 3850 2400 0    50   Input ~ 0
BUS7
Text GLabel 4350 1900 0    50   Input ~ 0
BUS0
Text GLabel 4350 2200 0    50   Input ~ 0
BUS1
Text GLabel 4350 2500 0    50   Input ~ 0
BUS2
Text GLabel 4350 2800 0    50   Input ~ 0
BUS3
Wire Wire Line
	4350 1900 4450 1900
Wire Wire Line
	4350 2200 4450 2200
Wire Wire Line
	4350 2500 4450 2500
Wire Wire Line
	4350 2800 4450 2800
Wire Wire Line
	3850 2100 4450 2100
Wire Wire Line
	5450 1800 5950 1800
Wire Wire Line
	5450 2100 5500 2100
Wire Wire Line
	5500 2100 5500 1900
Wire Wire Line
	5500 1900 5950 1900
Wire Wire Line
	5450 2400 5550 2400
Wire Wire Line
	5550 2400 5550 2000
Wire Wire Line
	5550 2000 5950 2000
Wire Wire Line
	5450 2700 5600 2700
Wire Wire Line
	5600 2700 5600 2100
Wire Wire Line
	5600 2100 5950 2100
Text GLabel 3850 2700 0    50   Input ~ 0
CARRY_IN
Text GLabel 3850 2100 0    50   Input ~ 0
OV_IN
Wire Wire Line
	3850 2400 4450 2400
Wire Wire Line
	3850 2700 4450 2700
$Comp
L 74xx:74LS173 U5
U 1 1 5FE44004
P 8350 2400
F 0 "U5" H 8350 3481 50  0000 C CNN
F 1 "74LS173" H 8350 3390 50  0000 C CNN
F 2 "" H 8350 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 8350 2400 50  0001 C CNN
	1    8350 2400
	1    0    0    -1  
$EndComp
Text GLabel 2300 4550 2    50   Output ~ 0
OV_IN
Text GLabel 2300 4700 2    50   Output ~ 0
CARRY_IN
$Comp
L Device:R R?
U 1 1 5FE50CBB
P 1850 4350
F 0 "R?" H 1920 4396 50  0000 L CNN
F 1 "R" H 1920 4305 50  0000 L CNN
F 2 "" V 1780 4350 50  0001 C CNN
F 3 "~" H 1850 4350 50  0001 C CNN
	1    1850 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FE51B30
P 2200 4350
F 0 "R?" H 2270 4396 50  0000 L CNN
F 1 "R" H 2270 4305 50  0000 L CNN
F 2 "" V 2130 4350 50  0001 C CNN
F 3 "~" H 2200 4350 50  0001 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3900 2200 3900
Wire Wire Line
	2200 3900 2200 4200
Wire Wire Line
	2200 4500 2200 4550
Wire Wire Line
	2200 4550 2300 4550
Wire Wire Line
	1650 4100 1850 4100
Wire Wire Line
	1850 4100 1850 4200
Wire Wire Line
	1850 4500 1850 4700
Wire Wire Line
	1850 4700 2300 4700
Text GLabel 3600 3900 2    50   Output ~ 0
CARRY_OUT
Wire Wire Line
	3450 3900 3600 3900
Text GLabel 2800 3800 0    50   Input ~ 0
USE_CARRY
Wire Wire Line
	2800 3800 2850 3800
Wire Wire Line
	1650 4000 2850 4000
Text GLabel 9100 1800 2    50   Output ~ 0
Z_CTRL
Text GLabel 9100 1900 2    50   Output ~ 0
V_CTRL
Text GLabel 9100 2000 2    50   Output ~ 0
N_CTRL
Text GLabel 9100 2100 2    50   Output ~ 0
C_CTRL
Wire Wire Line
	8850 1800 9100 1800
Wire Wire Line
	8850 1900 9100 1900
Wire Wire Line
	8850 2000 9100 2000
Wire Wire Line
	8850 2100 9100 2100
Text GLabel 1650 3900 0    50   Input ~ 0
V_CTRL
Text GLabel 1650 4000 0    50   Input ~ 0
N_CTRL
Text GLabel 1650 4100 0    50   Input ~ 0
C_CTRL
Text GLabel 8850 4900 0    50   Input ~ 0
Z_CTRL
Text GLabel 8850 5000 0    50   Input ~ 0
V_CTRL
Text GLabel 8850 5100 0    50   Input ~ 0
N_CTRL
Text GLabel 8850 5200 0    50   Input ~ 0
C_CTRL
Text GLabel 10000 5000 0    50   Input ~ 0
OV_IN
Text GLabel 10000 5100 0    50   Input ~ 0
CARRY_IN
Text GLabel 10000 5200 0    50   Output ~ 0
CARRY_OUT
Text GLabel 6200 5500 2    50   Output ~ 0
USE_CARRY
Text GLabel 5850 2800 0    50   Input ~ 0
CLK
Text GLabel 7750 2800 0    50   Input ~ 0
~CLK~
Wire Wire Line
	5850 2800 5950 2800
Wire Wire Line
	7750 2800 7850 2800
Text GLabel 6200 5150 2    50   Output ~ 0
~OUT~
Text GLabel 6200 5300 2    50   Output ~ 0
LOAD
Text GLabel 6200 5400 2    50   Output ~ 0
SEL
Wire Wire Line
	6100 5500 6200 5500
Wire Wire Line
	6200 5400 6100 5400
Wire Wire Line
	6100 5300 6200 5300
Wire Wire Line
	6100 5200 6150 5200
Wire Wire Line
	6150 5200 6150 5150
Wire Wire Line
	6150 5150 6200 5150
Text GLabel 4000 1550 2    50   Output ~ 0
Z_OUT
Wire Wire Line
	4000 1550 3950 1550
Wire Wire Line
	3950 1550 3950 1800
Connection ~ 3950 1800
Wire Wire Line
	3950 1800 4450 1800
Text GLabel 10000 4900 0    50   Input ~ 0
Z_OUT
$Comp
L 74xx:74LS125 U6
U 1 1 5FFE8137
P 3000 5600
F 0 "U6" H 3000 5600 50  0000 C CNN
F 1 "74HC125" H 3000 5826 50  0000 C CNN
F 2 "" H 3000 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3000 5600 50  0001 C CNN
	1    3000 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 2 1 5FFEC7F6
P 3000 6100
F 0 "U6" H 3000 6100 50  0000 C CNN
F 1 "74HC125" H 3000 6326 50  0001 C CNN
F 2 "" H 3000 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3000 6100 50  0001 C CNN
	2    3000 6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 3 1 5FFECFFE
P 3000 6600
F 0 "U6" H 3000 6600 50  0000 C CNN
F 1 "74HC125" H 3000 6826 50  0001 C CNN
F 2 "" H 3000 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3000 6600 50  0001 C CNN
	3    3000 6600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 4 1 5FFED72B
P 3000 7100
F 0 "U6" H 3000 7100 50  0000 C CNN
F 1 "74HC125" H 3000 7326 50  0001 C CNN
F 2 "" H 3000 7100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 3000 7100 50  0001 C CNN
	4    3000 7100
	1    0    0    -1  
$EndComp
Text GLabel 3500 5600 2    50   Input ~ 0
BUS0
Text GLabel 3500 6100 2    50   Input ~ 0
BUS1
Text GLabel 3500 6600 2    50   Input ~ 0
BUS2
Text GLabel 3500 7100 2    50   Input ~ 0
BUS3
Wire Wire Line
	3300 5600 3500 5600
Wire Wire Line
	3300 6100 3500 6100
Wire Wire Line
	3300 6600 3500 6600
Wire Wire Line
	3300 7100 3500 7100
Text GLabel 7100 1800 2    50   Output ~ 0
Z_D
Text GLabel 7100 1900 2    50   Output ~ 0
V_D
Text GLabel 7100 2000 2    50   Output ~ 0
N_D
Text GLabel 7100 2100 2    50   Output ~ 0
C_D
Wire Wire Line
	6950 1800 7100 1800
Wire Wire Line
	6950 1900 7100 1900
Wire Wire Line
	6950 2000 7100 2000
Wire Wire Line
	6950 2100 7100 2100
Text GLabel 7700 1800 0    50   Input ~ 0
Z_D
Text GLabel 7700 1900 0    50   Input ~ 0
V_D
Text GLabel 7700 2000 0    50   Input ~ 0
N_D
Text GLabel 7700 2100 0    50   Input ~ 0
C_D
Wire Wire Line
	7700 1800 7850 1800
Wire Wire Line
	7700 1900 7850 1900
Wire Wire Line
	7700 2000 7850 2000
Wire Wire Line
	7700 2100 7850 2100
Text GLabel 2550 5600 0    50   Input ~ 0
Z_D
Text GLabel 2550 6100 0    50   Input ~ 0
V_D
Text GLabel 2550 6600 0    50   Input ~ 0
N_D
Text GLabel 2550 7100 0    50   Input ~ 0
C_D
Wire Wire Line
	2550 5600 2700 5600
Wire Wire Line
	2550 6100 2700 6100
Wire Wire Line
	2550 6600 2700 6600
Wire Wire Line
	2550 7100 2700 7100
Wire Wire Line
	3000 5850 2200 5850
Wire Wire Line
	2200 5850 2200 6350
Wire Wire Line
	2200 6350 3000 6350
Wire Wire Line
	3000 6850 2200 6850
Wire Wire Line
	2200 6850 2200 6350
Connection ~ 2200 6350
Wire Wire Line
	3000 7350 2200 7350
Wire Wire Line
	2200 7350 2200 6850
Connection ~ 2200 6850
Text GLabel 2050 5400 0    50   Input ~ 0
~OUT~
Wire Wire Line
	2050 5400 2200 5400
Wire Wire Line
	2200 5400 2200 5850
Connection ~ 2200 5850
$EndSCHEMATC
