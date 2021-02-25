EESchema Schematic File Version 4
LIBS:flags-cache
EELAYER 26 0
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
P 5950 5450
F 0 "J1" H 6050 5900 50  0000 C CNN
F 1 "Bus" H 6050 5000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5950 5450 50  0001 C CNN
F 3 "~" H 5950 5450 50  0001 C CNN
	1    5950 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FDBC542
P 6050 4300
F 0 "J2" H 6150 4500 50  0000 C CNN
F 1 "Control" H 6150 4050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6050 4300 50  0001 C CNN
F 3 "~" H 6050 4300 50  0001 C CNN
	1    6050 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5FDBCC63
P 7250 4300
F 0 "J3" H 7350 4500 50  0000 C CNN
F 1 "Sync" H 7350 4000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7250 4300 50  0001 C CNN
F 3 "~" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5FDBD1A4
P 10800 5650
F 0 "J4" H 10900 5350 50  0000 C CNN
F 1 "Power" H 10908 5840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 10800 5650 50  0001 C CNN
F 3 "~" H 10800 5650 50  0001 C CNN
	1    10800 5650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5FDBD7A5
P 8700 4200
F 0 "J6" H 8750 4400 50  0000 C CNN
F 1 "Ctrl_Out" H 8850 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8700 4200 50  0001 C CNN
F 3 "~" H 8700 4200 50  0001 C CNN
	1    8700 4200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5FDBE128
P 9850 4200
F 0 "J5" H 9950 4400 50  0000 C CNN
F 1 "Flags_Bus" H 9950 3900 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9850 4200 50  0001 C CNN
F 3 "~" H 9850 4200 50  0001 C CNN
	1    9850 4200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FDC948F
P 10350 5800
F 0 "#PWR0101" H 10350 5550 50  0001 C CNN
F 1 "GND" H 10355 5627 50  0000 C CNN
F 2 "" H 10350 5800 50  0001 C CNN
F 3 "" H 10350 5800 50  0001 C CNN
	1    10350 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5FDC9C73
P 10350 5400
F 0 "#PWR0102" H 10350 5250 50  0001 C CNN
F 1 "VCC" H 10365 5573 50  0000 C CNN
F 2 "" H 10350 5400 50  0001 C CNN
F 3 "" H 10350 5400 50  0001 C CNN
	1    10350 5400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FDCA76A
P 10050 5400
F 0 "#FLG0101" H 10050 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 5573 50  0000 C CNN
F 2 "" H 10050 5400 50  0001 C CNN
F 3 "~" H 10050 5400 50  0001 C CNN
	1    10050 5400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FDCAD03
P 10050 5800
F 0 "#FLG0102" H 10050 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 5973 50  0000 C CNN
F 2 "" H 10050 5800 50  0001 C CNN
F 3 "~" H 10050 5800 50  0001 C CNN
	1    10050 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10600 5550 10600 5450
Wire Wire Line
	10350 5400 10350 5450
Wire Wire Line
	10350 5450 10600 5450
Connection ~ 10600 5450
Connection ~ 10350 5450
Wire Wire Line
	10600 5650 10600 5750
Wire Wire Line
	10350 5800 10350 5750
Wire Wire Line
	10350 5750 10600 5750
Connection ~ 10600 5750
Connection ~ 10350 5750
Text GLabel 6200 5850 2    50   BiDi ~ 0
BUS0
Text GLabel 6200 5750 2    50   BiDi ~ 0
BUS1
Text GLabel 6200 5650 2    50   BiDi ~ 0
BUS2
Text GLabel 6200 5550 2    50   BiDi ~ 0
BUS3
Text GLabel 6200 5450 2    50   BiDi ~ 0
BUS4
Text GLabel 6200 5350 2    50   BiDi ~ 0
BUS5
Text GLabel 6200 5250 2    50   BiDi ~ 0
BUS6
Text GLabel 6200 5150 2    50   BiDi ~ 0
BUS7
Wire Wire Line
	6150 5150 6200 5150
Wire Wire Line
	6200 5250 6150 5250
Wire Wire Line
	6150 5350 6200 5350
Wire Wire Line
	6200 5450 6150 5450
Wire Wire Line
	6150 5550 6200 5550
Wire Wire Line
	6200 5650 6150 5650
Wire Wire Line
	6150 5750 6200 5750
Wire Wire Line
	6200 5850 6150 5850
$Comp
L 74xx:74HC02 U1
U 4 1 5FDAE108
P 2000 1200
F 0 "U1" H 2000 1200 50  0000 C CNN
F 1 "74HC02" H 2000 950 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 1200 50  0001 C CNN
	4    2000 1200
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HC02 U1
U 3 1 5FDB1B11
P 2000 1600
F 0 "U1" H 2000 1600 50  0000 C CNN
F 1 "74HC02" H 2000 1834 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 1600 50  0001 C CNN
	3    2000 1600
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HC02 U1
U 1 1 5FDB31F6
P 2000 2000
F 0 "U1" H 2000 2000 50  0000 C CNN
F 1 "74HC02" H 2000 2234 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 2000 50  0001 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC02 U1
U 2 1 5FDB4427
P 2000 2400
F 0 "U1" H 2000 2400 50  0000 C CNN
F 1 "74HC02" H 2000 2634 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 2000 2400 50  0001 C CNN
	2    2000 2400
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
U 2 1 5FDE00D8
P 2850 1400
F 0 "U2" H 2850 1400 50  0000 C CNN
F 1 "74HC08" H 2850 1634 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2850 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2850 1400 50  0001 C CNN
	2    2850 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 1 1 5FDE23AD
P 2850 2200
F 0 "U2" H 2850 2200 50  0000 C CNN
F 1 "74HC08" H 2850 2434 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2850 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2850 2200 50  0001 C CNN
	1    2850 2200
	1    0    0    1   
$EndComp
$Comp
L 74xx:74LS08 U2
U 4 1 5FDE4BA9
P 3600 1800
F 0 "U2" H 3600 1800 50  0000 C CNN
F 1 "74HC08" H 3600 2034 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3600 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3600 1800 50  0001 C CNN
	4    3600 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 3 1 5FDE6BF2
P 2750 3300
F 0 "U2" H 2750 3300 50  0000 C CNN
F 1 "74HC08" H 2750 3534 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2750 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 2750 3300 50  0001 C CNN
	3    2750 3300
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
P 6700 2400
F 0 "U4" H 6450 3150 50  0000 C CNN
F 1 "74HC173" H 6900 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6700 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 6700 2400 50  0001 C CNN
	1    6700 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U3
U 1 1 5FDFC5E9
P 4950 2400
F 0 "U3" H 4700 3150 50  0000 C CNN
F 1 "74HC157" H 5150 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4950 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4950 2400 50  0001 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1800 3950 1800
Text GLabel 4300 1800 0    50   Input ~ 0
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
	4350 2500 4450 2500
Wire Wire Line
	4350 2200 4450 2200
Wire Wire Line
	4350 1900 4450 1900
Wire Wire Line
	4350 2800 4450 2800
Wire Wire Line
	5450 2100 5500 2100
Text GLabel 4400 2400 0    50   Input ~ 0
CARRY_IN
Text GLabel 4300 2700 0    50   Input ~ 0
OV_IN
$Comp
L 74xx:74LS173 U5
U 1 1 5FE44004
P 8700 2400
F 0 "U5" H 8450 3150 50  0000 C CNN
F 1 "74HC173" H 8900 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 8700 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS173" H 8700 2400 50  0001 C CNN
	1    8700 2400
	1    0    0    -1  
$EndComp
Text GLabel 2200 4350 2    50   Output ~ 0
OV_IN
Text GLabel 2200 4500 2    50   Output ~ 0
CARRY_IN
$Comp
L Device:R R1
U 1 1 5FE50CBB
P 1800 4150
F 0 "R1" H 1870 4196 50  0000 L CNN
F 1 "10K" H 1870 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 4150 50  0001 C CNN
F 3 "~" H 1800 4150 50  0001 C CNN
	1    1800 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FE51B30
P 2100 4150
F 0 "R2" H 2170 4196 50  0000 L CNN
F 1 "10K" H 2170 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 4150 50  0001 C CNN
F 3 "~" H 2100 4150 50  0001 C CNN
	1    2100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3700 2100 4000
Wire Wire Line
	2100 4300 2100 4350
Wire Wire Line
	2100 4350 2200 4350
Text GLabel 8900 4850 2    50   Output ~ 0
CARRY_OUT
Wire Wire Line
	8750 4850 8900 4850
Text GLabel 8750 4850 0    50   Input ~ 0
USE_CARRY
Text GLabel 9450 2000 2    50   Output ~ 0
Z_CTRL
Text GLabel 9450 1800 2    50   Output ~ 0
V_CTRL
Text GLabel 9450 2100 2    50   Output ~ 0
N_CTRL
Text GLabel 9450 1900 2    50   Output ~ 0
C_CTRL
Wire Wire Line
	9200 1800 9450 1800
Wire Wire Line
	9200 1900 9450 1900
Wire Wire Line
	9200 2000 9450 2000
Wire Wire Line
	9200 2100 9450 2100
Text GLabel 1650 3700 0    50   Input ~ 0
V_CTRL
Text GLabel 1650 3900 0    50   Input ~ 0
C_CTRL
Text GLabel 8450 4300 0    50   Input ~ 0
Z_CTRL
Text GLabel 8450 4100 0    50   Input ~ 0
V_CTRL
Text GLabel 8450 4400 0    50   Input ~ 0
N_CTRL
Text GLabel 8450 4200 0    50   Input ~ 0
C_CTRL
Text GLabel 9550 4200 0    50   Output ~ 0
OV_IN
Text GLabel 9550 4300 0    50   Output ~ 0
CARRY_IN
Text GLabel 9550 4100 0    50   Input ~ 0
CARRY_OUT
Text GLabel 6400 4500 2    50   Output ~ 0
USE_CARRY
Text GLabel 6100 2800 0    50   Input ~ 0
CLK
Text GLabel 8100 2800 0    50   Input ~ 0
~CLK~
Wire Wire Line
	6100 2800 6200 2800
Wire Wire Line
	8100 2800 8200 2800
Text GLabel 6400 4100 2    50   Output ~ 0
~OUT~
Text GLabel 6400 4250 2    50   Output ~ 0
~LOAD~
Text GLabel 6400 4400 2    50   Output ~ 0
SEL
Wire Wire Line
	6250 4300 6350 4300
Wire Wire Line
	6250 4200 6300 4200
Text GLabel 4000 1550 2    50   Output ~ 0
Z_OUT
Wire Wire Line
	4000 1550 3950 1550
Wire Wire Line
	3950 1550 3950 1800
Text GLabel 9550 4400 0    50   Input ~ 0
Z_OUT
$Comp
L 74xx:74LS125 U6
U 1 1 5FFE8137
P 2450 5650
F 0 "U6" H 2450 5650 50  0000 C CNN
F 1 "74HC125" H 2450 5876 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 2450 5650 50  0001 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 2 1 5FFEC7F6
P 2450 6150
F 0 "U6" H 2450 6150 50  0000 C CNN
F 1 "74HC125" H 2450 6376 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 2450 6150 50  0001 C CNN
	2    2450 6150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 3 1 5FFECFFE
P 2450 6650
F 0 "U6" H 2450 6650 50  0000 C CNN
F 1 "74HC125" H 2450 6876 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 2450 6650 50  0001 C CNN
	3    2450 6650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 4 1 5FFED72B
P 2450 7150
F 0 "U6" H 2450 7150 50  0000 C CNN
F 1 "74HC125" H 2450 7376 50  0001 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2450 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 2450 7150 50  0001 C CNN
	4    2450 7150
	1    0    0    -1  
$EndComp
Text GLabel 2950 5650 2    50   Input ~ 0
BUS0
Text GLabel 2950 6150 2    50   Input ~ 0
BUS1
Text GLabel 2950 6650 2    50   Input ~ 0
BUS2
Text GLabel 2950 7150 2    50   Input ~ 0
BUS3
Wire Wire Line
	2750 5650 2950 5650
Wire Wire Line
	2750 6150 2950 6150
Wire Wire Line
	2750 6650 2950 6650
Wire Wire Line
	2750 7150 2950 7150
Text GLabel 7350 1800 2    50   Output ~ 0
Z_D
Text GLabel 7350 1900 2    50   Output ~ 0
V_D
Text GLabel 7350 2000 2    50   Output ~ 0
N_D
Text GLabel 7350 2100 2    50   Output ~ 0
C_D
Wire Wire Line
	7200 1800 7350 1800
Wire Wire Line
	7200 1900 7350 1900
Wire Wire Line
	7200 2000 7350 2000
Wire Wire Line
	7200 2100 7350 2100
Text GLabel 8050 2000 0    50   Input ~ 0
Z_D
Text GLabel 8050 1800 0    50   Input ~ 0
V_D
Text GLabel 8050 2100 0    50   Input ~ 0
N_D
Text GLabel 8050 1900 0    50   Input ~ 0
C_D
Wire Wire Line
	8050 1800 8200 1800
Wire Wire Line
	8050 1900 8200 1900
Wire Wire Line
	8050 2000 8200 2000
Wire Wire Line
	8050 2100 8200 2100
Text GLabel 2000 6150 0    50   Input ~ 0
Z_D
Text GLabel 2000 7150 0    50   Input ~ 0
V_D
Text GLabel 2000 5650 0    50   Input ~ 0
N_D
Text GLabel 2000 6650 0    50   Input ~ 0
C_D
Wire Wire Line
	2000 5650 2150 5650
Wire Wire Line
	2000 6150 2150 6150
Wire Wire Line
	2000 6650 2150 6650
Wire Wire Line
	2000 7150 2150 7150
Wire Wire Line
	2450 5900 1650 5900
Wire Wire Line
	1650 5900 1650 6400
Wire Wire Line
	1650 6400 2450 6400
Wire Wire Line
	2450 6900 1650 6900
Wire Wire Line
	1650 6900 1650 6400
Connection ~ 1650 6400
Wire Wire Line
	2450 7400 1650 7400
Wire Wire Line
	1650 7400 1650 6900
Connection ~ 1650 6900
Text GLabel 1500 5450 0    50   Input ~ 0
~OUT~
Wire Wire Line
	1500 5450 1650 5450
Wire Wire Line
	1650 5450 1650 5900
Connection ~ 1650 5900
Wire Wire Line
	1650 3700 2100 3700
$Comp
L power:GND #PWR0104
U 1 1 5FDBC107
P 6700 3300
F 0 "#PWR0104" H 6700 3050 50  0001 C CNN
F 1 "GND" H 6705 3127 50  0000 C CNN
F 2 "" H 6700 3300 50  0001 C CNN
F 3 "" H 6700 3300 50  0001 C CNN
	1    6700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5FDBC1B3
P 8700 3300
F 0 "#PWR0105" H 8700 3050 50  0001 C CNN
F 1 "GND" H 8705 3127 50  0000 C CNN
F 2 "" H 8700 3300 50  0001 C CNN
F 3 "" H 8700 3300 50  0001 C CNN
	1    8700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FDBC25F
P 6100 2300
F 0 "#PWR0106" H 6100 2050 50  0001 C CNN
F 1 "GND" H 6105 2127 50  0000 C CNN
F 2 "" H 6100 2300 50  0001 C CNN
F 3 "" H 6100 2300 50  0001 C CNN
	1    6100 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2400 6200 2300
Wire Wire Line
	6100 2300 6200 2300
Connection ~ 6200 2300
Wire Wire Line
	8200 2300 8200 2400
Wire Wire Line
	8200 2700 8200 2600
Wire Wire Line
	8200 2400 8200 2600
Connection ~ 8200 2400
Connection ~ 8200 2600
$Comp
L power:GND #PWR0107
U 1 1 5FDD6516
P 8100 2300
F 0 "#PWR0107" H 8100 2050 50  0001 C CNN
F 1 "GND" H 8105 2127 50  0000 C CNN
F 2 "" H 8100 2300 50  0001 C CNN
F 3 "" H 8100 2300 50  0001 C CNN
	1    8100 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2300 8200 2300
Connection ~ 8200 2300
Wire Wire Line
	6300 4200 6300 4100
Wire Wire Line
	6300 4100 6400 4100
Wire Wire Line
	6350 4300 6350 4250
Wire Wire Line
	6350 4250 6400 4250
Wire Wire Line
	6250 4400 6400 4400
Wire Wire Line
	6250 4500 6400 4500
Text GLabel 6150 2600 0    50   Input ~ 0
~LOAD~
Wire Wire Line
	6150 2600 6200 2600
Wire Wire Line
	6200 2600 6200 2700
Connection ~ 6200 2600
$Comp
L power:VCC #PWR0108
U 1 1 5FDF7CBD
P 4950 1500
F 0 "#PWR0108" H 4950 1350 50  0001 C CNN
F 1 "VCC" H 4965 1673 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 5FDF7DDC
P 6700 1500
F 0 "#PWR0109" H 6700 1350 50  0001 C CNN
F 1 "VCC" H 6715 1673 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 5FDF7E15
P 8700 1500
F 0 "#PWR0110" H 8700 1350 50  0001 C CNN
F 1 "VCC" H 8715 1673 50  0000 C CNN
F 2 "" H 8700 1500 50  0001 C CNN
F 3 "" H 8700 1500 50  0001 C CNN
	1    8700 1500
	1    0    0    -1  
$EndComp
Text GLabel 4350 3000 0    50   Input ~ 0
SEL
Wire Wire Line
	4350 3000 4450 3000
$Comp
L power:GND #PWR0103
U 1 1 5FDBC05B
P 4950 3500
F 0 "#PWR0103" H 4950 3250 50  0001 C CNN
F 1 "GND" H 4955 3327 50  0000 C CNN
F 2 "" H 4950 3500 50  0001 C CNN
F 3 "" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3450 4950 3450
Wire Wire Line
	4950 3450 4950 3400
Wire Wire Line
	4450 3100 4450 3450
Wire Wire Line
	4950 3500 4950 3450
Connection ~ 4950 3450
Wire Wire Line
	8450 4100 8500 4100
Wire Wire Line
	8450 4200 8500 4200
Wire Wire Line
	8450 4300 8500 4300
Wire Wire Line
	8450 4400 8500 4400
Wire Wire Line
	9550 4100 9650 4100
Wire Wire Line
	9550 4200 9650 4200
Wire Wire Line
	9550 4300 9650 4300
Wire Wire Line
	9550 4400 9650 4400
Text GLabel 7600 4100 2    50   Input ~ 0
CLK
Text GLabel 7600 4250 2    50   Input ~ 0
~CLK~
Text GLabel 6100 3000 0    50   Input ~ 0
RST
Text GLabel 8100 3000 0    50   Input ~ 0
RST
Wire Wire Line
	8100 3000 8200 3000
Wire Wire Line
	6100 3000 6200 3000
Text GLabel 7600 4400 2    50   Input ~ 0
RST
Wire Wire Line
	7450 4400 7600 4400
Wire Wire Line
	7450 4300 7550 4300
Wire Wire Line
	7550 4300 7550 4250
Wire Wire Line
	7550 4250 7600 4250
Wire Wire Line
	7450 4200 7500 4200
Wire Wire Line
	7500 4200 7500 4100
Wire Wire Line
	7500 4100 7600 4100
NoConn ~ 7450 4500
$Comp
L Device:LED D5
U 1 1 5FE15F76
P 4700 6050
F 0 "D5" H 4850 6000 50  0000 C CNN
F 1 "BOUT" H 4850 6100 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 6050 50  0001 C CNN
F 3 "~" H 4700 6050 50  0001 C CNN
	1    4700 6050
	1    0    0    1   
$EndComp
Text GLabel 4350 6050 0    50   Input ~ 0
~OUT~
Wire Wire Line
	4350 6050 4550 6050
$Comp
L Device:R R7
U 1 1 5FE7B088
P 5100 6050
F 0 "R7" V 5100 6000 50  0000 L CNN
F 1 "330" V 5200 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 6050 50  0001 C CNN
F 3 "~" H 5100 6050 50  0001 C CNN
	1    5100 6050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5FE7B869
P 5300 5900
F 0 "#PWR02" H 5300 5750 50  0001 C CNN
F 1 "VCC" H 5315 6073 50  0000 C CNN
F 2 "" H 5300 5900 50  0001 C CNN
F 3 "" H 5300 5900 50  0001 C CNN
	1    5300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6050 4950 6050
Wire Wire Line
	5250 6050 5300 6050
Wire Wire Line
	5300 6050 5300 5900
$Comp
L Device:LED D6
U 1 1 5FE89725
P 4700 6300
F 0 "D6" H 4850 6250 50  0000 C CNN
F 1 "LOAD" H 4850 6350 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 6300 50  0001 C CNN
F 3 "~" H 4700 6300 50  0001 C CNN
	1    4700 6300
	1    0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5FE89799
P 5100 6300
F 0 "R8" V 5100 6250 50  0000 L CNN
F 1 "330" V 5200 6250 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 6300 50  0001 C CNN
F 3 "~" H 5100 6300 50  0001 C CNN
	1    5100 6300
	0    1    1    0   
$EndComp
Text GLabel 4350 6300 0    50   Input ~ 0
~LOAD~
Wire Wire Line
	4350 6300 4550 6300
Wire Wire Line
	4850 6300 4950 6300
Wire Wire Line
	5250 6300 5300 6300
Wire Wire Line
	5300 6300 5300 6050
Connection ~ 5300 6050
Text GLabel 4350 6550 0    50   Input ~ 0
SEL
Text GLabel 4350 6800 0    50   Input ~ 0
USE_CARRY
$Comp
L Device:LED D7
U 1 1 5FE9F524
P 4700 6550
F 0 "D7" H 4850 6500 50  0000 C CNN
F 1 "BIN" H 4850 6600 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 6550 50  0001 C CNN
F 3 "~" H 4700 6550 50  0001 C CNN
	1    4700 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5FEA6CDB
P 5100 6550
F 0 "R9" V 5100 6500 50  0000 L CNN
F 1 "330" V 5200 6500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 6550 50  0001 C CNN
F 3 "~" H 5100 6550 50  0001 C CNN
	1    5100 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FEA6D45
P 5100 6800
F 0 "R10" V 5100 6750 50  0000 L CNN
F 1 "330" V 5200 6750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 6800 50  0001 C CNN
F 3 "~" H 5100 6800 50  0001 C CNN
	1    5100 6800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5FEA6DA9
P 4700 6800
F 0 "D8" H 4850 6750 50  0000 C CNN
F 1 "USC" H 4850 6850 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 6800 50  0001 C CNN
F 3 "~" H 4700 6800 50  0001 C CNN
	1    4700 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 6550 4550 6550
Wire Wire Line
	4850 6550 4950 6550
Wire Wire Line
	4350 6800 4550 6800
Wire Wire Line
	4850 6800 4950 6800
$Comp
L power:GND #PWR03
U 1 1 5FEC5291
P 5300 6950
F 0 "#PWR03" H 5300 6700 50  0001 C CNN
F 1 "GND" H 5305 6777 50  0000 C CNN
F 2 "" H 5300 6950 50  0001 C CNN
F 3 "" H 5300 6950 50  0001 C CNN
	1    5300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6550 5300 6550
Wire Wire Line
	5300 6550 5300 6800
Wire Wire Line
	5250 6800 5300 6800
Connection ~ 5300 6800
Wire Wire Line
	5300 6800 5300 6950
$Comp
L Device:LED D1
U 1 1 5FEDD2D0
P 4650 4200
F 0 "D1" H 4800 4150 50  0000 C CNN
F 1 "Z" H 4800 4250 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4200 50  0001 C CNN
F 3 "~" H 4650 4200 50  0001 C CNN
	1    4650 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5FEDD3C6
P 5050 4200
F 0 "R3" V 5050 4150 50  0000 L CNN
F 1 "330" V 5150 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 4200 50  0001 C CNN
F 3 "~" H 5050 4200 50  0001 C CNN
	1    5050 4200
	0    1    1    0   
$EndComp
Text GLabel 4300 4200 0    50   Input ~ 0
Z_D
Text GLabel 4300 4500 0    50   Input ~ 0
V_D
Text GLabel 4300 4800 0    50   Input ~ 0
N_D
Text GLabel 4300 5100 0    50   Input ~ 0
C_D
$Comp
L Device:LED D2
U 1 1 5FEDD56E
P 4650 4500
F 0 "D2" H 4800 4450 50  0000 C CNN
F 1 "V" H 4800 4550 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4500 50  0001 C CNN
F 3 "~" H 4650 4500 50  0001 C CNN
	1    4650 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5FEDD5D8
P 4650 4800
F 0 "D3" H 4800 4750 50  0000 C CNN
F 1 "N" H 4800 4850 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 4800 50  0001 C CNN
F 3 "~" H 4650 4800 50  0001 C CNN
	1    4650 4800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5FEDD63E
P 4650 5100
F 0 "D4" H 4800 5050 50  0000 C CNN
F 1 "C" H 4800 5150 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4650 5100 50  0001 C CNN
F 3 "~" H 4650 5100 50  0001 C CNN
	1    4650 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FEDD6A8
P 5050 4500
F 0 "R4" V 5050 4450 50  0000 L CNN
F 1 "330" V 5150 4450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 4500 50  0001 C CNN
F 3 "~" H 5050 4500 50  0001 C CNN
	1    5050 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5FEDD712
P 5050 4800
F 0 "R5" V 5050 4750 50  0000 L CNN
F 1 "330" V 5150 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 4800 50  0001 C CNN
F 3 "~" H 5050 4800 50  0001 C CNN
	1    5050 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5FEDD780
P 5050 5100
F 0 "R6" V 5050 5050 50  0000 L CNN
F 1 "330" V 5150 5050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 5100 50  0001 C CNN
F 3 "~" H 5050 5100 50  0001 C CNN
	1    5050 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4200 4500 4200
Wire Wire Line
	4800 4200 4900 4200
Wire Wire Line
	4300 4500 4500 4500
Wire Wire Line
	4800 4500 4900 4500
Wire Wire Line
	4300 4800 4500 4800
Wire Wire Line
	4800 4800 4900 4800
Wire Wire Line
	4300 5100 4500 5100
Wire Wire Line
	4800 5100 4900 5100
$Comp
L power:GND #PWR01
U 1 1 5FF22C6C
P 5300 5250
F 0 "#PWR01" H 5300 5000 50  0001 C CNN
F 1 "GND" H 5305 5077 50  0000 C CNN
F 2 "" H 5300 5250 50  0001 C CNN
F 3 "" H 5300 5250 50  0001 C CNN
	1    5300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4200 5300 4200
Wire Wire Line
	5300 4200 5300 4500
Wire Wire Line
	5200 4500 5300 4500
Connection ~ 5300 4500
Wire Wire Line
	5300 4500 5300 4800
Wire Wire Line
	5200 4800 5300 4800
Connection ~ 5300 4800
Wire Wire Line
	5300 4800 5300 5100
Wire Wire Line
	5200 5100 5300 5100
Connection ~ 5300 5100
Wire Wire Line
	5300 5100 5300 5250
$Comp
L Device:C C7
U 1 1 5FF9EE91
P 10350 5600
F 0 "C7" H 10350 5700 50  0000 L CNN
F 1 "10μF" H 10350 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10388 5450 50  0001 C CNN
F 3 "~" H 10350 5600 50  0001 C CNN
	1    10350 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5FF9F4DD
P 10050 5600
F 0 "C6" H 10050 5700 50  0000 L CNN
F 1 "100nF" H 10050 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10088 5450 50  0001 C CNN
F 3 "~" H 10050 5600 50  0001 C CNN
	1    10050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5450 10050 5450
Wire Wire Line
	10050 5400 10050 5450
Connection ~ 10050 5450
Wire Wire Line
	10350 5750 10050 5750
Wire Wire Line
	10050 5800 10050 5750
Connection ~ 10050 5750
$Comp
L Device:C C5
U 1 1 5FFC8F0E
P 9750 5600
F 0 "C5" H 9750 5700 50  0000 L CNN
F 1 "100nF" H 9750 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9788 5450 50  0001 C CNN
F 3 "~" H 9750 5600 50  0001 C CNN
	1    9750 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FFC8F78
P 9450 5600
F 0 "C4" H 9450 5700 50  0000 L CNN
F 1 "100nF" H 9450 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9488 5450 50  0001 C CNN
F 3 "~" H 9450 5600 50  0001 C CNN
	1    9450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5450 9750 5450
Wire Wire Line
	9750 5750 10050 5750
Wire Wire Line
	9450 5450 9750 5450
Connection ~ 9750 5450
Wire Wire Line
	9450 5750 9750 5750
Connection ~ 9750 5750
$Comp
L Device:C C3
U 1 1 5FFF3D79
P 9150 5600
F 0 "C3" H 9150 5700 50  0000 L CNN
F 1 "100nF" H 9150 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9188 5450 50  0001 C CNN
F 3 "~" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FFF3E07
P 8850 5600
F 0 "C2" H 8850 5700 50  0000 L CNN
F 1 "100nF" H 8850 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8888 5450 50  0001 C CNN
F 3 "~" H 8850 5600 50  0001 C CNN
	1    8850 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FFF3E8F
P 8550 5600
F 0 "C1" H 8550 5700 50  0000 L CNN
F 1 "100nF" H 8550 5500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8588 5450 50  0001 C CNN
F 3 "~" H 8550 5600 50  0001 C CNN
	1    8550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5450 8850 5450
Wire Wire Line
	8850 5450 9150 5450
Connection ~ 8850 5450
Wire Wire Line
	9150 5450 9450 5450
Connection ~ 9150 5450
Connection ~ 9450 5450
Wire Wire Line
	8550 5750 8850 5750
Wire Wire Line
	8850 5750 9150 5750
Connection ~ 8850 5750
Wire Wire Line
	9150 5750 9450 5750
Connection ~ 9150 5750
Connection ~ 9450 5750
Wire Wire Line
	1650 3900 1800 3900
Wire Wire Line
	1800 3900 1800 4000
Wire Wire Line
	1800 4300 1800 4500
Wire Wire Line
	1800 4500 2200 4500
$Comp
L Device:R R11
U 1 1 600DDD2A
P 7450 5250
F 0 "R11" V 7450 5200 50  0000 L CNN
F 1 "10K" V 7550 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 5250 50  0001 C CNN
F 3 "~" H 7450 5250 50  0001 C CNN
	1    7450 5250
	0    1    1    0   
$EndComp
Text GLabel 7200 5250 0    50   Output ~ 0
~OUT~
Text GLabel 7200 5450 0    50   Output ~ 0
~LOAD~
Text GLabel 7200 5650 0    50   Output ~ 0
SEL
Text GLabel 7200 5850 0    50   Output ~ 0
USE_CARRY
Text GLabel 7200 6050 0    50   Output ~ 0
RST
$Comp
L Device:R R12
U 1 1 600DED96
P 7450 5450
F 0 "R12" V 7450 5400 50  0000 L CNN
F 1 "10K" V 7550 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 5450 50  0001 C CNN
F 3 "~" H 7450 5450 50  0001 C CNN
	1    7450 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 600DEE12
P 7450 5650
F 0 "R13" V 7450 5600 50  0000 L CNN
F 1 "10K" V 7550 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 5650 50  0001 C CNN
F 3 "~" H 7450 5650 50  0001 C CNN
	1    7450 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 600DEE8C
P 7450 5850
F 0 "R14" V 7450 5800 50  0000 L CNN
F 1 "10K" V 7550 5800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 5850 50  0001 C CNN
F 3 "~" H 7450 5850 50  0001 C CNN
	1    7450 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 600DEF0A
P 7450 6050
F 0 "R15" V 7450 6000 50  0000 L CNN
F 1 "100K" V 7550 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7380 6050 50  0001 C CNN
F 3 "~" H 7450 6050 50  0001 C CNN
	1    7450 6050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 600E0C8A
P 7750 5150
F 0 "#PWR04" H 7750 5000 50  0001 C CNN
F 1 "VCC" H 7765 5323 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5250 7750 5250
Wire Wire Line
	7750 5250 7750 5150
Wire Wire Line
	7600 5450 7750 5450
Wire Wire Line
	7750 5450 7750 5250
Connection ~ 7750 5250
$Comp
L power:GND #PWR05
U 1 1 60103D71
P 7750 6150
F 0 "#PWR05" H 7750 5900 50  0001 C CNN
F 1 "GND" H 7755 5977 50  0000 C CNN
F 2 "" H 7750 6150 50  0001 C CNN
F 3 "" H 7750 6150 50  0001 C CNN
	1    7750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6050 7750 6050
Wire Wire Line
	7750 6050 7750 6150
Wire Wire Line
	7600 5850 7750 5850
Wire Wire Line
	7750 5850 7750 6050
Connection ~ 7750 6050
Wire Wire Line
	7600 5650 7750 5650
Wire Wire Line
	7750 5650 7750 5850
Connection ~ 7750 5850
Wire Wire Line
	7200 5250 7300 5250
Wire Wire Line
	7300 5450 7200 5450
Wire Wire Line
	7200 5650 7300 5650
Wire Wire Line
	7300 5850 7200 5850
Wire Wire Line
	7200 6050 7300 6050
$Comp
L 74xx:74HC02 U1
U 5 1 5FEB1B31
P 9600 3100
F 0 "U1" H 9600 3100 50  0000 C CNN
F 1 "74HC02" H 9450 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 9600 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc02" H 9600 3100 50  0001 C CNN
	5    9600 3100
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U2
U 5 1 5FEB259B
P 10050 3100
F 0 "U2" H 10050 3100 50  0000 C CNN
F 1 "74HC08" H 10200 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10050 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10050 3100 50  0001 C CNN
	5    10050 3100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS125 U6
U 5 1 5FEB2FF0
P 10500 3100
F 0 "U6" H 10500 3100 50  0000 C CNN
F 1 "74HC125" H 10700 3450 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10500 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS125" H 10500 3100 50  0001 C CNN
	5    10500 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FEC07F8
P 10050 3700
F 0 "#PWR0111" H 10050 3450 50  0001 C CNN
F 1 "GND" H 10055 3527 50  0000 C CNN
F 2 "" H 10050 3700 50  0001 C CNN
F 3 "" H 10050 3700 50  0001 C CNN
	1    10050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5FEC0911
P 10050 2500
F 0 "#PWR0112" H 10050 2350 50  0001 C CNN
F 1 "VCC" H 10065 2673 50  0000 C CNN
F 2 "" H 10050 2500 50  0001 C CNN
F 3 "" H 10050 2500 50  0001 C CNN
	1    10050 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2600 10050 2600
Wire Wire Line
	10500 2600 10050 2600
Connection ~ 10050 2600
Wire Wire Line
	10050 2600 10050 2500
Wire Wire Line
	9600 3600 10050 3600
Wire Wire Line
	10050 3600 10500 3600
Connection ~ 10050 3600
Wire Wire Line
	10050 3600 10050 3700
Text GLabel 4300 2100 0    50   Input ~ 0
Z_OUT
Wire Wire Line
	4300 2100 4450 2100
Wire Wire Line
	4300 1800 4450 1800
Text GLabel 6150 1800 0    50   Input ~ 0
Z_I
Text GLabel 6150 1900 0    50   Input ~ 0
V_I
Text GLabel 6150 2000 0    50   Input ~ 0
N_I
Text GLabel 6150 2100 0    50   Input ~ 0
C_I
Wire Wire Line
	6150 1800 6200 1800
Wire Wire Line
	6200 1900 6150 1900
Wire Wire Line
	6150 2000 6200 2000
Wire Wire Line
	6200 2100 6150 2100
Text GLabel 5500 2100 2    50   Output ~ 0
Z_I
Text GLabel 5500 2700 2    50   Output ~ 0
V_I
Text GLabel 5500 1800 2    50   Output ~ 0
N_I
Text GLabel 5500 2400 2    50   Output ~ 0
C_I
Wire Wire Line
	5450 1800 5500 1800
Wire Wire Line
	5450 2400 5500 2400
Wire Wire Line
	5450 2700 5500 2700
Wire Wire Line
	4300 2700 4450 2700
Wire Wire Line
	4400 2400 4450 2400
$EndSCHEMATC
