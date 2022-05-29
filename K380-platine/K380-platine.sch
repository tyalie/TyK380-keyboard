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
P 1550 9650
F 0 "Q1" H 1755 9696 50  0000 L CNN
F 1 "PMost Enc FET -20V" H 1755 9605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 9575 50  0001 L CIN
F 3 "" H 1550 9650 50  0001 L CNN
	1    1550 9650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:XC6220B331MR U1
U 1 1 62900B92
P 2800 10150
F 0 "U1" H 2800 10517 50  0000 C CNN
F 1 "XC6220B331MR" H 2800 10426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2800 10150 50  0001 C CNN
F 3 "https://www.torexsemi.com/file/xc6220/XC6220.pdf" H 3550 9150 50  0001 C CNN
	1    2800 10150
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
L custom_footprints:MicroMod-M.2E J3
U 1 1 62919FF9
P 5050 2350
F 0 "J3" H 5000 2615 50  0000 C CNN
F 1 "MicroMod-M.2E" H 5000 2524 50  0000 C CNN
F 2 "SparkFun MicroMod:M.2-CONNECTOR-E" H 5050 2350 50  0001 C CNN
F 3 "" H 5050 2350 50  0001 C CNN
	1    5050 2350
	1    0    0    -1  
$EndComp
Text GLabel 1150 9350 1    50   Input ~ 0
VUSB
Text GLabel 1650 8850 1    50   Input ~ 0
VBAT
Wire Wire Line
	1650 9350 1650 9450
Wire Wire Line
	1150 9350 1150 9650
Wire Wire Line
	1150 9650 1350 9650
$Comp
L Diode:MBR1020VL D1
U 1 1 6291C128
P 1400 10050
F 0 "D1" H 1400 9834 50  0000 C CNN
F 1 "MBR1020VL" H 1400 9925 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 1400 9875 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MBR1020VL-D.PDF" H 1400 10050 50  0001 C CNN
	1    1400 10050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 9650 1150 10050
Wire Wire Line
	1150 10050 1250 10050
Connection ~ 1150 9650
Wire Wire Line
	1550 10050 1650 10050
Wire Wire Line
	1650 9850 1650 10050
Connection ~ 1650 10050
$Comp
L power:GND #PWR01
U 1 1 6291DDB3
P 1150 10750
F 0 "#PWR01" H 1150 10500 50  0001 C CNN
F 1 "GND" H 1155 10577 50  0000 C CNN
F 2 "" H 1150 10750 50  0001 C CNN
F 3 "" H 1150 10750 50  0001 C CNN
	1    1150 10750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6291E2C0
P 1650 10750
F 0 "#PWR02" H 1650 10500 50  0001 C CNN
F 1 "GND" H 1655 10577 50  0000 C CNN
F 2 "" H 1650 10750 50  0001 C CNN
F 3 "" H 1650 10750 50  0001 C CNN
	1    1650 10750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6291EE01
P 2800 10750
F 0 "#PWR03" H 2800 10500 50  0001 C CNN
F 1 "GND" H 2805 10577 50  0000 C CNN
F 2 "" H 2800 10750 50  0001 C CNN
F 3 "" H 2800 10750 50  0001 C CNN
	1    2800 10750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6291FC09
P 1650 10400
F 0 "C1" H 1742 10446 50  0000 L CNN
F 1 "10uF" H 1742 10355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1650 10400 50  0001 C CNN
F 3 "~" H 1650 10400 50  0001 C CNN
	1    1650 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 10050 1650 10300
$Comp
L Device:R_Small R1
U 1 1 62921037
P 1150 10400
F 0 "R1" H 1209 10446 50  0000 L CNN
F 1 "100K" H 1209 10355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1150 10400 50  0001 C CNN
F 3 "~" H 1150 10400 50  0001 C CNN
	1    1150 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 10300 1150 10050
Connection ~ 1150 10050
$Comp
L Device:R_Small R2
U 1 1 6292357B
P 2100 10250
F 0 "R2" V 1904 10250 50  0000 C CNN
F 1 "100K" V 1995 10250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 2100 10250 50  0001 C CNN
F 3 "~" H 2100 10250 50  0001 C CNN
	1    2100 10250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 10250 2300 10250
Wire Wire Line
	2000 10250 1950 10250
Wire Wire Line
	1950 10250 1950 10050
Wire Wire Line
	1950 10050 2300 10050
Wire Wire Line
	1950 10050 1650 10050
Connection ~ 1950 10050
Wire Wire Line
	2800 10750 2800 10550
Wire Wire Line
	1650 10750 1650 10500
Wire Wire Line
	1150 10750 1150 10500
Text GLabel 3650 10050 2    50   Input ~ 0
V3.3
Wire Wire Line
	3300 10050 3400 10050
$Comp
L Device:C_Small C2
U 1 1 62927B5D
P 3400 10400
F 0 "C2" H 3492 10446 50  0000 L CNN
F 1 "4.7uF" H 3492 10355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3400 10400 50  0001 C CNN
F 3 "~" H 3400 10400 50  0001 C CNN
	1    3400 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 10300 3400 10050
Connection ~ 3400 10050
Wire Wire Line
	3400 10050 3650 10050
$Comp
L power:GND #PWR04
U 1 1 62928832
P 3400 10750
F 0 "#PWR04" H 3400 10500 50  0001 C CNN
F 1 "GND" H 3405 10577 50  0000 C CNN
F 2 "" H 3400 10750 50  0001 C CNN
F 3 "" H 3400 10750 50  0001 C CNN
	1    3400 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 10750 3400 10500
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
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 5550 9950 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6900 9850 50  0001 C CNN
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
CSTAT
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
L power:GND #PWR0101
U 1 1 62947FF0
P 8650 10750
F 0 "#PWR0101" H 8650 10500 50  0001 C CNN
F 1 "GND" H 8655 10577 50  0000 C CNN
F 2 "" H 8650 10750 50  0001 C CNN
F 3 "" H 8650 10750 50  0001 C CNN
	1    8650 10750
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_C_Receptacle_USB2.0 J4
U 1 1 62949AC6
P 8650 9750
F 0 "J4" H 8757 10617 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 8757 10526 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_GCT_USB4085" H 8800 9750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 8800 9750 50  0001 C CNN
	1    8650 9750
	1    0    0    -1  
$EndComp
Text GLabel 9450 9150 2    59   Input ~ 0
VUSB
$Comp
L power:GND #PWR0102
U 1 1 6295443F
P 9350 8750
F 0 "#PWR0102" H 9350 8500 50  0001 C CNN
F 1 "GND" H 9355 8577 50  0000 C CNN
F 2 "" H 9350 8750 50  0001 C CNN
F 3 "" H 9350 8750 50  0001 C CNN
	1    9350 8750
	-1   0    0    1   
$EndComp
$Comp
L Device:D D2
U 1 1 62955F4D
P 9350 8950
F 0 "D2" V 9304 9030 50  0000 L CNN
F 1 "TVS 5V" V 9395 9030 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 9350 8950 50  0001 C CNN
F 3 "~" H 9350 8950 50  0001 C CNN
	1    9350 8950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 62959392
P 9850 9350
F 0 "R5" V 9643 9350 50  0000 C CNN
F 1 "5.1k 20%" V 9734 9350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9780 9350 50  0001 C CNN
F 3 "~" H 9850 9350 50  0001 C CNN
	1    9850 9350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 62959A27
P 9850 9450
F 0 "R6" V 10050 9450 50  0000 C CNN
F 1 "5.1k 20%" V 9950 9450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9780 9450 50  0001 C CNN
F 3 "~" H 9850 9450 50  0001 C CNN
	1    9850 9450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6295B4CE
P 10050 9400
F 0 "#PWR0103" H 10050 9150 50  0001 C CNN
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
Text GLabel 9400 9700 2    59   BiDi ~ 0
D-
Text GLabel 9400 9900 2    59   BiDi ~ 0
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
Text GLabel 11750 9250 1    50   Output ~ 0
VBAT
$Comp
L power:GND #PWR0104
U 1 1 6297DB21
P 11750 9950
F 0 "#PWR0104" H 11750 9700 50  0001 C CNN
F 1 "GND" H 11755 9777 50  0000 C CNN
F 2 "" H 11750 9950 50  0001 C CNN
F 3 "" H 11750 9950 50  0001 C CNN
	1    11750 9950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DSG Q2
U 1 1 62992380
P 1750 9150
F 0 "Q2" H 1955 9104 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 1955 9195 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 9250 50  0001 C CNN
F 3 "~" H 1750 9150 50  0001 C CNN
	1    1750 9150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 62995894
P 2150 9150
F 0 "R7" V 2050 9200 50  0000 C CNN
F 1 "100K" V 2266 9150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2080 9150 50  0001 C CNN
F 3 "~" H 2150 9150 50  0001 C CNN
	1    2150 9150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 8950 1650 8900
Connection ~ 1650 8900
Wire Wire Line
	1650 8900 1650 8850
$Comp
L power:GND #PWR07
U 1 1 629C1EB6
P 12050 9950
F 0 "#PWR07" H 12050 9700 50  0001 C CNN
F 1 "GND" H 12055 9777 50  0000 C CNN
F 2 "" H 12050 9950 50  0001 C CNN
F 3 "" H 12050 9950 50  0001 C CNN
	1    12050 9950
	1    0    0    -1  
$EndComp
Text GLabel 12050 9250 1    50   Input ~ 0
VBAT
$Comp
L Device:R_Small R8
U 1 1 629C2DD2
P 12050 9400
F 0 "R8" H 12109 9446 50  0000 L CNN
F 1 "100K" H 12109 9355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 12050 9400 50  0001 C CNN
F 3 "~" H 12050 9400 50  0001 C CNN
	1    12050 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 629C30FE
P 12050 9800
F 0 "R9" H 12109 9846 50  0000 L CNN
F 1 "100K" H 12109 9755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 12050 9800 50  0001 C CNN
F 3 "~" H 12050 9800 50  0001 C CNN
	1    12050 9800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62903AF0
P 11500 9650
F 0 "J1" V 11372 9730 50  0000 L CNN
F 1 "JST-PH 2" V 11463 9730 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 11500 9650 50  0001 C CNN
F 3 "~" H 11500 9650 50  0001 C CNN
	1    11500 9650
	-1   0    0    1   
$EndComp
Wire Wire Line
	11700 9650 11750 9650
Wire Wire Line
	11750 9650 11750 9950
Wire Wire Line
	11700 9550 11750 9550
Wire Wire Line
	11750 9250 11750 9550
Wire Wire Line
	12050 9300 12050 9250
Wire Wire Line
	12050 9950 12050 9900
Text GLabel 12250 9600 2    50   Input ~ 0
VDIV
Wire Wire Line
	12050 9700 12050 9600
Wire Wire Line
	12050 9600 12250 9600
Connection ~ 12050 9600
Wire Wire Line
	12050 9600 12050 9500
Text Notes 11300 8300 0    79   ~ 0
JST PH LiPo Input
Wire Notes Line
	13000 7950 13000 11200
$Comp
L Switch:SW_DPST_x2 SW1
U 1 1 629D6AE3
P 2150 8900
F 0 "SW1" H 2150 9135 50  0000 C CNN
F 1 "EG1215AA" H 2150 9044 50  0000 C CNN
F 2 "LibraryLoader:EG1215AA" H 2150 8900 50  0001 C CNN
F 3 "~" H 2150 8900 50  0001 C CNN
	1    2150 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 8900 1950 8900
Wire Wire Line
	1950 9150 2000 9150
Wire Wire Line
	2300 9150 2500 9150
Wire Wire Line
	2500 9150 2500 8900
Wire Wire Line
	2500 8900 2350 8900
$Comp
L power:GND #PWR09
U 1 1 629DCBD7
P 14000 9300
F 0 "#PWR09" H 14000 9050 50  0001 C CNN
F 1 "GND" H 14005 9127 50  0000 C CNN
F 2 "" H 14000 9300 50  0001 C CNN
F 3 "" H 14000 9300 50  0001 C CNN
	1    14000 9300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 629DE056
P 14300 9200
F 0 "SW2" H 14300 9485 50  0000 C CNN
F 1 "SW_Push" H 14300 9394 50  0000 C CNN
F 2 "LibraryLoader:MJTP1140AAUTR" H 14300 9400 50  0001 C CNN
F 3 "~" H 14300 9400 50  0001 C CNN
	1    14300 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 9200 14100 9200
Text GLabel 14700 9200 2    79   Input ~ 0
RESET
$Comp
L power:GND #PWR010
U 1 1 629E30F9
P 14000 10150
F 0 "#PWR010" H 14000 9900 50  0001 C CNN
F 1 "GND" H 14005 9977 50  0000 C CNN
F 2 "" H 14000 10150 50  0001 C CNN
F 3 "" H 14000 10150 50  0001 C CNN
	1    14000 10150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 629E3139
P 14300 10050
F 0 "SW3" H 14300 10335 50  0000 C CNN
F 1 "SW_Push" H 14300 10244 50  0000 C CNN
F 2 "LibraryLoader:MJTP1140AAUTR" H 14300 10250 50  0001 C CNN
F 3 "~" H 14300 10250 50  0001 C CNN
	1    14300 10050
	1    0    0    -1  
$EndComp
Text GLabel 14700 10050 2    79   Input ~ 0
BOOT
Wire Wire Line
	14000 10150 14000 10050
Wire Wire Line
	14000 10050 14100 10050
Wire Wire Line
	14500 10050 14700 10050
Wire Wire Line
	14700 9200 14500 9200
Wire Wire Line
	14000 9300 14000 9200
Text Notes 13950 8300 0    79   ~ 0
Reset/User Switch
Wire Notes Line
	500  7950 16050 7950
$Comp
L LED:WS2812B D4
U 1 1 629F6F87
P 13900 6250
F 0 "D4" H 14244 6296 50  0000 L CNN
F 1 "WS2812B" H 14244 6205 50  0000 L CNN
F 2 "LibraryLoader:WS28122020" H 13950 5950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 14000 5875 50  0001 L TNN
	1    13900 6250
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D6
U 1 1 629F5E89
P 14750 7200
F 0 "D6" H 14406 7154 50  0000 R CNN
F 1 "WS2812B" H 14406 7245 50  0000 R CNN
F 2 "LibraryLoader:WS28122020" H 14800 6900 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 14850 6825 50  0001 L TNN
	1    14750 7200
	-1   0    0    1   
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 629F6B68
P 14750 6250
F 0 "D5" H 15094 6296 50  0000 L CNN
F 1 "WS2812B" H 15094 6205 50  0000 L CNN
F 2 "LibraryLoader:WS28122020" H 14800 5950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 14850 5875 50  0001 L TNN
	1    14750 6250
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D3
U 1 1 629FDF90
P 13000 6250
F 0 "D3" H 13344 6296 50  0000 L CNN
F 1 "WS2812B" H 13344 6205 50  0000 L CNN
F 2 "LibraryLoader:WS28122020" H 13050 5950 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 13100 5875 50  0001 L TNN
	1    13000 6250
	1    0    0    -1  
$EndComp
Text GLabel 12400 6250 0    79   Input ~ 0
DLED
Wire Wire Line
	12400 6250 12700 6250
Wire Wire Line
	13300 6250 13600 6250
Wire Wire Line
	14200 6250 14450 6250
Wire Wire Line
	15050 7200 15200 7200
Wire Wire Line
	15200 7200 15200 6250
Wire Wire Line
	15200 6250 15050 6250
$Comp
L power:GND #PWR08
U 1 1 62A113D2
P 13000 6900
F 0 "#PWR08" H 13000 6650 50  0001 C CNN
F 1 "GND" H 13005 6727 50  0000 C CNN
F 2 "" H 13000 6900 50  0001 C CNN
F 3 "" H 13000 6900 50  0001 C CNN
	1    13000 6900
	1    0    0    -1  
$EndComp
Text GLabel 13000 5650 1    79   Output ~ 0
V3.3
Wire Wire Line
	13000 6900 13000 6600
Wire Wire Line
	13000 6600 13900 6600
Wire Wire Line
	14750 6600 14750 6900
Connection ~ 13000 6600
Wire Wire Line
	13000 6600 13000 6550
Wire Wire Line
	14750 6600 14750 6550
Connection ~ 14750 6600
Wire Wire Line
	13900 6600 13900 6550
Connection ~ 13900 6600
Wire Wire Line
	13900 6600 14750 6600
Wire Wire Line
	13000 5950 13000 5900
Wire Wire Line
	13000 5900 13900 5900
Wire Wire Line
	15600 5900 15600 7550
Wire Wire Line
	15600 7550 14750 7550
Wire Wire Line
	14750 7550 14750 7500
Connection ~ 13000 5900
Wire Wire Line
	13000 5900 13000 5650
Wire Wire Line
	13900 5950 13900 5900
Connection ~ 13900 5900
Wire Wire Line
	13900 5900 14750 5900
Wire Wire Line
	14750 5950 14750 5900
Connection ~ 14750 5900
Wire Wire Line
	14750 5900 15600 5900
Text Notes 13500 4900 0    79   ~ 0
Status LEDs
Wire Notes Line
	11600 4550 16050 4550
Text GLabel 13000 1350 0    79   Input ~ 0
V3.3
$Comp
L Device:C C4
U 1 1 62A35720
P 13300 1500
F 0 "C4" H 13415 1546 50  0000 L CNN
F 1 "10uF" H 13415 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13338 1350 50  0001 C CNN
F 3 "~" H 13300 1500 50  0001 C CNN
	1    13300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 62A35CBD
P 13850 1500
F 0 "C5" H 13965 1546 50  0000 L CNN
F 1 "0.1uF" H 13965 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13888 1350 50  0001 C CNN
F 3 "~" H 13850 1500 50  0001 C CNN
	1    13850 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 62A35E6F
P 14400 1500
F 0 "C6" H 14515 1546 50  0000 L CNN
F 1 "0.1uF" H 14515 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 14438 1350 50  0001 C CNN
F 3 "~" H 14400 1500 50  0001 C CNN
	1    14400 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13000 1350 13300 1350
Connection ~ 13300 1350
Wire Wire Line
	13300 1350 13850 1350
Connection ~ 13850 1350
Wire Wire Line
	13850 1350 14400 1350
Wire Wire Line
	13300 1650 13850 1650
Connection ~ 13850 1650
Wire Wire Line
	13850 1650 14400 1650
$Comp
L power:GND #PWR013
U 1 1 62A3EF82
P 13850 1750
F 0 "#PWR013" H 13850 1500 50  0001 C CNN
F 1 "GND" H 13855 1577 50  0000 C CNN
F 2 "" H 13850 1750 50  0001 C CNN
F 3 "" H 13850 1750 50  0001 C CNN
	1    13850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13850 1750 13850 1650
Text GLabel 14900 3550 1    39   Output ~ 0
COL15
Text GLabel 14800 3550 1    39   Output ~ 0
COL14
Text GLabel 14700 3550 1    39   Output ~ 0
COL13
Text GLabel 14600 3550 1    39   Output ~ 0
COL12
Text GLabel 14500 3550 1    39   Output ~ 0
COL11
Text GLabel 14400 3550 1    39   Output ~ 0
COL10
Text GLabel 14300 3550 1    39   Output ~ 0
COL9
Text GLabel 14200 3550 1    39   Output ~ 0
COL8
Text GLabel 14100 3550 1    39   Output ~ 0
COL7
Text GLabel 14000 3550 1    39   Output ~ 0
COL6
Text GLabel 13900 3550 1    39   Output ~ 0
COL5
Text GLabel 13800 3550 1    39   Output ~ 0
COL4
Text GLabel 13700 3550 1    39   Output ~ 0
COL3
Text GLabel 13600 3550 1    39   Output ~ 0
COL2
Text GLabel 13500 3550 1    39   Input ~ 0
ROW8
Text GLabel 13400 3550 1    39   Input ~ 0
ROW7
Text GLabel 13300 3550 1    39   Input ~ 0
ROW6
Text GLabel 13200 3550 1    39   Input ~ 0
ROW5
Text GLabel 13100 3550 1    39   Input ~ 0
ROW4
Text GLabel 12900 3550 1    39   Input ~ 0
ROW2
Text GLabel 13000 3550 1    39   Input ~ 0
ROW3
Text GLabel 12800 3550 1    39   Input ~ 0
ROW1
Text GLabel 12700 3550 1    39   Output ~ 0
COL1
$Comp
L Connector_Generic:Conn_01x23 J2
U 1 1 62906B4C
P 13800 3750
F 0 "J2" V 13925 3746 50  0000 C CNN
F 1 "Conn_01x23" V 14016 3746 50  0000 C CNN
F 2 "Connector_FFC-FPC:TE_2-84952-3_1x23-1MP_P1.0mm_Horizontal" H 13800 3750 50  0001 C CNN
F 3 "~" H 13800 3750 50  0001 C CNN
	1    13800 3750
	0    -1   1    0   
$EndComp
Text Notes 14300 2950 2    79   ~ 0
Keyboard Matrix
Text Notes 14300 850  2    79   ~ 0
Decoupling Caps
Wire Notes Line
	11600 500  11600 7950
Wire Notes Line
	11600 2400 16050 2400
Text GLabel 4250 2200 1    39   Output ~ 0
V3.3
Wire Wire Line
	4400 2450 4250 2450
Connection ~ 4250 2450
Wire Wire Line
	4250 2450 4250 2350
Wire Wire Line
	4400 2350 4250 2350
Connection ~ 4250 2350
Wire Wire Line
	4250 2350 4250 2200
Wire Wire Line
	4400 2550 4250 2550
Wire Wire Line
	4250 2450 4250 2550
Text GLabel 4200 2650 0    39   Output ~ 0
RESET
Wire Wire Line
	4200 2650 4400 2650
Text GLabel 4200 3000 0    39   BiDi ~ 0
D-
Wire Wire Line
	4200 3000 4400 3000
Text GLabel 4200 3100 0    39   BiDi ~ 0
D+
Wire Wire Line
	4200 3100 4400 3100
Text GLabel 4200 2900 0    39   Input ~ 0
VUSB
Wire Wire Line
	4200 2900 4400 2900
Text GLabel 4200 2750 0    39   Output ~ 0
BOOT
Wire Wire Line
	4200 2750 4400 2750
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J5
U 1 1 62AB1718
P 10200 6850
F 0 "J5" V 9650 7350 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" V 9750 7350 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 10200 6850 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 9850 5600 50  0001 C CNN
	1    10200 6850
	1    0    0    -1  
$EndComp
Text GLabel 10850 6550 2    39   Input ~ 0
RESET
Text GLabel 10850 6850 2    39   BiDi ~ 0
SWDIO
Text GLabel 10850 6750 2    39   Output ~ 0
SWDCLK
$Comp
L power:GND #PWR012
U 1 1 62AB49D1
P 10200 7550
F 0 "#PWR012" H 10200 7300 50  0001 C CNN
F 1 "GND" H 10205 7377 50  0000 C CNN
F 2 "" H 10200 7550 50  0001 C CNN
F 3 "" H 10200 7550 50  0001 C CNN
	1    10200 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 6550 10850 6550
Wire Wire Line
	10700 6750 10850 6750
Wire Wire Line
	10850 6850 10700 6850
Wire Wire Line
	10200 7550 10200 7500
Text GLabel 10200 6100 1    39   Input ~ 0
V3.3
Wire Wire Line
	10200 6250 10200 6100
Wire Wire Line
	10100 7450 10100 7500
Wire Wire Line
	10100 7500 10200 7500
Connection ~ 10200 7500
Wire Wire Line
	10200 7500 10200 7450
Text Notes 10700 5550 2    79   ~ 0
SWD Debugger
Wire Notes Line
	11600 5200 9050 5200
Wire Notes Line
	9050 5200 9050 7950
Text GLabel 4200 3400 0    39   Input ~ 0
SWDCLK
Text GLabel 4200 3300 0    39   BiDi ~ 0
SWDIO
Wire Wire Line
	4200 3300 4400 3300
Wire Wire Line
	4400 3400 4200 3400
Text GLabel 5800 4950 2    39   Input ~ 0
VDIV
Text GLabel 5800 4550 2    39   Output ~ 0
DLED
Text GLabel 4200 3700 0    39   Input ~ 0
CSTAT
Text GLabel 5800 4150 2    39   Output ~ 0
ROW1
Text GLabel 4200 4100 0    39   Output ~ 0
ROW2
Text GLabel 4200 3900 0    39   Output ~ 0
ROW3
Text GLabel 4200 4900 0    39   Output ~ 0
ROW4
Text GLabel 5800 3650 2    39   Output ~ 0
ROW5
Text GLabel 5800 3750 2    39   Output ~ 0
ROW6
Text GLabel 5800 3050 2    39   Output ~ 0
ROW7
Text GLabel 5800 5050 2    39   Output ~ 0
ROW8
Text GLabel 5800 4650 2    39   Input ~ 0
COL1
Text GLabel 5800 3550 2    39   Input ~ 0
COL2
Text GLabel 5800 3850 2    39   Input ~ 0
COL3
Text GLabel 5800 3950 2    39   Input ~ 0
COL4
Text GLabel 4200 4300 0    39   Input ~ 0
COL5
Text GLabel 4200 4000 0    39   Input ~ 0
COL6
Text GLabel 4200 4200 0    39   Input ~ 0
COL7
Text GLabel 5800 3450 2    39   Input ~ 0
COL8
Text GLabel 5800 3250 2    39   Input ~ 0
COL9
Text GLabel 5800 3350 2    39   Input ~ 0
COL10
Text GLabel 5800 4850 2    39   Input ~ 0
COL11
Text GLabel 5800 3150 2    39   Input ~ 0
COL12
Text GLabel 4200 4800 0    39   Input ~ 0
COL13
Text GLabel 4200 4700 0    39   Input ~ 0
COL14
Text GLabel 4200 4600 0    39   Input ~ 0
COL15
$Comp
L power:GND #PWR011
U 1 1 62B9D125
P 5000 5600
F 0 "#PWR011" H 5000 5350 50  0001 C CNN
F 1 "GND" H 5005 5427 50  0000 C CNN
F 2 "" H 5000 5600 50  0001 C CNN
F 3 "" H 5000 5600 50  0001 C CNN
	1    5000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5450 4700 5500
Wire Wire Line
	4700 5500 4800 5500
Wire Wire Line
	5000 5500 5000 5600
Wire Wire Line
	4800 5500 4800 5450
Connection ~ 4800 5500
Wire Wire Line
	4800 5500 4900 5500
Wire Wire Line
	4900 5500 4900 5450
Connection ~ 4900 5500
Wire Wire Line
	4900 5500 5000 5500
Wire Wire Line
	5000 5500 5000 5450
Connection ~ 5000 5500
Wire Wire Line
	5000 5500 5100 5500
Wire Wire Line
	5300 5500 5300 5450
Wire Wire Line
	5200 5500 5200 5450
Connection ~ 5200 5500
Wire Wire Line
	5200 5500 5300 5500
Wire Wire Line
	5100 5500 5100 5450
Connection ~ 5100 5500
Wire Wire Line
	5100 5500 5200 5500
Wire Wire Line
	8650 10650 8650 10750
Wire Wire Line
	4400 3700 4200 3700
Wire Wire Line
	4200 3900 4400 3900
Wire Wire Line
	4400 4000 4200 4000
Wire Wire Line
	4200 4100 4400 4100
Wire Wire Line
	4400 4200 4200 4200
Wire Wire Line
	4200 4300 4400 4300
Wire Wire Line
	4400 4600 4200 4600
Wire Wire Line
	4200 4700 4400 4700
Wire Wire Line
	4400 4800 4200 4800
Wire Wire Line
	4200 4900 4400 4900
Wire Wire Line
	5600 5050 5800 5050
Wire Wire Line
	5800 4950 5600 4950
Wire Wire Line
	5600 4850 5800 4850
Wire Wire Line
	5800 4650 5600 4650
Wire Wire Line
	5600 4150 5800 4150
Wire Wire Line
	5800 3950 5600 3950
Wire Wire Line
	5600 3850 5800 3850
Wire Wire Line
	5800 3750 5600 3750
Wire Wire Line
	5600 3650 5800 3650
Wire Wire Line
	5800 3550 5600 3550
Wire Wire Line
	5600 3450 5800 3450
Wire Wire Line
	5800 3350 5600 3350
Wire Wire Line
	5600 3250 5800 3250
Wire Wire Line
	5800 3150 5600 3150
Wire Wire Line
	5600 3050 5800 3050
Wire Wire Line
	5800 4550 5600 4550
$EndSCHEMATC
