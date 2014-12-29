EESchema Schematic File Version 2  date Пнд 29 Дек 2014 16:05:05
LIBS:C
LIBS:DA_POWER
LIBS:L
LIBS:R
LIBS:SPICE
LIBS:SWITCH
LIBS:VD
LIBS:Rectifier-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "29 dec 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7500 3750 0    60   ~ 0
+PSPICE \n* text after netlist\n.control\ntran 0.01ms 50ms\nset color0=white\nset color1=black\nset color2=red\nset color2=green\nset hcopydevtype=postscript\nset hcopypscolor=true\nhardcopy RectifierPlot.eps "/n0" "/n1"\nquit\n.endc
Text Notes 7450 3300 0    60   ~ 0
-PSPICE \n* text before netlist
Text Label 4650 3050 0    100  ~ 0
n0
Connection ~ 5300 3050
Wire Wire Line
	5500 3050 4100 3050
Wire Wire Line
	4100 3050 4100 3250
Connection ~ 5300 4050
Wire Wire Line
	5300 3850 5300 4300
Wire Wire Line
	5300 4050 5500 4050
Wire Wire Line
	6300 3250 6300 3050
Wire Wire Line
	7050 4300 7050 3900
Wire Wire Line
	4100 4300 4100 3750
Wire Wire Line
	5300 3050 5300 3250
Wire Wire Line
	6100 4050 6300 4050
Wire Wire Line
	7050 3300 7050 3050
Wire Wire Line
	7050 3050 6100 3050
Connection ~ 6300 3050
Wire Wire Line
	6300 3850 6300 4300
Connection ~ 6300 4050
$Comp
L 0 #GND01
U 1 1 54A13CD0
P 6300 4350
F 0 "#GND01" H 6300 4250 40  0001 C CNN
F 1 "0" H 6300 4280 40  0000 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L VDD #GND02
U 1 1 54A13CBB
P 5300 4350
F 0 "#GND02" H 5300 4250 40  0001 C CNN
F 1 "VDD" H 5300 4280 40  0000 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
Text Label 6600 3050 0    100  ~ 0
n1
$Comp
L D D4
U 1 1 54A13C49
P 6300 3550
F 0 "D4" V 6400 3300 60  0000 C CNN
F 1 "1N4148" V 6250 3200 60  0000 C CNN
	1    6300 3550
	0    -1   -1   0   
$EndComp
$Comp
L D D2
U 1 1 54A13C46
P 5800 4050
F 0 "D2" H 5800 4200 60  0000 C CNN
F 1 "1N4148" H 5800 3850 60  0000 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 54A13C43
P 5300 3550
F 0 "D3" V 5400 3300 60  0000 C CNN
F 1 "1N4148" V 5250 3200 60  0000 C CNN
	1    5300 3550
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 54A13C40
P 5800 3050
F 0 "D1" H 5800 3200 60  0000 C CNN
F 1 "1N4148" H 5800 2850 60  0000 C CNN
	1    5800 3050
	1    0    0    -1  
$EndComp
$Comp
L VDD #GND03
U 1 1 54A13BC9
P 7050 4350
F 0 "#GND03" H 7050 4250 40  0001 C CNN
F 1 "VDD" H 7050 4280 40  0000 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 54A13B3E
P 7050 3600
F 0 "R1" V 7150 3400 60  0000 C CNN
F 1 "10k" V 7000 3400 60  0000 C CNN
	1    7050 3600
	0    -1   -1   0   
$EndComp
$Comp
L 0 #GND04
U 1 1 54A13B2A
P 4100 4350
F 0 "#GND04" H 4100 4250 40  0001 C CNN
F 1 "0" H 4100 4280 40  0000 C CNN
	1    4100 4350
	1    0    0    -1  
$EndComp
$Comp
L V V1
U 1 1 54A13AF3
P 4100 3500
F 0 "V1" H 4350 3650 60  0000 C CNN
F 1 "SIN(0 10 50Hz)" H 4650 3400 60  0000 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
