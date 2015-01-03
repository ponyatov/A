EESchema Schematic File Version 2  date Птн 02 Янв 2015 22:39:21
LIBS:C
LIBS:DA_POWER
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
Title ""
Date "2 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5300 3300 5300 3750
Wire Wire Line
	5300 3750 3950 3750
Wire Wire Line
	3950 3750 3950 3650
Wire Wire Line
	3950 2950 3950 3050
Wire Wire Line
	3950 2350 3950 2250
Wire Wire Line
	3950 1650 3950 1600
Wire Wire Line
	3950 1600 5300 1600
Wire Wire Line
	5300 1600 5300 2650
$Comp
L R R1
U 1 1 5493F7AA
P 3950 2650
F 0 "R1" V 3850 2900 60  0000 C CNN
F 1 "1k" V 4000 2900 60  0000 C CNN
	1    3950 2650
	0    1    1    0   
$EndComp
Text Notes 2300 2650 0    90   ~ 0
Токоограничивающий\nрезистор
$Comp
L LED HL1
U 1 1 5498056A
P 3950 1950
F 0 "HL1" V 3850 2200 60  0000 C CNN
F 1 "LED" V 4000 2200 60  0000 C CNN
	1    3950 1950
	0    1    1    0   
$EndComp
Text Notes 2800 2000 0    90   ~ 0
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
Text Notes 4500 2950 0    90   ~ 0
Батарея\n9 вольт
$Comp
L SA SA1
U 1 1 54980DF0
P 3950 3350
F 0 "SA1" V 4050 3150 60  0000 C CNN
F 1 "SA" V 3850 3150 60  0000 C CNN
	1    3950 3350
	0    -1   -1   0   
$EndComp
Text Notes 2700 3400 0    90   ~ 0
Выключатель
$EndSCHEMATC
