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
L my_symbols:MAX17498A U1
U 1 1 5E54CF88
P 8500 4300
F 0 "U1" H 9100 5050 50  0000 L CNN
F 1 "MAX17498A" H 8950 3550 50  0000 L CNN
F 2 "Package_DFN_QFN:TQFN-16-1EP_3x3mm_P0.5mm_EP1.23x1.23mm" H 8500 4300 50  0001 C CNN
F 3 "" H 8500 4300 50  0001 C CNN
	1    8500 4300
	1    0    0    -1  
$EndComp
Text Label 10050 1650 2    50   ~ 0
UVLO
Text Label 9200 1900 0    50   ~ 0
OVI
Text Label 8200 5400 1    50   ~ 0
UVLO
Text Label 8600 5400 1    50   ~ 0
OVI
Wire Wire Line
	8200 5400 8200 5100
Wire Wire Line
	8600 5400 8600 5100
Text Label 9200 1250 0    50   ~ 0
Vdc
Text Label 10000 2050 2    50   ~ 0
DCgnd
$Comp
L Device:R R10
U 1 1 5E550454
P 9550 1250
F 0 "R10" V 9450 1400 50  0000 C CNN
F 1 "3M" V 9434 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 1250 50  0001 C CNN
F 3 "~" H 9550 1250 50  0001 C CNN
F 4 "RDC1" V 9550 1250 50  0000 C CNN "Sch ref"
	1    9550 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E550CDC
P 9550 1450
F 0 "R11" V 9450 1600 50  0000 C CNN
F 1 "3M" V 9434 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 1450 50  0001 C CNN
F 3 "~" H 9550 1450 50  0001 C CNN
F 4 "RDC2" V 9550 1450 50  0000 C CNN "Sch ref"
	1    9550 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5E550F32
P 9550 1650
F 0 "R12" V 9450 1800 50  0000 C CNN
F 1 "3M" V 9434 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 1650 50  0001 C CNN
F 3 "~" H 9550 1650 50  0001 C CNN
F 4 "RDC3" V 9550 1650 50  0000 C CNN "Sch ref"
	1    9550 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E5510F7
P 9550 1850
F 0 "R13" V 9450 2000 50  0000 C CNN
F 1 "87.15k" V 9434 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 1850 50  0001 C CNN
F 3 "~" H 9550 1850 50  0001 C CNN
F 4 "REN" V 9550 1850 50  0000 C CNN "Sch ref"
	1    9550 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E5514C9
P 9550 2050
F 0 "R14" V 9450 2200 50  0000 C CNN
F 1 "24.9k" V 9434 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 2050 50  0001 C CNN
F 3 "~" H 9550 2050 50  0001 C CNN
F 4 "ROVI" V 9550 2050 50  0000 C CNN "Sch ref"
	1    9550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 1250 9700 1450
Wire Wire Line
	9400 1450 9400 1650
Wire Wire Line
	9700 1650 9700 1850
Wire Wire Line
	9700 1650 10050 1650
Connection ~ 9700 1650
Wire Wire Line
	10000 2050 9700 2050
Wire Wire Line
	9400 1850 9400 1900
Wire Wire Line
	9200 1900 9400 1900
Connection ~ 9400 1900
Wire Wire Line
	9400 1900 9400 2050
Wire Wire Line
	9200 1250 9400 1250
Wire Notes Line
	9050 1000 9050 2200
Wire Notes Line
	9050 2200 10250 2200
Wire Notes Line
	10250 2200 10250 1000
Wire Notes Line
	10250 1000 9050 1000
Text Notes 9100 950  0    50   ~ 0
Soft-start/OVP programming
Text Notes 9050 2950 0    50   ~ 0
ROVI = 24.9 kohm\nREN = ROVI * (VOVI / Vstart - 1) kohm\nRSUM = (ROVI + REN) * (Vstart / 1.23 - 1) kohm\nRDC1 = RDC2 = RDC3 = RSUM / 3\nVStart = 100V\nOVP at 450 V\nREN = 87.15 kohm\nRSum = 8997.7 kohm\nRDC1,2,3 = 2999 kohm @ 150V each - 7.5 mW
Text Label 1550 1100 0    50   ~ 0
Vdc
$Comp
L Device:R R2
U 1 1 5E56E899
P 1950 1100
F 0 "R2" V 1900 1300 50  0000 C CNN
F 1 "348k" V 1834 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 1100 50  0001 C CNN
F 3 "~" H 1950 1100 50  0001 C CNN
	1    1950 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E56F709
P 1950 1300
F 0 "R3" V 1900 1500 50  0000 C CNN
F 1 "348k" V 1834 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 1300 50  0001 C CNN
F 3 "~" H 1950 1300 50  0001 C CNN
	1    1950 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E57048B
P 1950 1500
F 0 "R4" V 1900 1700 50  0000 C CNN
F 1 "348k" V 1834 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1880 1500 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5E570CE8
P 2200 1750
F 0 "C4" H 2085 1659 50  0000 R CNN
F 1 "3.3uF" H 2085 1750 50  0000 R CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 2238 1600 50  0001 C CNN
F 3 "~" H 2200 1750 50  0001 C CNN
F 4 "Cstart" H 2085 1841 50  0000 R CNN "Sch ref"
	1    2200 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1100 1800 1100
Wire Wire Line
	2100 1100 2100 1300
Wire Wire Line
	1800 1300 1800 1500
Wire Wire Line
	2100 1500 2200 1500
Wire Wire Line
	2200 1500 2200 1600
Text Label 2700 1900 0    50   ~ 0
DCgnd
Text Label 2350 1500 2    50   ~ 0
IN
Text Label 7400 4600 0    50   ~ 0
IN
Wire Wire Line
	7400 4600 7700 4600
$Comp
L Device:D D3
U 1 1 5E582054
P 2650 1600
F 0 "D3" H 2650 1816 50  0000 C CNN
F 1 "D" H 2650 1725 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2650 1600 50  0001 C CNN
F 3 "~" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1600 2450 1600
Wire Wire Line
	2450 1600 2450 1500
Wire Wire Line
	2200 1500 2450 1500
Connection ~ 2200 1500
Wire Wire Line
	2200 1900 3000 1900
Connection ~ 2200 1900
Text Label 1250 1600 2    50   ~ 0
Vcc
$Comp
L Device:C C1
U 1 1 5E58360D
P 1100 1750
F 0 "C1" H 1215 1841 50  0000 L CNN
F 1 "2uF" H 1215 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1138 1600 50  0001 C CNN
F 3 "~" H 1100 1750 50  0001 C CNN
F 4 "Cvcc" H 1215 1659 50  0000 L CNN "Schematic ref"
	1    1100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1900 1400 1900
Wire Wire Line
	1100 1600 1250 1600
Text Label 8400 5400 1    50   ~ 0
Vcc
Wire Wire Line
	8400 5100 8400 5400
Text Label 2600 2550 0    50   ~ 0
IN
Wire Wire Line
	2600 2550 2800 2550
Text Label 2600 2800 0    50   ~ 0
LX
Wire Wire Line
	2600 2800 3100 2800
Wire Wire Line
	3100 2800 3100 2750
Text Label 2750 2200 0    50   ~ 0
Vdc
$Comp
L Device:D D4
U 1 1 5E592739
P 4150 2500
F 0 "D4" H 4250 2600 50  0000 C CNN
F 1 "D" H 4150 2625 50  0000 C CNN
F 2 "Diode_SMD:D_SMC" H 4150 2500 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
	1    4150 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E596A66
P 3650 2750
F 0 "#PWR0101" H 3650 2500 50  0001 C CNN
F 1 "GND" H 3655 2577 50  0000 C CNN
F 2 "" H 3650 2750 50  0001 C CNN
F 3 "" H 3650 2750 50  0001 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
Wire Notes Line
	850  850  850  3000
Wire Notes Line
	850  3000 4500 3000
Wire Notes Line
	4500 3000 4500 850 
Wire Notes Line
	4500 850  850  850 
Text Notes 950  800  0    50   ~ 0
Startup and converter
Text Label 7400 4400 0    50   ~ 0
LX
Wire Wire Line
	7400 4400 7700 4400
$Comp
L Device:D D1
U 1 1 5E5BD2F0
P 1550 3850
F 0 "D1" H 1550 3634 50  0000 C CNN
F 1 "D" H 1550 3725 50  0000 C CNN
F 2 "Diode_SMD:D_SMC" H 1550 3850 50  0001 C CNN
F 3 "~" H 1550 3850 50  0001 C CNN
	1    1550 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5E5BED33
P 2650 4150
F 0 "C6" H 2765 4241 50  0000 L CNN
F 1 "0.1uF" H 2765 4150 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 2688 4000 50  0001 C CNN
F 3 "~" H 2650 4150 50  0001 C CNN
F 4 "630V" H 2765 4059 50  0000 L CNN "Voltage rating"
	1    2650 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5E5BF853
P 3000 3850
F 0 "L1" V 3190 3850 50  0000 C CNN
F 1 "1uH" V 3099 3850 50  0000 C CNN
F 2 "Inductor_SMD:L_1008_2520Metric" H 3000 3850 50  0001 C CNN
F 3 "~" H 3000 3850 50  0001 C CNN
	1    3000 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C8
U 1 1 5E5BFFEB
P 4050 4300
F 0 "C8" H 4168 4391 50  0000 L CNN
F 1 "100uF" H 4168 4300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 4088 4150 50  0001 C CNN
F 3 "~" H 4050 4300 50  0001 C CNN
F 4 "600V" H 4168 4209 50  0000 L CNN "Voltage rating"
	1    4050 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E5C059B
P 3400 3950
F 0 "R7" H 3470 3996 50  0000 L CNN
F 1 "1.2Mohm" H 3470 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 3950 50  0001 C CNN
F 3 "~" H 3400 3950 50  0001 C CNN
	1    3400 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E5C287F
P 3400 4300
F 0 "R8" H 3470 4346 50  0000 L CNN
F 1 "1.2Mohm" H 3470 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3330 4300 50  0001 C CNN
F 3 "~" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Connection ~ 2650 4450
Wire Wire Line
	2650 4450 3400 4450
Connection ~ 3400 4450
Wire Wire Line
	3400 4450 4050 4450
Wire Wire Line
	4050 3800 3400 3800
Wire Wire Line
	4050 3800 4050 4150
Wire Wire Line
	3300 3800 3400 3800
Connection ~ 3400 3800
Wire Wire Line
	3300 3800 3300 3850
Wire Wire Line
	3300 3850 3150 3850
Wire Wire Line
	2850 3850 2650 3850
Wire Wire Line
	2650 3850 2650 4000
Connection ~ 2650 3850
Wire Wire Line
	2650 4300 2650 4450
Text Label 4800 4450 2    50   ~ 0
DCgnd
Wire Wire Line
	4050 4450 4800 4450
Connection ~ 4050 4450
Text Label 4750 3800 2    50   ~ 0
Vdc
Wire Wire Line
	4750 3800 4050 3800
Connection ~ 4050 3800
Wire Notes Line
	900  3550 900  4600
Wire Notes Line
	900  4600 4950 4600
Wire Notes Line
	4950 3550 900  3550
Wire Notes Line
	4950 3550 4950 4600
Wire Wire Line
	3400 4150 3400 4100
Text Notes 950  3500 0    50   ~ 0
Input filter
Text Label 4500 2750 2    50   ~ 0
Vout
$Comp
L Device:C C2
U 1 1 5E5D9B5B
P 1550 1750
F 0 "C2" H 1665 1841 50  0000 L CNN
F 1 "80nF" H 1665 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 1600 50  0001 C CNN
F 3 "~" H 1550 1750 50  0001 C CNN
F 4 "Css" H 1665 1659 50  0000 L CNN "Sch ref"
	1    1550 1750
	1    0    0    -1  
$EndComp
Connection ~ 1550 1900
Wire Wire Line
	1550 1900 2200 1900
Text Label 1700 1600 2    50   ~ 0
SS
Wire Wire Line
	1700 1600 1550 1600
Text Label 9600 4000 2    50   ~ 0
SS
Text Label 8800 5400 1    50   ~ 0
LIM
Wire Wire Line
	8800 5400 8800 5100
Text Label 1150 2300 0    50   ~ 0
LIM
$Comp
L Device:R R1
U 1 1 5E5E8B04
P 1400 2050
F 0 "R1" H 1470 2141 50  0000 L CNN
F 1 "50k" H 1470 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1330 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
F 4 "Rlim" H 1470 1959 50  0000 L CNN "Sch ref"
	1    1400 2050
	1    0    0    -1  
$EndComp
Connection ~ 1400 1900
Wire Wire Line
	1400 1900 1550 1900
Wire Wire Line
	1150 2300 1400 2300
Wire Wire Line
	1400 2300 1400 2200
Text Notes 900  2600 0    50   ~ 0
Current limit =1A\nSoft start = 10ms\n
Text Label 1300 1000 2    50   ~ 0
SLOPE
Text Label 9600 4600 2    50   ~ 0
SLOPE
Wire Wire Line
	9600 4600 9300 4600
$Comp
L Device:Jumper JP1
U 1 1 5E5F5FDC
P 1000 1300
F 0 "JP1" V 1046 1212 50  0000 R CNN
F 1 "Jumper" V 955 1212 50  0000 R CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1000 1300 50  0001 C CNN
F 3 "~" H 1000 1300 50  0001 C CNN
	1    1000 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 1600 1000 1600
Connection ~ 1100 1600
Wire Wire Line
	1300 1000 1000 1000
Text Notes 4850 1500 0    50   ~ 0
Cstart = 0.75 * (Cvcc + Iin * tss * 0.1 + 0.04 * tss * Qg * fsw / 10^6) uF\n= 0.75 *( Cvcc + 1.8 * 10 * 0.1 + 0.04 * 10 * Qg * 250k / 1E6)\n= 0.75 * (Cvcc + 1.8 + 0.61)uF\nRstart = (Vstart - 10) * 50 / (1 + Cstart) kohm\nChoose Cvcc = 2uF\nCstart = 3.3uF\nVstart = 100\nRstart = 1046 kohm\nRDC1,2,3 = 348 kohm - 1/8W or better
Text Notes 2250 1200 0    50   ~ 0
Rin1,2,3
Text Notes 10450 1250 0    50   ~ 0
RDC1,2,3
Text Label 8400 3150 3    50   ~ 0
REF
Wire Wire Line
	8400 3500 8400 3150
Text Label 1450 2800 0    50   ~ 0
DCgnd
Text Label 2350 2800 2    50   ~ 0
REF
$Comp
L Device:C C3
U 1 1 5E614EE9
P 1950 2800
F 0 "C3" V 1698 2800 50  0000 C CNN
F 1 "100pF" V 1789 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 2650 50  0001 C CNN
F 3 "~" H 1950 2800 50  0001 C CNN
	1    1950 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2800 1450 2800
Wire Wire Line
	2100 2800 2350 2800
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5E61A499
P 3000 2550
F 0 "Q1" H 3204 2596 50  0000 L CNN
F 1 "FQD1N80TM" H 3204 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 3200 2650 50  0001 C CNN
F 3 "" H 3000 2550 50  0001 C CNN
	1    3000 2550
	1    0    0    -1  
$EndComp
Text Label 7400 4200 0    50   ~ 0
DCgnd
Wire Wire Line
	7200 4200 7200 4950
Wire Wire Line
	7200 4950 7700 4950
Wire Wire Line
	7200 4200 7700 4200
$Comp
L my_symbols:ECO2425SLD T1
U 1 1 5E63C76E
P 3600 2000
F 0 "T1" H 3600 2565 50  0000 C CNN
F 1 "ECO2425SLD" H 3600 2474 50  0000 C CNN
F 2 "EEP_2:ECO2425SLD-D01H017" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1900 3000 1800
Wire Wire Line
	3000 1800 3150 1800
Wire Wire Line
	3150 1700 3150 1600
Wire Wire Line
	2800 1600 3150 1600
Wire Wire Line
	2750 2200 3150 2200
Wire Wire Line
	3100 2350 3100 2000
Wire Wire Line
	3100 2000 3150 2000
NoConn ~ 3150 2100
Wire Wire Line
	4150 2350 4150 1900
Wire Wire Line
	4150 1800 4050 1800
Wire Wire Line
	4050 1900 4150 1900
Connection ~ 4150 1900
Wire Wire Line
	4150 1900 4150 1800
Wire Wire Line
	4050 2100 4050 2200
Wire Wire Line
	4150 2650 4150 2750
Wire Wire Line
	4150 2750 4050 2750
Wire Wire Line
	3750 2750 3650 2750
Wire Wire Line
	3750 2750 3750 2400
Wire Wire Line
	3750 2400 4050 2400
Wire Wire Line
	4050 2400 4050 2200
Connection ~ 4050 2200
Wire Wire Line
	4150 2750 4500 2750
Connection ~ 4150 2750
Text Notes 4850 2450 0    50   ~ 0
Fsw = 250kHz\nVin = 120VDC to 400VDC\ndIP/d% = Vin / (Lp * Fsw * 100)\ndIS/d% = NP/NS * Vin / (Lp * Fsw * 100)\nIp must not exceed 1A\nEppk = 1/2*Lp *Ippk^2\nIppk = Vin / (Lp * Fsw * 100)\nEppk = 1/2 * Vin^2 * dc^2 / (Lp * Fsw^2)\naim for 50% duty cycle at Vin = minimum gives 10W output -> Lp = 720uH\nIppk = 333.3 mA\nLsdi/dt = 5.8V \n
Text Notes 3200 800  0    50   ~ 0
NP1+NP2=76 / 1:1\nNB = 19 / 1:4\nNS1 = NS2 = 13 / 1:5.84\n
Wire Wire Line
	8850 3500 8850 3250
Wire Wire Line
	8850 3250 9850 3250
Wire Wire Line
	9850 3250 9850 4000
Wire Wire Line
	9300 4000 9850 4000
Text Label 8850 3250 3    50   ~ 0
EA+
Wire Wire Line
	9300 4400 9600 4400
Text Label 9600 4400 2    50   ~ 0
EA-
Text Notes 4900 3150 0    50   ~ 0
Target Vout=6V to allow 1V of regulation overhead for LDO\nFlyback on secondary = approx 6.8V\nFlyback on NB = approx 10 volts\nVoltage on cap = approx 9.3 volts\nRtop/Rbot ratio = 6.62\nChoose Rb = 30kohm\nRtop = 198.6 kohm - round to 200
$Comp
L Device:R R6
U 1 1 5E6FCE53
P 3050 1150
F 0 "R6" V 2753 1150 50  0000 C CNN
F 1 "200k" V 2844 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2980 1150 50  0001 C CNN
F 3 "~" H 3050 1150 50  0001 C CNN
F 4 "Rtop" V 2935 1150 50  0000 C CNN "Sch ref"
	1    3050 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E6FD3D3
P 3550 1150
F 0 "R9" V 3253 1150 50  0000 C CNN
F 1 "30k" V 3344 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 1150 50  0001 C CNN
F 3 "~" H 3550 1150 50  0001 C CNN
F 4 "Rbot" V 3435 1150 50  0000 C CNN "Sch ref"
	1    3550 1150
	0    1    1    0   
$EndComp
Text Label 4050 1150 2    50   ~ 0
DCgnd
Wire Wire Line
	4050 1150 3700 1150
Wire Wire Line
	3200 1150 3300 1150
Wire Wire Line
	2900 1150 2700 1150
Wire Wire Line
	2700 1150 2700 1350
Wire Wire Line
	2700 1350 2450 1350
Wire Wire Line
	2450 1350 2450 1500
Connection ~ 2450 1500
Text Label 3500 1300 2    50   ~ 0
EA-
Wire Wire Line
	3500 1300 3300 1300
Wire Wire Line
	3300 1300 3300 1150
Connection ~ 3300 1150
Wire Wire Line
	3300 1150 3400 1150
Text Label 9600 4200 2    50   ~ 0
COMP
Text Label 10550 4200 2    50   ~ 0
Vcc
Wire Wire Line
	9300 4200 9750 4200
Wire Wire Line
	10350 4200 10550 4200
$Comp
L Device:Jumper JP2
U 1 1 5E710B97
P 10050 4200
F 0 "JP2" H 10050 4464 50  0000 C CNN
F 1 "Jumper" H 10050 4373 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 10050 4200 50  0001 C CNN
F 3 "~" H 10050 4200 50  0001 C CNN
	1    10050 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5E7178ED
P 8450 6100
F 0 "J2" V 8604 5812 50  0000 R CNN
F 1 "P1-4" V 8513 5812 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8450 6100 50  0001 C CNN
F 3 "~" H 8450 6100 50  0001 C CNN
	1    8450 6100
	0    -1   -1   0   
$EndComp
Text Label 8350 5600 3    50   ~ 0
UVLO
Text Label 8550 5600 3    50   ~ 0
OVI
Wire Wire Line
	8350 5600 8350 5900
Wire Wire Line
	8550 5600 8550 5900
Text Label 8450 5600 3    50   ~ 0
Vcc
Wire Wire Line
	8450 5900 8450 5600
Text Label 8650 5600 3    50   ~ 0
LIM
Wire Wire Line
	8650 5600 8650 5900
Text Label 10250 4750 0    50   ~ 0
SS
Text Label 10250 5050 0    50   ~ 0
SLOPE
Text Label 10250 4950 0    50   ~ 0
EA-
Text Label 10250 4850 0    50   ~ 0
COMP
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5E72F517
P 10750 4950
F 0 "J4" H 10722 4832 50  0000 R CNN
F 1 "P5-8" H 10722 4923 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10750 4950 50  0001 C CNN
F 3 "~" H 10750 4950 50  0001 C CNN
	1    10750 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 5050 10550 5050
Wire Wire Line
	10250 4850 10550 4850
Wire Wire Line
	10550 4950 10250 4950
Wire Wire Line
	10250 4750 10550 4750
Wire Wire Line
	7700 4000 7400 4000
Text Label 7400 4000 0    50   ~ 0
PGOOD
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 5E741D93
P 6100 4250
F 0 "J1" H 6208 4531 50  0000 C CNN
F 1 "P13-16" H 6208 4440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6100 4250 50  0001 C CNN
F 3 "~" H 6100 4250 50  0001 C CNN
	1    6100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4150 6300 4150
Wire Wire Line
	6600 4350 6300 4350
Wire Wire Line
	6300 4250 6600 4250
Wire Wire Line
	6600 4450 6300 4450
Text Label 6600 4450 2    50   ~ 0
IN
Text Label 6600 4350 2    50   ~ 0
LX
Text Label 6600 4250 2    50   ~ 0
DCgnd
Text Label 6600 4150 2    50   ~ 0
PGOOD
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E75002A
P 8500 2450
F 0 "J3" V 8562 2594 50  0000 L CNN
F 1 "P9-12" V 8653 2594 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8500 2450 50  0001 C CNN
F 3 "~" H 8500 2450 50  0001 C CNN
	1    8500 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 2950 8600 2650
Text Label 8600 2950 1    50   ~ 0
EA+
Wire Wire Line
	8400 2950 8400 2650
Text Label 8400 2950 1    50   ~ 0
REF
NoConn ~ 8500 2650
NoConn ~ 8300 2650
$Comp
L Device:D D2
U 1 1 5E76A9DD
P 1950 2150
F 0 "D2" V 1996 2071 50  0000 R CNN
F 1 "D" V 1905 2071 50  0000 R CNN
F 2 "Diode_SMD:D_SMA" H 1950 2150 50  0001 C CNN
F 3 "~" H 1950 2150 50  0001 C CNN
	1    1950 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2000 3100 2000
Connection ~ 3100 2000
$Comp
L Device:C C5
U 1 1 5E76F564
P 2300 2300
F 0 "C5" V 2250 2450 50  0000 C CNN
F 1 "2.2nF" V 2250 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 2150 50  0001 C CNN
F 3 "~" H 2300 2300 50  0001 C CNN
	1    2300 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E76FBBE
P 2300 2150
F 0 "R5" V 2350 2000 50  0000 C CNN
F 1 "100k" V 2350 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 2230 2150 50  0001 C CNN
F 3 "~" H 2300 2150 50  0001 C CNN
	1    2300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 2300 2100 2300
Wire Wire Line
	2100 2300 2100 2150
Wire Wire Line
	2100 2150 2150 2150
Wire Wire Line
	2100 2300 1950 2300
Connection ~ 2100 2300
Wire Wire Line
	2450 2300 2600 2300
Wire Wire Line
	2600 2300 2600 2250
Wire Wire Line
	2450 2150 2600 2150
Wire Wire Line
	2600 2250 2750 2250
Wire Wire Line
	2750 2250 2750 2200
Connection ~ 2600 2250
Wire Wire Line
	2600 2250 2600 2150
Text Label 1150 3850 0    50   ~ 0
LINE
Text Label 1200 4450 0    50   ~ 0
NEUTRAL
Wire Wire Line
	1000 3850 1400 3850
Wire Wire Line
	1000 4450 2650 4450
$Comp
L Connector:Conn_WallPlug_Earth P1
U 1 1 5E7A5173
P 1100 5150
F 0 "P1" H 1167 5475 50  0000 C CNN
F 1 "Conn_WallPlug_Earth" H 1167 5384 50  0000 C CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTB_2,5_3-GF-7,62_1x03_P7.62mm_Horizontal_ThreadedFlange_MountHole" H 1500 5150 50  0001 C CNN
F 3 "~" H 1500 5150 50  0001 C CNN
	1    1100 5150
	1    0    0    -1  
$EndComp
Text Label 2900 4900 2    50   ~ 0
LINE
Text Label 1800 5250 2    50   ~ 0
NEUTRAL
$Comp
L Connector:TestPoint TP1
U 1 1 5E7B1112
P 2000 5450
F 0 "TP1" H 2058 5568 50  0000 L CNN
F 1 "Earth" H 2058 5477 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.50mm_Drill1.0mm" H 2200 5450 50  0001 C CNN
F 3 "~" H 2200 5450 50  0001 C CNN
	1    2000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E7BD9A8
P 3350 2750
F 0 "#FLG0101" H 3350 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 3350 2923 50  0000 C CNN
F 2 "" H 3350 2750 50  0001 C CNN
F 3 "~" H 3350 2750 50  0001 C CNN
	1    3350 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2750 3650 2750
Connection ~ 3650 2750
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 5E7C5858
P 7000 3300
F 0 "J5" H 6972 3182 50  0000 R CNN
F 1 "Power out" H 6972 3273 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7000 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	-1   0    0    1   
$EndComp
Text Label 6400 3100 0    50   ~ 0
Vout
Wire Wire Line
	6400 3100 6800 3100
Wire Wire Line
	6800 3200 6800 3100
Connection ~ 6800 3100
$Comp
L power:GND #PWR0102
U 1 1 5E7D1FD5
P 6550 3500
F 0 "#PWR0102" H 6550 3250 50  0001 C CNN
F 1 "GND" H 6555 3327 50  0000 C CNN
F 2 "" H 6550 3500 50  0001 C CNN
F 3 "" H 6550 3500 50  0001 C CNN
	1    6550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3500 6550 3400
Wire Wire Line
	6550 3400 6800 3400
Wire Wire Line
	6800 3300 6800 3400
Connection ~ 6800 3400
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E7E6053
P 2700 1150
F 0 "#FLG0102" H 2700 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 2700 1323 50  0000 C CNN
F 2 "" H 2700 1150 50  0001 C CNN
F 3 "~" H 2700 1150 50  0001 C CNN
	1    2700 1150
	1    0    0    -1  
$EndComp
Connection ~ 2700 1150
$Comp
L Connector:Screw_Terminal_01x03 J6
U 1 1 5E7F93F6
P 3000 5200
F 0 "J6" H 3080 5242 50  0000 L CNN
F 1 "Power in" H 3080 5151 50  0000 L CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTB_2,5_3-GF-7,62_1x03_P7.62mm_Horizontal_ThreadedFlange_MountHole" H 3000 5200 50  0001 C CNN
F 3 "~" H 3000 5200 50  0001 C CNN
	1    3000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5050 2600 5100
Wire Wire Line
	2600 5100 2800 5100
Wire Wire Line
	1950 5250 1950 5200
Wire Wire Line
	1950 5200 2800 5200
Wire Wire Line
	1400 5250 1950 5250
Wire Wire Line
	2000 5450 2500 5450
Wire Wire Line
	2500 5450 2500 5300
Wire Wire Line
	2500 5300 2800 5300
Connection ~ 2000 5450
$Comp
L Device:D D5
U 1 1 5E82E6F5
P 4050 1350
F 0 "D5" H 4050 1134 50  0000 C CNN
F 1 "D" H 4050 1225 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 4050 1350 50  0001 C CNN
F 3 "~" H 4050 1350 50  0001 C CNN
	1    4050 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 1350 3150 1350
Wire Wire Line
	3150 1350 3150 1600
Connection ~ 3150 1600
$Comp
L Device:C C9
U 1 1 5E862643
P 4300 1600
F 0 "C9" H 4415 1646 50  0000 L CNN
F 1 "3.3uF" H 4415 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4338 1450 50  0001 C CNN
F 3 "~" H 4300 1600 50  0001 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1450 4300 1350
Wire Wire Line
	4300 1350 4200 1350
Text Label 4300 2150 1    50   ~ 0
DCgnd
Wire Wire Line
	4300 2150 4300 1750
Text Label 4450 1350 2    50   ~ 0
Vaux
Wire Wire Line
	4450 1350 4300 1350
Connection ~ 4300 1350
$Comp
L Connector:Conn_01x08_Female J7
U 1 1 5E879D70
P 8000 1600
F 0 "J7" H 8028 1576 50  0000 L CNN
F 1 "Power interface" H 8028 1485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 8000 1600 50  0001 C CNN
F 3 "~" H 8000 1600 50  0001 C CNN
	1    8000 1600
	1    0    0    -1  
$EndComp
Text Label 7300 1500 0    50   ~ 0
DCgnd
Wire Wire Line
	7300 1500 7800 1500
Text Label 7300 1400 0    50   ~ 0
IN
Wire Wire Line
	7300 1400 7800 1400
Text Label 7300 1300 0    50   ~ 0
Vaux
Wire Wire Line
	7300 1300 7800 1300
$Comp
L Device:R R15
U 1 1 5E8AB498
P 7100 1600
F 0 "R15" V 6893 1600 50  0000 C CNN
F 1 "2M" V 6984 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7030 1600 50  0001 C CNN
F 3 "~" H 7100 1600 50  0001 C CNN
	1    7100 1600
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5E8ABF99
P 7900 1100
F 0 "D6" H 7900 1316 50  0000 C CNN
F 1 "D_Zener" H 7900 1225 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 7900 1100 50  0001 C CNN
F 3 "~" H 7900 1100 50  0001 C CNN
	1    7900 1100
	1    0    0    -1  
$EndComp
Text Label 8450 1100 2    50   ~ 0
DCgnd
Wire Wire Line
	8450 1100 8050 1100
Wire Wire Line
	7750 1100 7650 1100
Wire Wire Line
	7650 1100 7650 1600
Wire Wire Line
	7650 1600 7250 1600
Text Label 6550 1600 0    50   ~ 0
LINE
Wire Wire Line
	6550 1600 6950 1600
Wire Wire Line
	1400 5050 1650 5050
$Comp
L Device:Fuse_Small F1
U 1 1 5E8DCCDD
P 1950 5050
F 0 "F1" H 1950 5235 50  0000 C CNN
F 1 "10A" H 1950 5144 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 1950 5050 50  0001 C CNN
F 3 "~" H 1950 5050 50  0001 C CNN
	1    1950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1600 7800 1600
Connection ~ 7650 1600
Text Label 7300 1900 0    50   ~ 0
Vout
Wire Wire Line
	7300 1700 7800 1700
Text Label 7300 1700 0    50   ~ 0
PGOOD
Wire Wire Line
	7300 1900 7800 1900
$Comp
L power:GND #PWR0103
U 1 1 5E8FCCE8
P 7300 2000
F 0 "#PWR0103" H 7300 1750 50  0001 C CNN
F 1 "GND" H 7305 1827 50  0000 C CNN
F 2 "" H 7300 2000 50  0001 C CNN
F 3 "" H 7300 2000 50  0001 C CNN
	1    7300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2000 7800 2000
Text Label 7300 1800 0    50   ~ 0
Vcc
Wire Wire Line
	7300 1800 7800 1800
$Comp
L Device:CP C7
U 1 1 5E9364A8
P 3900 2750
F 0 "C7" V 3645 2750 50  0000 C CNN
F 1 "200uF" V 3736 2750 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3938 2600 50  0001 C CNN
F 3 "~" H 3900 2750 50  0001 C CNN
	1    3900 2750
	0    1    1    0   
$EndComp
Connection ~ 3750 2750
$Comp
L Device:Fuse_Small F2
U 1 1 5E942D76
P 2400 4900
F 0 "F2" H 2400 5175 50  0000 C CNN
F 1 "1A" H 2400 5084 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" H 2400 4900 50  0001 C CNN
F 3 "~" H 2400 4900 50  0001 C CNN
F 4 "Slow-blow" H 2400 4993 50  0000 C CNN "Type"
	1    2400 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4900 2500 4900
Wire Wire Line
	2050 5050 2600 5050
Wire Wire Line
	1650 5050 1650 4900
Wire Wire Line
	1650 4900 2300 4900
Connection ~ 1650 5050
Wire Wire Line
	1650 5050 1850 5050
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5E66C27A
P 2150 3850
F 0 "TH1" V 1860 3850 50  0000 C CNN
F 1 "Thermistor_NTC" V 1951 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 2150 3900 50  0001 C CNN
F 3 "~" H 2150 3900 50  0001 C CNN
	1    2150 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3850 2000 3850
Wire Wire Line
	2300 3850 2650 3850
$Comp
L Device:R R16
U 1 1 5E6E4707
P 5450 3500
F 0 "R16" V 5243 3500 50  0000 C CNN
F 1 "1k" V 5334 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5380 3500 50  0001 C CNN
F 3 "~" H 5450 3500 50  0001 C CNN
	1    5450 3500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5E6E6566
P 5850 3500
F 0 "D7" H 5843 3245 50  0000 C CNN
F 1 "5V power" H 5843 3336 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5850 3500 50  0001 C CNN
F 3 "~" H 5850 3500 50  0001 C CNN
	1    5850 3500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E6E68CF
P 6100 3600
F 0 "#PWR01" H 6100 3350 50  0001 C CNN
F 1 "GND" H 6105 3427 50  0000 C CNN
F 2 "" H 6100 3600 50  0001 C CNN
F 3 "" H 6100 3600 50  0001 C CNN
	1    6100 3600
	1    0    0    -1  
$EndComp
Text Label 5100 3500 0    50   ~ 0
Vout
Wire Wire Line
	5100 3500 5300 3500
Wire Wire Line
	5600 3500 5700 3500
Wire Wire Line
	6000 3500 6100 3500
Wire Wire Line
	6100 3500 6100 3600
Wire Wire Line
	1400 5450 2000 5450
$Comp
L Mechanical:MountingHole H1
U 1 1 5E7CC8F4
P 1700 5800
F 0 "H1" H 1800 5846 50  0000 L CNN
F 1 "MountingHole" H 1800 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380" H 1700 5800 50  0001 C CNN
F 3 "~" H 1700 5800 50  0001 C CNN
	1    1700 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E7CD238
P 1700 6000
F 0 "H2" H 1800 6046 50  0000 L CNN
F 1 "MountingHole" H 1800 5955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380" H 1700 6000 50  0001 C CNN
F 3 "~" H 1700 6000 50  0001 C CNN
	1    1700 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5E7D55C7
P 1700 6200
F 0 "H3" H 1800 6246 50  0000 L CNN
F 1 "MountingHole" H 1800 6155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380" H 1700 6200 50  0001 C CNN
F 3 "~" H 1700 6200 50  0001 C CNN
	1    1700 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5E7DD8AD
P 1700 6400
F 0 "H4" H 1800 6446 50  0000 L CNN
F 1 "MountingHole" H 1800 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380" H 1700 6400 50  0001 C CNN
F 3 "~" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
