EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
EELAYER 25 0
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
L vinay_jk U4
U 1 1 6220AACF
P 2900 4700
F 0 "U4" H 5750 6500 60  0000 C CNN
F 1 "vinay_jk" H 5750 6700 60  0000 C CNN
F 2 "" H 5750 6650 60  0000 C CNN
F 3 "" H 5750 6650 60  0000 C CNN
	1    2900 4700
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_3 U5
U 1 1 6220ADEF
P 4300 2850
F 0 "U5" H 4300 2850 60  0000 C CNN
F 1 "adc_bridge_3" H 4300 3000 60  0000 C CNN
F 2 "" H 4300 2850 60  0000 C CNN
F 3 "" H 4300 2850 60  0000 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U6
U 1 1 6220AFFA
P 7150 2850
F 0 "U6" H 7150 2850 60  0000 C CNN
F 1 "dac_bridge_2" H 7200 3000 60  0000 C CNN
F 2 "" H 7150 2850 60  0000 C CNN
F 3 "" H 7150 2850 60  0000 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 6220B088
P 1850 3850
F 0 "v1" H 1650 3950 60  0000 C CNN
F 1 "pulse" H 1650 3800 60  0000 C CNN
F 2 "R1" H 1550 3850 60  0000 C CNN
F 3 "" H 1850 3850 60  0000 C CNN
	1    1850 3850
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 6220B196
P 2400 3850
F 0 "v2" H 2200 3950 60  0000 C CNN
F 1 "pulse" H 2200 3800 60  0000 C CNN
F 2 "R1" H 2100 3850 60  0000 C CNN
F 3 "" H 2400 3850 60  0000 C CNN
	1    2400 3850
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 6220C44B
P 2950 3850
F 0 "v3" H 2750 3950 60  0000 C CNN
F 1 "pulse" H 2750 3800 60  0000 C CNN
F 2 "R1" H 2650 3850 60  0000 C CNN
F 3 "" H 2950 3850 60  0000 C CNN
	1    2950 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 6220C4F0
P 1850 4300
F 0 "#PWR1" H 1850 4050 50  0001 C CNN
F 1 "GND" H 1850 4150 50  0000 C CNN
F 2 "" H 1850 4300 50  0001 C CNN
F 3 "" H 1850 4300 50  0001 C CNN
	1    1850 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 6220C510
P 2400 4300
F 0 "#PWR2" H 2400 4050 50  0001 C CNN
F 1 "GND" H 2400 4150 50  0000 C CNN
F 2 "" H 2400 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0001 C CNN
	1    2400 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 6220C69B
P 2950 4300
F 0 "#PWR3" H 2950 4050 50  0001 C CNN
F 1 "GND" H 2950 4150 50  0000 C CNN
F 2 "" H 2950 4300 50  0001 C CNN
F 3 "" H 2950 4300 50  0001 C CNN
	1    2950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2800 5050 2800
Wire Wire Line
	4850 2900 5050 2900
Wire Wire Line
	4850 3000 5050 3000
Wire Wire Line
	6450 2800 6700 2800
Wire Wire Line
	6450 2900 6700 2900
Wire Wire Line
	1800 2800 3700 2800
Wire Wire Line
	1800 2800 1800 3400
Wire Wire Line
	1800 3400 1850 3400
Wire Wire Line
	2400 3400 2400 2900
Wire Wire Line
	2400 2900 3700 2900
Wire Wire Line
	2950 3400 2950 3000
Wire Wire Line
	2950 3000 3700 3000
$Comp
L plot_v1 U7
U 1 1 6220C77F
P 8000 2800
F 0 "U7" H 8000 3300 60  0000 C CNN
F 1 "plot_v1" H 8200 3150 60  0000 C CNN
F 2 "" H 8000 2800 60  0000 C CNN
F 3 "" H 8000 2800 60  0000 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 6220C815
P 8700 2800
F 0 "U8" H 8700 3300 60  0000 C CNN
F 1 "plot_v1" H 8900 3150 60  0000 C CNN
F 2 "" H 8700 2800 60  0000 C CNN
F 3 "" H 8700 2800 60  0000 C CNN
	1    8700 2800
	1    0    0    -1  
$EndComp
Text GLabel 9050 2800 2    60   Output ~ 0
q
Text GLabel 9050 3000 2    60   Output ~ 0
q_bar
Wire Wire Line
	7700 2800 9050 2800
Wire Wire Line
	7700 2900 9000 2900
Wire Wire Line
	9000 2900 9000 3000
Wire Wire Line
	9000 3000 9050 3000
Wire Wire Line
	8000 2600 8000 2800
Connection ~ 8000 2800
Wire Wire Line
	8700 2600 8700 2900
Connection ~ 8700 2900
$Comp
L plot_v1 U1
U 1 1 6220C9B2
P 2000 2650
F 0 "U1" H 2000 3150 60  0000 C CNN
F 1 "plot_v1" H 2200 3000 60  0000 C CNN
F 2 "" H 2000 2650 60  0000 C CNN
F 3 "" H 2000 2650 60  0000 C CNN
	1    2000 2650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 6220CC20
P 2450 2650
F 0 "U2" H 2450 3150 60  0000 C CNN
F 1 "plot_v1" H 2650 3000 60  0000 C CNN
F 2 "" H 2450 2650 60  0000 C CNN
F 3 "" H 2450 2650 60  0000 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 6220CC99
P 2900 2650
F 0 "U3" H 2900 3150 60  0000 C CNN
F 1 "plot_v1" H 3100 3000 60  0000 C CNN
F 2 "" H 2900 2650 60  0000 C CNN
F 3 "" H 2900 2650 60  0000 C CNN
	1    2900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2800 2000 2450
Text GLabel 1800 2800 0    60   Input ~ 0
j
Text GLabel 2400 2900 0    60   Input ~ 0
k
Text GLabel 2950 3000 0    60   Input ~ 0
clk
Connection ~ 2000 2800
Wire Wire Line
	2450 2450 2450 2900
Connection ~ 2450 2900
Wire Wire Line
	2900 2450 3100 2450
Wire Wire Line
	3100 2450 3100 3000
Connection ~ 3100 3000
$EndSCHEMATC
