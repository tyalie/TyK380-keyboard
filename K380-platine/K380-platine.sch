EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Transistor_FET:DMG2301L Q1
U 1 1 628FF992
P 1550 9250
F 0 "Q1" H 1755 9296 50  0000 L CNN
F 1 "PMost Enc FET -20V" H 1755 9205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 9175 50  0001 L CIN
F 3 "" H 1550 9250 50  0001 L CNN
	1    1550 9250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:XC6220B331MR U1
U 1 1 62900B92
P 2800 9750
F 0 "U1" H 2800 10117 50  0000 C CNN
F 1 "XC6220B331MR" H 2800 10026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2800 9750 50  0001 C CNN
F 3 "https://www.torexsemi.com/file/xc6220/XC6220.pdf" H 3550 8750 50  0001 C CNN
	1    2800 9750
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U2
U 1 1 62901F10
P 6050 9650
F 0 "U2" H 5800 9900 50  0000 C CNN
F 1 "MCP73831-2-OT" H 6050 10100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 6100 9400 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 5900 9600 50  0001 C CNN
	1    6050 9650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x23 J2
U 1 1 62906B4C
P 7650 6100
F 0 "J2" V 7775 6096 50  0000 C CNN
F 1 "Conn_01x23" V 7866 6096 50  0000 C CNN
F 2 "Connector_FFC-FPC:TE_2-84952-3_1x23-1MP_P1.0mm_Horizontal" H 7650 6100 50  0001 C CNN
F 3 "~" H 7650 6100 50  0001 C CNN
	1    7650 6100
	0    1    1    0   
$EndComp
$Comp
L custom_footprints:MicroMod-M.2E J3
U 1 1 62919FF9
P 2750 1100
F 0 "J3" H 2700 1365 50  0000 C CNN
F 1 "MicroMod-M.2E" H 2700 1274 50  0000 C CNN
F 2 "SparkFun MicroMod:M.2-CONNECTOR-E" H 2750 1100 50  0001 C CNN
F 3 "" H 2750 1100 50  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
Text GLabel 1150 8950 1    50   Input ~ 0
VUSB
Text GLabel 1650 8950 1    50   Input ~ 0
VBAT
Wire Wire Line
	1650 8950 1650 9050
Wire Wire Line
	1150 8950 1150 9250
Wire Wire Line
	1150 9250 1350 9250
$Comp
L Diode:MBR1020VL D1
U 1 1 6291C128
P 1400 9650
F 0 "D1" H 1400 9434 50  0000 C CNN
F 1 "MBR1020VL" H 1400 9525 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1400 9475 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBR1020VL-D.PDF" H 1400 9650 50  0001 C CNN
	1    1400 9650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 9250 1150 9650
Wire Wire Line
	1150 9650 1250 9650
Connection ~ 1150 9250
Wire Wire Line
	1550 9650 1650 9650
Wire Wire Line
	1650 9450 1650 9650
Connection ~ 1650 9650
$Comp
L power:GND #PWR01
U 1 1 6291DDB3
P 1150 10350
F 0 "#PWR01" H 1150 10100 50  0001 C CNN
F 1 "GND" H 1155 10177 50  0000 C CNN
F 2 "" H 1150 10350 50  0001 C CNN
F 3 "" H 1150 10350 50  0001 C CNN
	1    1150 10350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6291E2C0
P 1650 10350
F 0 "#PWR02" H 1650 10100 50  0001 C CNN
F 1 "GND" H 1655 10177 50  0000 C CNN
F 2 "" H 1650 10350 50  0001 C CNN
F 3 "" H 1650 10350 50  0001 C CNN
	1    1650 10350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6291EE01
P 2800 10350
F 0 "#PWR03" H 2800 10100 50  0001 C CNN
F 1 "GND" H 2805 10177 50  0000 C CNN
F 2 "" H 2800 10350 50  0001 C CNN
F 3 "" H 2800 10350 50  0001 C CNN
	1    2800 10350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6291FC09
P 1650 10000
F 0 "C1" H 1742 10046 50  0000 L CNN
F 1 "10uF" H 1742 9955 50  0000 L CNN
F 2 "" H 1650 10000 50  0001 C CNN
F 3 "~" H 1650 10000 50  0001 C CNN
	1    1650 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 9650 1650 9900
$Comp
L Device:R_Small R1
U 1 1 62921037
P 1150 10000
F 0 "R1" H 1209 10046 50  0000 L CNN
F 1 "100K" H 1209 9955 50  0000 L CNN
F 2 "" H 1150 10000 50  0001 C CNN
F 3 "~" H 1150 10000 50  0001 C CNN
	1    1150 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 9900 1150 9650
Connection ~ 1150 9650
$Comp
L Device:R_Small R2
U 1 1 6292357B
P 2100 9850
F 0 "R2" V 1904 9850 50  0000 C CNN
F 1 "100K" V 1995 9850 50  0000 C CNN
F 2 "" H 2100 9850 50  0001 C CNN
F 3 "~" H 2100 9850 50  0001 C CNN
	1    2100 9850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 9850 2300 9850
Wire Wire Line
	2000 9850 1950 9850
Wire Wire Line
	1950 9850 1950 9650
Wire Wire Line
	1950 9650 2300 9650
Wire Wire Line
	1950 9650 1650 9650
Connection ~ 1950 9650
Wire Wire Line
	2800 10350 2800 10150
Wire Wire Line
	1650 10350 1650 10100
Wire Wire Line
	1150 10350 1150 10100
Text GLabel 3650 9650 2    50   Input ~ 0
V3.3
Wire Wire Line
	3300 9650 3400 9650
$Comp
L Device:C_Small C2
U 1 1 62927B5D
P 3400 10000
F 0 "C2" H 3492 10046 50  0000 L CNN
F 1 "4.7uF" H 3492 9955 50  0000 L CNN
F 2 "" H 3400 10000 50  0001 C CNN
F 3 "~" H 3400 10000 50  0001 C CNN
	1    3400 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 9900 3400 9650
Connection ~ 3400 9650
Wire Wire Line
	3400 9650 3650 9650
$Comp
L power:GND #PWR04
U 1 1 62928832
P 3400 10350
F 0 "#PWR04" H 3400 10100 50  0001 C CNN
F 1 "GND" H 3405 10177 50  0000 C CNN
F 2 "" H 3400 10350 50  0001 C CNN
F 3 "" H 3400 10350 50  0001 C CNN
	1    3400 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 10350 3400 10100
Text Notes 1800 8300 0    79   ~ 0
Power And Filtering
Text Notes 2100 8400 0    59   ~ 0
(1A output)
Wire Notes Line
	4350 11200 4350 7950
Wire Wire Line
	6050 9350 6050 9300
Wire Wire Line
	6050 9300 5650 9300
Text GLabel 5650 9300 0    59   Input ~ 0
VUSB
Text GLabel 7100 9250 1    59   Input ~ 0
VBAT
Wire Wire Line
	7100 9550 7100 9250
$Comp
L power:GND #PWR05
U 1 1 62933AC5
P 6050 10200
F 0 "#PWR05" H 6050 9950 50  0001 C CNN
F 1 "GND" H 6055 10027 50  0000 C CNN
F 2 "" H 6050 10200 50  0001 C CNN
F 3 "" H 6050 10200 50  0001 C CNN
	1    6050 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 10200 6050 10150
$Comp
L Device:R_Small R3
U 1 1 6293427B
P 5550 9950
F 0 "R3" H 5609 9996 50  0000 L CNN
F 1 "RProg" H 5609 9905 50  0000 L CNN
F 2 "" H 5550 9950 50  0001 C CNN
F 3 "~" H 5550 9950 50  0001 C CNN
	1    5550 9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 9750 5650 9750
Wire Wire Line
	5550 10150 6050 10150
Connection ~ 6050 10150
Wire Wire Line
	6050 10150 6050 9950
Wire Wire Line
	5550 9850 5550 9750
Wire Wire Line
	5550 10150 5550 10050
Text Notes 5450 10150 2    59   ~ 0
10K = 100mA\n5K = 200mA\n2K = 500mA\nI = 1000/R ...
$Comp
L Device:C_Small C3
U 1 1 62936FA6
P 6900 9850
F 0 "C3" H 6992 9896 50  0000 L CNN
F 1 "10uF" H 6992 9805 50  0000 L CNN
F 2 "" H 6900 9850 50  0001 C CNN
F 3 "~" H 6900 9850 50  0001 C CNN
	1    6900 9850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6293761F
P 6900 10200
F 0 "#PWR06" H 6900 9950 50  0001 C CNN
F 1 "GND" H 6905 10027 50  0000 C CNN
F 2 "" H 6900 10200 50  0001 C CNN
F 3 "" H 6900 10200 50  0001 C CNN
	1    6900 10200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 9750 6900 9550
Wire Wire Line
	6900 10200 6900 9950
Text GLabel 6600 10250 3    59   Input ~ 0
CStat
Text Notes 5650 8300 0    79   ~ 0
LIPO Charging
Wire Wire Line
	6450 9750 6600 9750
Wire Wire Line
	6600 9750 6600 10250
Wire Wire Line
	7100 9550 6900 9550
Connection ~ 6900 9550
Wire Wire Line
	6900 9550 6450 9550
Wire Notes Line
	7600 11200 7600 7950
$Comp
L power:GND #PWR?
U 1 1 62947FF0
P 8650 10750
F 0 "#PWR?" H 8650 10500 50  0001 C CNN
F 1 "GND" H 8655 10577 50  0000 C CNN
F 2 "" H 8650 10750 50  0001 C CNN
F 3 "" H 8650 10750 50  0001 C CNN
	1    8650 10750
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J?
U 1 1 62949AC6
P 8650 9750
F 0 "J?" H 8757 10617 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 8757 10526 50  0000 C CNN
F 2 "" H 8800 9750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 8800 9750 50  0001 C CNN
	1    8650 9750
	1    0    0    -1  
$EndComp
Text GLabel 9450 9150 2    59   Input ~ 0
VUSB
$Comp
L power:GND #PWR?
U 1 1 6295443F
P 9350 8750
F 0 "#PWR?" H 9350 8500 50  0001 C CNN
F 1 "GND" H 9355 8577 50  0000 C CNN
F 2 "" H 9350 8750 50  0001 C CNN
F 3 "" H 9350 8750 50  0001 C CNN
	1    9350 8750
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 62955F4D
P 9350 8950
F 0 "D?" V 9304 9030 50  0000 L CNN
F 1 "TVS 5V" V 9395 9030 50  0000 L CNN
F 2 "" H 9350 8950 50  0001 C CNN
F 3 "~" H 9350 8950 50  0001 C CNN
	1    9350 8950
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 10650 8650 10700
$Comp
L Device:R R?
U 1 1 62957FD7
P 8500 10700
F 0 "R?" V 8293 10700 50  0000 C CNN
F 1 "1M" V 8384 10700 50  0000 C CNN
F 2 "" V 8430 10700 50  0001 C CNN
F 3 "~" H 8500 10700 50  0001 C CNN
	1    8500 10700
	0    1    1    0   
$EndComp
Connection ~ 8650 10700
Wire Wire Line
	8650 10700 8650 10750
Wire Wire Line
	8350 10700 8350 10650
$Comp
L Device:R R?
U 1 1 62959392
P 9850 9350
F 0 "R?" V 9643 9350 50  0000 C CNN
F 1 "5.1k 20%" V 9734 9350 50  0000 C CNN
F 2 "" V 9780 9350 50  0001 C CNN
F 3 "~" H 9850 9350 50  0001 C CNN
	1    9850 9350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 62959A27
P 9850 9450
F 0 "R?" V 10050 9450 50  0000 C CNN
F 1 "5.1k 20%" V 9950 9450 50  0000 C CNN
F 2 "" V 9780 9450 50  0001 C CNN
F 3 "~" H 9850 9450 50  0001 C CNN
	1    9850 9450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6295B4CE
P 10050 9400
F 0 "#PWR?" H 10050 9150 50  0001 C CNN
F 1 "GND" V 10055 9272 50  0000 R CNN
F 2 "" H 10050 9400 50  0001 C CNN
F 3 "" H 10050 9400 50  0001 C CNN
	1    10050 9400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10000 9350 10050 9350
Wire Wire Line
	10050 9450 10000 9450
Wire Wire Line
	9250 9350 9700 9350
Wire Wire Line
	9250 9450 9700 9450
Wire Wire Line
	9350 8800 9350 8750
Wire Wire Line
	9250 9150 9350 9150
Wire Wire Line
	9350 9150 9350 9100
Connection ~ 9350 9150
Wire Wire Line
	9350 9150 9450 9150
Wire Wire Line
	10050 9350 10050 9400
Connection ~ 10050 9400
Wire Wire Line
	10050 9400 10050 9450
Text GLabel 9400 9700 2    59   Input ~ 0
D-
Text GLabel 9400 9900 2    59   Input ~ 0
D+
Wire Wire Line
	9250 9950 9350 9950
Wire Wire Line
	9250 9850 9350 9850
Wire Wire Line
	9250 9750 9350 9750
Wire Wire Line
	9250 9650 9350 9650
Wire Wire Line
	9350 9650 9350 9700
Wire Wire Line
	9350 9850 9350 9900
Wire Wire Line
	9350 9700 9400 9700
Connection ~ 9350 9700
Wire Wire Line
	9350 9700 9350 9750
Wire Wire Line
	9350 9900 9400 9900
Connection ~ 9350 9900
Wire Wire Line
	9350 9900 9350 9950
Text Notes 8850 8300 0    79   ~ 0
USB Port
Wire Notes Line
	10750 7950 10750 11250
Wire Notes Line
	500  7950 10750 7950
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62903AF0
P 1150 6450
F 0 "J1" V 1022 6530 50  0000 L CNN
F 1 "JST-PH 2" V 1113 6530 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 1150 6450 50  0001 C CNN
F 3 "~" H 1150 6450 50  0001 C CNN
	1    1150 6450
	-1   0    0    1   
$EndComp
$EndSCHEMATC
