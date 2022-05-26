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
L Transistor_FET:DMG2301L Q1
U 1 1 628FF992
P 2650 2300
F 0 "Q1" H 2855 2346 50  0000 L CNN
F 1 "PMost Enc FET -20V" H 2855 2255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 2225 50  0001 L CIN
F 3 "" H 2650 2300 50  0001 L CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:XC6220B331MR U1
U 1 1 62900B92
P 4050 2150
F 0 "U1" H 4050 2517 50  0000 C CNN
F 1 "XC6220B331MR" H 4050 2426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4050 2150 50  0001 C CNN
F 3 "https://www.torexsemi.com/file/xc6220/XC6220.pdf" H 4800 1150 50  0001 C CNN
	1    4050 2150
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U2
U 1 1 62901F10
P 6250 2050
F 0 "U2" H 6250 2531 50  0000 C CNN
F 1 "MCP73831-2-OT" H 6250 2440 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 6300 1800 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 6100 2000 50  0001 C CNN
	1    6250 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62903AF0
P 3650 3300
F 0 "J1" V 3522 3380 50  0000 L CNN
F 1 "JST-PH 2" V 3613 3380 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-SM4-TB_1x02-1MP_P2.00mm_Horizontal" H 3650 3300 50  0001 C CNN
F 3 "~" H 3650 3300 50  0001 C CNN
	1    3650 3300
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x23 J2
U 1 1 62906B4C
P 2000 3300
F 0 "J2" V 2125 3296 50  0000 C CNN
F 1 "Conn_01x23" V 2216 3296 50  0000 C CNN
F 2 "Connector_FFC-FPC:TE_2-84952-3_1x23-1MP_P1.0mm_Horizontal" H 2000 3300 50  0001 C CNN
F 3 "~" H 2000 3300 50  0001 C CNN
	1    2000 3300
	0    1    1    0   
$EndComp
$Comp
L custom_footprints:MicroMod-M.2E J3
U 1 1 62919FF9
P 8850 1200
F 0 "J3" H 8800 1465 50  0000 C CNN
F 1 "MicroMod-M.2E" H 8800 1374 50  0000 C CNN
F 2 "SparkFun MicroMod:M.2-CONNECTOR-E" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
