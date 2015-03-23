EESchema Schematic File Version 2  date Срд 07 Янв 2015 13:03:55
LIBS:C
LIBS:DA_POWER
LIBS:FET
LIBS:L
LIBS:POWER
LIBS:R
LIBS:SPICE
LIBS:SWITCH
LIBS:VD
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "7 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	6550 2050 6550 1600
Wire Notes Line
	6550 2050 7400 2050
Wire Notes Line
	7400 2050 7400 1600
Wire Notes Line
	7400 1600 6550 1600
Wire Wire Line
	5200 4100 5000 4100
Wire Wire Line
	5800 4100 5950 4100
Wire Wire Line
	6400 3500 6400 3400
Wire Wire Line
	5000 3400 5000 4200
Wire Wire Line
	5000 2800 5000 1800
Connection ~ 5000 4100
Wire Wire Line
	7500 3250 7500 2900
Wire Wire Line
	7500 3900 7500 5050
Wire Wire Line
	6400 1800 6400 2000
Wire Wire Line
	7500 2300 7500 1800
Connection ~ 6400 1800
Wire Wire Line
	6400 2800 6400 2600
Wire Wire Line
	5000 4900 5000 5050
Wire Wire Line
	5000 5050 7500 5050
Connection ~ 6400 5050
Wire Wire Line
	6400 4300 6400 5050
Wire Wire Line
	7500 1800 7300 1800
Wire Wire Line
	5000 1800 6700 1800
$Comp
L 1N4007 VD2
U 1 1 54ACF572
P 7000 1800
F 0 "VD2" H 7000 1950 60  0000 C CNN
F 1 "1N4007" H 7000 1600 60  0000 C CNN
	1    7000 1800
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54ABCBAD
P 5500 4100
F 0 "R4" H 5500 4250 60  0000 C CNN
F 1 "1k" H 5500 3950 60  0000 C CNN
	1    5500 4100
	1    0    0    -1  
$EndComp
$Comp
L LDR R3
U 1 1 54ABC474
P 5000 4550
F 0 "R3" V 5050 4150 60  0000 C CNN
F 1 "LDR" V 4900 4150 60  0000 C CNN
	1    5000 4550
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 54AACE67
P 5000 3100
F 0 "R1" V 5100 2850 60  0000 C CNN
F 1 "10k" V 4950 2850 60  0000 C CNN
	1    5000 3100
	0    -1   -1   0   
$EndComp
$Comp
L LED VD1
U 1 1 54AACDD4
P 6400 2300
F 0 "VD1" V 6350 2600 60  0000 C CNN
F 1 "LED" V 6500 2600 60  0000 C CNN
	1    6400 2300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 54AACDB8
P 6400 3100
F 0 "R2" V 6500 2850 60  0000 C CNN
F 1 "390R" V 6350 2800 60  0000 C CNN
	1    6400 3100
	0    -1   -1   0   
$EndComp
$Comp
L SA SA1
U 1 1 54AACD9A
P 7500 2600
F 0 "SA1" V 7500 2400 60  0000 C CNN
F 1 "~" V 7400 2350 60  0000 C CNN
	1    7500 2600
	0    -1   -1   0   
$EndComp
$Comp
L GB GB1
U 1 1 54AACD82
P 7500 3600
F 0 "GB1" V 7500 3800 60  0000 C CNN
F 1 "~" V 7550 3850 60  0000 C CNN
	1    7500 3600
	0    1    1    0   
$EndComp
$Comp
L FET FET1
U 1 1 54AACD45
P 6300 3900
F 0 "FET1" H 6750 4000 60  0000 C CNN
F 1 "2N7000" H 6800 3850 60  0000 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
$EndSCHEMATC