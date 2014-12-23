EESchema Schematic File Version 2  date Втр 23 Дек 2014 23:17:31
LIBS:C
LIBS:DA_POWER
LIBS:L
LIBS:POWER
LIBS:R
LIBS:SPICE
LIBS:SWITCH
LIBS:VD
LIBS:led1-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "23 dec 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 3950 3550
Wire Wire Line
	3950 3300 3950 3550
Wire Wire Line
	3950 2250 3950 2700
Wire Wire Line
	5300 1700 5300 1400
Wire Wire Line
	5300 1400 2550 1400
Wire Wire Line
	5300 3300 5300 3550
Wire Wire Line
	5300 3550 2550 3550
Wire Wire Line
	3950 1650 3950 1400
Connection ~ 3950 1400
Wire Wire Line
	5300 2300 5300 2650
Text Notes 2750 3100 0    60   ~ 0
Токоограничивающий\nрезистор
$Comp
L R R1
U 1 1 5493F7AA
P 3950 3000
F 0 "R1" V 3850 3250 60  0000 C CNN
F 1 "1k" V 4000 3250 60  0000 C CNN
	1    3950 3000
	0    1    1    0   
$EndComp
$Comp
L LED HL1
U 1 1 5498056A
P 3950 1950
F 0 "HL1" V 3850 2200 60  0000 C CNN
F 1 "LED" V 4000 2200 60  0000 C CNN
	1    3950 1950
	0    1    1    0   
$EndComp
Text Notes 3050 2050 0    60   ~ 0
Светодиод
$Comp
L GB GB1
U 1 1 54980A8E
P 5300 3000
F 0 "GB1" V 5200 3250 60  0000 C CNN
F 1 "9V" V 5350 3250 60  0000 C CNN
	1    5300 3000
	0    1    1    0   
$EndComp
Text Notes 4750 3050 0    60   ~ 0
Батарея\n9 вольт
$Comp
L SA SA1
U 1 1 54980DF0
P 5300 2000
F 0 "SA1" V 5400 1800 60  0000 C CNN
F 1 "SA" V 5200 1800 60  0000 C CNN
	1    5300 2000
	0    -1   -1   0   
$EndComp
Text Notes 4500 2050 0    60   ~ 0
Выключатель
$EndSCHEMATC
