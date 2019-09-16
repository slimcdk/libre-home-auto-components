EESchema Schematic File Version 4
LIBS:ceiling-light-cache
EELAYER 26 0
EELAYER END
$Descr User 9843 8465
encoding utf-8
Sheet 1 1
Title "Dimmable Ceiling Light Controller"
Date "2019-08-20"
Rev "v1.1.1"
Comp "slimc"
Comment1 "Open Source Project"
Comment2 "github.com/slimcdk/smart-home-modules"
Comment3 "Smart Home Modules"
Comment4 "Auther: Christian Skjerning"
$EndDescr
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5D5B20C0
P 850 1550
F 0 "J1" H 850 1300 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 930 1591 50  0001 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 850 1550 50  0001 C CNN
F 3 "~" H 850 1550 50  0001 C CNN
	1    850  1550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D5B29EE
P 850 5600
F 0 "J2" H 850 5350 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1350 5500 50  0001 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 850 5600 50  0001 C CNN
F 3 "~" H 850 5600 50  0001 C CNN
	1    850  5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5D5B373E
P 1350 5700
F 0 "F2" V 1500 5700 50  0000 C CNN
F 1 "Fuse" V 1600 5700 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_lateral_Type-II" V 1280 5700 50  0001 C CNN
F 3 "~" H 1350 5700 50  0001 C CNN
	1    1350 5700
	0    1    1    0   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32D U6
U 1 1 5D69748E
P 6850 4450
F 0 "U6" H 6300 6350 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 6250 6250 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6850 2950 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 6550 4500 50  0001 C CNN
	1    6850 4450
	-1   0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 5D6A12B4
P 6050 1450
F 0 "U3" H 6050 1692 50  0000 C CNN
F 1 "AMS1117-3.3" H 6050 1601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 6050 1650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 6150 1200 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5D6D762F
P 6050 1950
F 0 "#PWR029" H 6050 1700 50  0001 C CNN
F 1 "GND" H 6055 1777 50  0000 C CNN
F 2 "" H 6050 1950 50  0001 C CNN
F 3 "" H 6050 1950 50  0001 C CNN
	1    6050 1950
	1    0    0    -1  
$EndComp
Text Notes 4400 800  0    50   ~ 0
ACDC 12V CONVERTER
$Comp
L power:GND #PWR039
U 1 1 5D73B4A8
P 2250 7650
F 0 "#PWR039" H 2250 7400 50  0001 C CNN
F 1 "GND" H 2255 7477 50  0000 C CNN
F 2 "" H 2250 7650 50  0001 C CNN
F 3 "" H 2250 7650 50  0001 C CNN
	1    2250 7650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR038
U 1 1 5D74F9AE
P 2250 6900
F 0 "#PWR038" H 2250 6750 50  0001 C CNN
F 1 "+3V3" H 2265 7073 50  0000 C CNN
F 2 "" H 2250 6900 50  0001 C CNN
F 3 "" H 2250 6900 50  0001 C CNN
	1    2250 6900
	1    0    0    -1  
$EndComp
Text Notes 2250 6550 0    50   ~ 0
FTDI PROG HEADER
$Comp
L Sensor_Temperature:TMP36xS U1
U 1 1 5DB873DD
P 8300 1400
F 0 "U1" H 8700 1950 50  0000 L CNN
F 1 "TMP36xS" H 8600 1850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 8300 950 50  0001 C CNN
F 3 "http://www.analog.com/media/en/technical-documentation/data-sheets/TMP35_36_37.pdf" H 8300 1400 50  0001 C CNN
	1    8300 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DBFB321
P 8300 1950
F 0 "#PWR04" H 8300 1700 50  0001 C CNN
F 1 "GND" H 8305 1777 50  0000 C CNN
F 2 "" H 8300 1950 50  0001 C CNN
F 3 "" H 8300 1950 50  0001 C CNN
	1    8300 1950
	1    0    0    -1  
$EndComp
Text Notes 7750 500  0    50   ~ 0
PCB TEMP SENSOR
$Comp
L Transistor_FET:IRF740 Q1
U 1 1 5DC93D03
P 2450 4750
F 0 "Q1" H 2150 4950 50  0000 L CNN
F 1 "IRF840" H 2050 4850 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2_TabPin1" H 2700 4675 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 2450 4750 50  0001 L CNN
	1    2450 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 4950 2350 5050
Wire Wire Line
	2100 5050 2100 5150
Connection ~ 2350 5050
Wire Wire Line
	2350 5050 2350 5150
Wire Wire Line
	2350 5050 2100 5050
Wire Wire Line
	2650 5350 2750 5350
Wire Wire Line
	2750 4750 2650 4750
Wire Wire Line
	2350 5550 2350 5700
Text Notes 2300 3750 0    50   ~ 0
LOAD DIMMING (TRAILING EDGE)
$Comp
L Switch:SW_Push SW1
U 1 1 5E539B79
P 1100 7050
F 0 "SW1" H 1100 7300 50  0000 C CNN
F 1 "SW_Push" H 1100 7200 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 1100 7250 50  0001 C CNN
F 3 "" H 1100 7250 50  0001 C CNN
	1    1100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7050 800  7050
Text Notes 800  6550 0    50   ~ 0
PUSH BUTTONS
$Comp
L power:GND #PWR05
U 1 1 5E85A6D0
P 800 7650
F 0 "#PWR05" H 800 7400 50  0001 C CNN
F 1 "GND" H 805 7477 50  0000 C CNN
F 2 "" H 800 7650 50  0001 C CNN
F 3 "" H 800 7650 50  0001 C CNN
	1    800  7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  7450 800  7450
Wire Wire Line
	800  7450 800  7650
Wire Wire Line
	5650 1150 5650 1450
Wire Wire Line
	5650 1450 5750 1450
$Comp
L Device:CP_Small C9
U 1 1 5F0D02FB
P 4750 1650
F 0 "C9" H 4700 2050 50  0000 L CNN
F 1 "47µ" H 4700 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4750 1650 50  0001 C CNN
F 3 "~" H 4750 1650 50  0001 C CNN
	1    4750 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C14
U 1 1 5F157354
P 6450 1650
F 0 "C14" H 6550 1700 50  0000 L CNN
F 1 "22µF" H 6550 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6450 1650 50  0001 C CNN
F 3 "~" H 6450 1650 50  0001 C CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
NoConn ~ 7450 4950
NoConn ~ 7450 4850
NoConn ~ 7450 4750
NoConn ~ 7450 4650
NoConn ~ 7450 4550
NoConn ~ 7450 4450
Text Notes 6550 2450 0    50   ~ 0
MICROCONTROLLER
$Comp
L power:+3V3 #PWR040
U 1 1 5F35B415
P 6850 2700
F 0 "#PWR040" H 6850 2550 50  0001 C CNN
F 1 "+3V3" H 6865 2873 50  0000 C CNN
F 2 "" H 6850 2700 50  0001 C CNN
F 3 "" H 6850 2700 50  0001 C CNN
	1    6850 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5F391A34
P 6850 6100
F 0 "#PWR041" H 6850 5850 50  0001 C CNN
F 1 "GND" H 6855 5927 50  0000 C CNN
F 2 "" H 6850 6100 50  0001 C CNN
F 3 "" H 6850 6100 50  0001 C CNN
	1    6850 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 4550 2350 4450
Wire Wire Line
	800  7050 800  7450
Connection ~ 800  7450
$Comp
L power:+3V3 #PWR035
U 1 1 6072BA37
P 6850 1150
F 0 "#PWR035" H 6850 1000 50  0001 C CNN
F 1 "+3V3" H 6865 1323 50  0000 C CNN
F 2 "" H 6850 1150 50  0001 C CNN
F 3 "" H 6850 1150 50  0001 C CNN
	1    6850 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 607815B1
P 6850 1750
F 0 "D5" V 6888 1633 50  0000 R CNN
F 1 "LED" V 6797 1633 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6850 1750 50  0001 C CNN
F 3 "~" H 6850 1750 50  0001 C CNN
	1    6850 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 607815BE
P 6850 1400
F 0 "R11" H 7100 1450 50  0000 R CNN
F 1 "400R" H 7100 1350 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric" V 6780 1400 50  0001 C CNN
F 3 "~" H 6850 1400 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1550 6850 1600
Wire Wire Line
	6850 1250 6850 1200
Text Notes 5650 800  0    50   ~ 0
DCDC 3v3 CONVERTER
$Comp
L Device:C_Small C2
U 1 1 60A0F1E4
P 1350 4450
F 0 "C2" V 1500 4400 50  0000 C CNN
F 1 "100n" V 1600 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1350 4450 50  0001 C CNN
F 3 "~" H 1350 4450 50  0001 C CNN
	1    1350 4450
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60A837DB
P 1350 5500
F 0 "C3" V 1550 5500 50  0000 C CNN
F 1 "100n" V 1450 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 1350 5500 50  0001 C CNN
F 3 "~" H 1350 5500 50  0001 C CNN
	1    1350 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 1800 8300 1950
$Comp
L power:+3V3 #PWR03
U 1 1 60B50744
P 8300 850
F 0 "#PWR03" H 8300 700 50  0001 C CNN
F 1 "+3V3" H 8315 1023 50  0000 C CNN
F 2 "" H 8300 850 50  0001 C CNN
F 3 "" H 8300 850 50  0001 C CNN
	1    8300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 850  8300 1000
$Comp
L power:GND #PWR01
U 1 1 60B5B3B5
P 7700 1950
F 0 "#PWR01" H 7700 1700 50  0001 C CNN
F 1 "GND" H 7705 1777 50  0000 C CNN
F 2 "" H 7700 1950 50  0001 C CNN
F 3 "" H 7700 1950 50  0001 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1400 7800 1400
NoConn ~ 6250 5450
NoConn ~ 6250 5250
NoConn ~ 6250 5150
NoConn ~ 6250 5050
NoConn ~ 6250 4950
NoConn ~ 6250 4550
NoConn ~ 6250 4450
NoConn ~ 6250 4350
NoConn ~ 6250 4250
NoConn ~ 6250 4150
NoConn ~ 6250 3950
NoConn ~ 6250 3750
NoConn ~ 6250 3650
NoConn ~ 6250 3450
NoConn ~ 7450 3550
NoConn ~ 6250 5350
$Comp
L ESProg:ESProg_Mating_Header P1
U 1 1 60D9A768
P 2750 7300
F 0 "P1" H 3450 7850 50  0000 L CNN
F 1 "ESProg_Mating_Header" H 3050 7750 50  0000 L CNN
F 2 "footprints:ESProg_PinSocket_1x06_P2.54mm_Vertical" H 2550 7300 50  0001 C CNN
F 3 "" H 2550 7300 50  0001 C CNN
	1    2750 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7650 2250 7550
Wire Wire Line
	2250 7550 2350 7550
Wire Wire Line
	2350 7350 2250 7350
Wire Wire Line
	2250 7350 2250 6900
Wire Wire Line
	2200 5700 2350 5700
$Comp
L Device:L L2
U 1 1 5D67FD4C
P 1800 1450
F 0 "L2" V 1990 1450 50  0000 C CNN
F 1 "100µH" V 1899 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRN6045TA" H 1800 1450 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L3
U 1 1 5D692135
P 1800 1650
F 0 "L3" V 1900 1650 50  0000 C CNN
F 1 "100µH" V 2000 1650 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRN6045TA" H 1800 1650 50  0001 C CNN
F 3 "~" H 1800 1650 50  0001 C CNN
	1    1800 1650
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5D6982D2
P 2050 5700
F 0 "L1" V 2240 5700 50  0000 C CNN
F 1 "100µH" V 2149 5700 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1210A" H 2050 5700 50  0001 C CNN
F 3 "~" H 2050 5700 50  0001 C CNN
	1    2050 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 1450 3200 1450
Wire Wire Line
	1950 1650 3200 1650
$Comp
L Device:C_Small C5
U 1 1 5D75BD4B
P 3200 1550
F 0 "C5" H 3200 1250 50  0000 C CNN
F 1 "100n" H 3200 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3200 1550 50  0001 C CNN
F 3 "~" H 3200 1550 50  0001 C CNN
	1    3200 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:CP_Small C15
U 1 1 5D7DB007
P 7650 5750
F 0 "C15" H 7800 5800 50  0000 L CNN
F 1 "10µ" H 7800 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7650 5750 50  0001 C CNN
F 3 "~" H 7650 5750 50  0001 C CNN
	1    7650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5D5D222D
P 7700 1750
F 0 "C1" H 7500 1850 50  0000 L CNN
F 1 "0.1µ" H 7450 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7700 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1850 7700 1950
Wire Wire Line
	7700 1400 7700 1650
$Comp
L Device:C_Small C8
U 1 1 5D7215CA
P 4500 1650
F 0 "C8" H 4500 1250 50  0000 C CNN
F 1 "100n" H 4500 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4500 1650 50  0001 C CNN
F 3 "~" H 4500 1650 50  0001 C CNN
	1    4500 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 1450 4750 1150
$Comp
L power:GND #PWR0102
U 1 1 5D742E06
P 4750 1950
F 0 "#PWR0102" H 4750 1700 50  0001 C CNN
F 1 "GND" H 4755 1777 50  0000 C CNN
F 2 "" H 4750 1950 50  0001 C CNN
F 3 "" H 4750 1950 50  0001 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1650 1150 1650
Connection ~ 1150 1650
Wire Wire Line
	1150 1650 1650 1650
Wire Wire Line
	6350 1450 6450 1450
Wire Wire Line
	6450 1450 6450 1550
Text Notes 2850 3250 0    39   ~ 0
1/4W
Text Notes 1300 4800 0    39   ~ 0
630V
Text Notes 1450 5350 0    39   ~ 0
630V
Connection ~ 4500 1450
Wire Wire Line
	4150 1450 4500 1450
Wire Wire Line
	4500 1450 4500 1550
Wire Wire Line
	4500 1450 4750 1450
Wire Wire Line
	4750 1450 4750 1550
Connection ~ 4750 1450
Wire Wire Line
	4750 1750 4750 1950
$Comp
L power:GND #PWR07
U 1 1 5DD8817E
P 4500 1950
F 0 "#PWR07" H 4500 1700 50  0001 C CNN
F 1 "GND" H 4505 1777 50  0000 C CNN
F 2 "" H 4500 1950 50  0001 C CNN
F 3 "" H 4500 1950 50  0001 C CNN
	1    4500 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DD88225
P 4250 1950
F 0 "#PWR06" H 4250 1700 50  0001 C CNN
F 1 "GND" H 4255 1777 50  0000 C CNN
F 2 "" H 4250 1950 50  0001 C CNN
F 3 "" H 4250 1950 50  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1650 4250 1650
Wire Wire Line
	4250 1650 4250 1950
Wire Wire Line
	4500 1950 4500 1750
Connection ~ 3200 1450
Connection ~ 3200 1650
Wire Wire Line
	3200 1650 3350 1650
Wire Wire Line
	3200 1450 3350 1450
Text Notes 3950 1300 0    39   ~ 0
630V
Wire Wire Line
	6150 3150 6150 3250
$Comp
L Device:R_Small R7
U 1 1 5DFED68F
P 6150 3050
F 0 "R7" H 6250 3150 50  0000 L CNN
F 1 "10K" H 6250 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 6150 3050 50  0001 C CNN
F 3 "~" H 6150 3050 50  0001 C CNN
	1    6150 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5DFEDBA9
P 7550 3050
F 0 "R16" H 7300 3150 50  0000 L CNN
F 1 "10K" H 7300 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7550 3050 50  0001 C CNN
F 3 "~" H 7550 3050 50  0001 C CNN
	1    7550 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5E0C7525
P 1100 7450
F 0 "SW2" H 1100 7700 50  0000 C CNN
F 1 "SW_Push" H 1100 7600 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_B3S-1000" H 1100 7650 50  0001 C CNN
F 3 "" H 1100 7650 50  0001 C CNN
	1    1100 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5550 5800 5650
Wire Wire Line
	5800 5850 5800 6050
Wire Wire Line
	5800 5550 5700 5550
$Comp
L power:GND #PWR011
U 1 1 5DF7DA54
P 5800 6050
F 0 "#PWR011" H 5800 5800 50  0001 C CNN
F 1 "GND" H 5805 5877 50  0000 C CNN
F 2 "" H 5800 6050 50  0001 C CNN
F 3 "" H 5800 6050 50  0001 C CNN
	1    5800 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DF69781
P 5800 5750
F 0 "R6" H 5900 5800 50  0000 L CNN
F 1 "1K" H 5900 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5800 5750 50  0001 C CNN
F 3 "~" H 5800 5750 50  0001 C CNN
	1    5800 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5150 5400 5250
Wire Wire Line
	4900 5150 5400 5150
Wire Wire Line
	4900 5450 4900 5150
Wire Wire Line
	5400 5950 5400 6050
Wire Wire Line
	4900 5950 5400 5950
Wire Wire Line
	4900 5650 4900 5950
$Comp
L Device:CP_Small C6
U 1 1 5D5B5024
P 4900 5550
F 0 "C6" H 4700 5650 50  0000 L CNN
F 1 "0.1µ" H 4650 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4900 5550 50  0001 C CNN
F 3 "~" H 4900 5550 50  0001 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
NoConn ~ 5100 5550
Connection ~ 5400 5950
Wire Wire Line
	5400 5850 5400 5950
$Comp
L LED:WS2812B D2
U 1 1 5D90E253
P 5400 5550
F 0 "D2" H 5150 5950 50  0000 L CNN
F 1 "WS2812B" H 4900 5850 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 5450 5250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5500 5175 50  0001 L TNN
	1    5400 5550
	-1   0    0    -1  
$EndComp
Connection ~ 5400 5150
Wire Wire Line
	5400 5050 5400 5150
$Comp
L power:+3V3 #PWR09
U 1 1 5D91B00F
P 5400 5050
F 0 "#PWR09" H 5400 4900 50  0001 C CNN
F 1 "+3V3" H 5550 5150 50  0000 C CNN
F 2 "" H 5400 5050 50  0001 C CNN
F 3 "" H 5400 5050 50  0001 C CNN
	1    5400 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D91AF5E
P 5400 6050
F 0 "#PWR010" H 5400 5800 50  0001 C CNN
F 1 "GND" H 5405 5877 50  0000 C CNN
F 2 "" H 5400 6050 50  0001 C CNN
F 3 "" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
Text Notes 4750 5050 0    50   ~ 0
STATUS LED
$Comp
L power:GND #PWR02
U 1 1 5DC93CC7
P 2100 5150
F 0 "#PWR02" H 2100 4900 50  0001 C CNN
F 1 "GND" H 2105 4977 50  0000 C CNN
F 2 "" H 2100 5150 50  0001 C CNN
F 3 "" H 2100 5150 50  0001 C CNN
	1    2100 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5D63C7D0
P 1300 1450
F 0 "F1" V 1100 1450 50  0000 C CNN
F 1 "Fuse" V 1200 1450 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_lateral_Type-II" V 1230 1450 50  0001 C CNN
F 3 "~" H 1300 1450 50  0001 C CNN
	1    1300 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 1450 1150 1450
Wire Wire Line
	1050 5700 1200 5700
Wire Wire Line
	1250 5500 1150 5500
Wire Wire Line
	1500 5700 1600 5700
Wire Wire Line
	1450 5500 1600 5500
Wire Wire Line
	1600 5500 1600 5700
Wire Wire Line
	1600 5700 1900 5700
Connection ~ 1600 5700
Wire Wire Line
	1550 4450 2350 4450
Wire Wire Line
	1550 1450 1650 1450
Wire Wire Line
	1450 1450 1550 1450
Connection ~ 1550 1450
Wire Wire Line
	1250 4450 1150 4450
Wire Wire Line
	1450 4450 1550 4450
Wire Wire Line
	7550 3150 7550 3250
Wire Wire Line
	7650 2850 7650 5650
Wire Wire Line
	7550 2950 7550 2850
Wire Wire Line
	6150 2850 6150 2950
Wire Wire Line
	6850 3050 6850 2850
Connection ~ 6850 2850
Wire Wire Line
	6850 2850 6850 2700
Wire Wire Line
	6850 5850 6850 5950
Wire Wire Line
	7650 5850 7650 5950
Wire Wire Line
	7650 5950 6850 5950
Connection ~ 6850 5950
Wire Wire Line
	6850 5950 6850 6100
Wire Wire Line
	1300 7050 2350 7050
Text Label 8200 3250 2    50   ~ 0
ESP32_RST
Wire Wire Line
	1300 7450 2350 7450
Text Label 1750 7450 0    50   ~ 0
ESP32_BOOT
Text Label 1750 7050 0    50   ~ 0
ESP32_RST
Text Label 1750 7150 0    50   ~ 0
ESP32_TXD
Text Label 1750 7250 0    50   ~ 0
ESP32_RXD
Wire Wire Line
	2350 7250 1750 7250
Wire Wire Line
	2350 7150 1750 7150
Wire Wire Line
	5600 3250 6150 3250
Wire Wire Line
	5600 3550 6250 3550
Text Label 5600 3550 0    50   ~ 0
ESP32_RXD
Text Label 5600 3350 0    50   ~ 0
ESP32_TXD
Text Label 5600 3250 0    50   ~ 0
ESP32_BOOT
Connection ~ 7550 2850
Wire Wire Line
	7550 2850 7650 2850
Wire Wire Line
	6850 2850 7550 2850
Wire Wire Line
	7450 3250 7550 3250
Connection ~ 6150 3250
Wire Wire Line
	6150 3250 6250 3250
Wire Wire Line
	6150 2850 6850 2850
$Comp
L Isolator:4N35 U4
U 1 1 5EB087F7
P 3750 4950
F 0 "U4" H 3750 5275 50  0000 C CNN
F 1 "4N35" H 3750 5184 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3550 4750 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 3750 4950 50  0001 L CNN
	1    3750 4950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5EB66861
P 3250 5300
F 0 "R5" H 3450 5350 50  0000 R CNN
F 1 "10K" H 3500 5250 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 3180 5300 50  0001 C CNN
F 3 "~" H 3250 5300 50  0001 C CNN
	1    3250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5050 3250 5150
Text Notes 800  6200 0    79   ~ 16
!! MAINS VOLTAGE | 230VAC | UNISOLATED !!
Wire Notes Line
	650  6300 3750 6300
Wire Notes Line
	3750 600  650  600 
Text Notes 800  800  0    79   ~ 16
!! MAINS VOLTAGE | 230VAC | UNISOLATED !!
$Comp
L power:GND #PWR0101
U 1 1 5EBAED5F
P 3250 5550
F 0 "#PWR0101" H 3250 5300 50  0001 C CNN
F 1 "GND" H 3255 5377 50  0000 C CNN
F 2 "" H 3250 5550 50  0001 C CNN
F 3 "" H 3250 5550 50  0001 C CNN
	1    3250 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5550 3250 5450
Connection ~ 3250 5050
Wire Wire Line
	3250 5050 3450 5050
$Comp
L power:+12V #PWR0103
U 1 1 5EC2AEC0
P 3250 4600
F 0 "#PWR0103" H 3250 4450 50  0001 C CNN
F 1 "+12V" H 3265 4773 50  0000 C CNN
F 2 "" H 3250 4600 50  0001 C CNN
F 3 "" H 3250 4600 50  0001 C CNN
	1    3250 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4950 3450 4950
$Comp
L Transistor_FET:IRF740 Q2
U 1 1 5DC93CC1
P 2450 5350
F 0 "Q2" H 2150 5500 50  0000 L CNN
F 1 "IRF840" H 2050 5600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2_TabPin1" H 2700 5275 50  0001 L CIN
F 3 "http://www.vishay.com/docs/91054/91054.pdf" H 2450 5350 50  0001 L CNN
	1    2450 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 4750 2750 5050
Wire Wire Line
	3250 4600 3250 4950
Wire Wire Line
	1050 5600 1150 5600
Wire Wire Line
	1150 5600 1150 5500
Connection ~ 1150 5500
Wire Wire Line
	2750 5050 3250 5050
Connection ~ 2750 5050
Wire Wire Line
	2750 5050 2750 5350
$Comp
L Isolator:LTV-824 U2
U 1 1 5D71DD48
P 3750 3000
F 0 "U2" H 3750 3325 50  0000 C CNN
F 1 "LTV-824" H 3750 3234 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3550 2800 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3775 3000 50  0001 L CNN
	1    3750 3000
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-824 U2
U 2 1 5D71DF06
P 3750 4150
F 0 "U2" H 3750 4475 50  0000 C CNN
F 1 "LTV-824" H 3750 4384 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3550 3950 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 3775 4150 50  0001 L CNN
	2    3750 4150
	1    0    0    -1  
$EndComp
$Comp
L Converter_ACDC:IRM-02-12 PS1
U 1 1 5D72995A
P 3750 1550
F 0 "PS1" H 3750 1875 50  0000 C CNN
F 1 "IRM-02-12" H 3750 1784 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_MeanWell_IRM-02-xx_THT" H 3750 1250 50  0001 C CNN
F 3 "http://www.meanwell.com/productPdf.aspx?i=675" H 4150 1200 50  0001 C CNN
	1    3750 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5D734607
P 4750 1150
F 0 "#PWR0104" H 4750 1000 50  0001 C CNN
F 1 "+12V" H 4765 1323 50  0000 C CNN
F 2 "" H 4750 1150 50  0001 C CNN
F 3 "" H 4750 1150 50  0001 C CNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 5D739AB8
P 5650 1150
F 0 "#PWR0105" H 5650 1000 50  0001 C CNN
F 1 "+12V" H 5665 1323 50  0000 C CNN
F 2 "" H 5650 1150 50  0001 C CNN
F 3 "" H 5650 1150 50  0001 C CNN
	1    5650 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5D749C75
P 5650 1650
F 0 "C4" H 5850 1600 50  0000 C CNN
F 1 "10µF" H 5800 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5650 1650 50  0001 C CNN
F 3 "~" H 5650 1650 50  0001 C CNN
	1    5650 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1550 5650 1450
Connection ~ 5650 1450
Wire Wire Line
	6050 1750 6050 1850
Wire Wire Line
	5650 1750 5650 1850
Wire Wire Line
	5650 1850 6050 1850
Connection ~ 6050 1850
Wire Wire Line
	6050 1850 6050 1950
Wire Wire Line
	6450 1750 6450 1850
Wire Wire Line
	6450 1850 6050 1850
Wire Wire Line
	6850 1950 6850 1900
$Comp
L power:GND #PWR036
U 1 1 607815B7
P 6850 1950
F 0 "#PWR036" H 6850 1700 50  0001 C CNN
F 1 "GND" H 6855 1777 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1450 6450 1200
Wire Wire Line
	6450 1200 6850 1200
Connection ~ 6450 1450
Wire Wire Line
	6850 1200 6850 1150
Connection ~ 6850 1200
$Comp
L Device:R R2
U 1 1 5D7EC7BF
P 2850 4250
F 0 "R2" V 2950 4350 50  0000 R CNN
F 1 "100K" V 3050 4350 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 2780 4250 50  0001 C CNN
F 3 "~" H 2850 4250 50  0001 C CNN
	1    2850 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D7ECE02
P 2850 4050
F 0 "R1" V 2650 4150 50  0000 R CNN
F 1 "100K" V 2750 4150 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 2780 4050 50  0001 C CNN
F 3 "~" H 2850 4050 50  0001 C CNN
	1    2850 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D7ED783
P 3150 3100
F 0 "R4" V 3250 3200 50  0000 R CNN
F 1 "100K" V 3350 3200 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 3080 3100 50  0001 C CNN
F 3 "~" H 3150 3100 50  0001 C CNN
	1    3150 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D7ED789
P 3150 2900
F 0 "R3" V 2950 3000 50  0000 R CNN
F 1 "100K" V 3050 3000 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 3080 2900 50  0001 C CNN
F 3 "~" H 3150 2900 50  0001 C CNN
	1    3150 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3100 3450 3100
Wire Wire Line
	3300 2900 3450 2900
Wire Wire Line
	3000 4050 3450 4050
Wire Wire Line
	3000 4250 3450 4250
Connection ~ 1150 4450
Wire Wire Line
	1150 4450 1150 5500
Connection ~ 1550 4450
Wire Wire Line
	1150 1650 1150 4450
Wire Wire Line
	1350 4250 2700 4250
Wire Wire Line
	1050 1550 1350 1550
Wire Wire Line
	2700 4050 1550 4050
Wire Wire Line
	3000 3100 1350 3100
Wire Wire Line
	3000 2900 1550 2900
Text Notes 2850 2550 0    50   ~ 0
MAINS SWITCH SENSE
$Comp
L power:GND #PWR0106
U 1 1 5D85825E
P 4150 3200
F 0 "#PWR0106" H 4150 2950 50  0001 C CNN
F 1 "GND" H 4150 3050 50  0000 C CNN
F 2 "" H 4150 3200 50  0001 C CNN
F 3 "" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3100 4150 3100
Wire Wire Line
	4150 3100 4150 3200
$Comp
L power:GND #PWR0107
U 1 1 5D872F59
P 4150 4450
F 0 "#PWR0107" H 4150 4200 50  0001 C CNN
F 1 "GND" H 4155 4277 50  0000 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4450 4150 4250
Wire Wire Line
	4150 4250 4050 4250
$Comp
L power:GND #PWR0108
U 1 1 5D87A3CD
P 4150 5250
F 0 "#PWR0108" H 4150 5000 50  0001 C CNN
F 1 "GND" H 4155 5077 50  0000 C CNN
F 2 "" H 4150 5250 50  0001 C CNN
F 3 "" H 4150 5250 50  0001 C CNN
	1    4150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5250 4150 5050
Wire Wire Line
	4150 5050 4050 5050
$Comp
L Device:R R10
U 1 1 5D888E34
P 4350 4850
F 0 "R10" V 4450 4950 50  0000 R CNN
F 1 "330" V 4550 4950 50  0000 R CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4280 4850 50  0001 C CNN
F 3 "~" H 4350 4850 50  0001 C CNN
	1    4350 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5550 6250 5550
Connection ~ 5800 5550
Wire Wire Line
	4050 4850 4200 4850
Wire Wire Line
	6250 4850 4500 4850
Wire Wire Line
	4150 2900 4150 2800
Wire Wire Line
	1350 1550 1350 3100
Wire Wire Line
	1550 1450 1550 2900
$Comp
L Device:R_Small R8
U 1 1 5D990D9A
P 4150 2700
F 0 "R8" H 4250 2800 50  0000 L CNN
F 1 "10K" H 4250 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4150 2700 50  0001 C CNN
F 3 "~" H 4150 2700 50  0001 C CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5D991084
P 4150 3850
F 0 "R9" H 4250 3950 50  0000 L CNN
F 1 "10K" H 4250 3850 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4150 3850 50  0001 C CNN
F 3 "~" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4050 4150 3950
Wire Wire Line
	4500 3850 6250 3850
Connection ~ 1550 4050
Wire Wire Line
	1550 4050 1550 4450
NoConn ~ 6250 4750
NoConn ~ 6250 4650
Wire Wire Line
	4050 4050 4150 4050
Wire Wire Line
	4050 2900 4150 2900
Connection ~ 4150 4050
Wire Wire Line
	4150 4050 6250 4050
$Comp
L power:+3V3 #PWR0109
U 1 1 5D9F673B
P 4150 2500
F 0 "#PWR0109" H 4150 2350 50  0001 C CNN
F 1 "+3V3" H 4165 2673 50  0000 C CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 5D9F6956
P 4150 3650
F 0 "#PWR0110" H 4150 3500 50  0001 C CNN
F 1 "+3V3" H 4150 3800 50  0000 C CNN
F 2 "" H 4150 3650 50  0001 C CNN
F 3 "" H 4150 3650 50  0001 C CNN
	1    4150 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3750 4150 3650
Wire Wire Line
	4150 2600 4150 2500
Connection ~ 4150 2900
Wire Wire Line
	4150 2900 4500 2900
Connection ~ 1350 3100
Connection ~ 1550 2900
Wire Wire Line
	1550 2900 1550 4050
Wire Wire Line
	1350 3100 1350 4250
Wire Wire Line
	4500 2900 4500 3850
Wire Wire Line
	8950 1400 8800 1400
Wire Wire Line
	5600 3350 6250 3350
Wire Wire Line
	7550 3250 8200 3250
Connection ~ 7550 3250
Wire Wire Line
	7450 3450 8950 3450
Wire Wire Line
	8950 1400 8950 3450
Wire Notes Line
	650  600  650  6300
Wire Notes Line
	3750 6300 3750 600 
$EndSCHEMATC