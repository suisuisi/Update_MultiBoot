
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
551.4182	
199.246Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
D:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2z
xread_checkpoint -auto_incremental -incremental E:/project/golden/example6/project_1.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2K
IE:/project/golden/example6/project_1.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
l
Command: %s
53*	vivadotcl2;
9synth_design -top system_wrapper -part xc7vx690tffg1927-2Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
|
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
	xc7vx690tZ17-347h px� 
l
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
	xc7vx690tZ17-349h px� 
G
Loading part %s157*device2
xc7vx690tffg1927-2Z21-403h px� 
]
$Part: %s does not have CEAM library.966*device2
xc7vx690tffg1927-2Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
10164Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1672.031 ; gain = 449.312
h px� 
�
synthesizing module '%s'%s4497*oasys2
system_wrapper2
 2U
QE:/project/golden/example6/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
14498@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_0_02
 2z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_0_02
 2
02
12z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_0_12
 2z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_0_12
 2
02
12z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_0_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_1_02
 2z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_1_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_1_02
 2
02
12z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_gpio_1_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_hwicap_0_02
 2|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_hwicap_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_hwicap_0_02
 2
02
12|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_hwicap_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_intc_0_02
 2z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_intc_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_intc_0_02
 2
02
12z
vE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_intc_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_timer_0_02
 2{
wE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_timer_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_timer_0_02
 2
02
12{
wE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_timer_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
generateout02
system_axi_timer_0_02
axi_timer_02O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
17898@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
generateout12
system_axi_timer_0_02
axi_timer_02O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
17898@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pwm02
system_axi_timer_0_02
axi_timer_02O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
17898@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axi_timer_02
system_axi_timer_0_02
262
232O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
17898@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_uartlite_0_02
 2~
zE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_uartlite_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_uartlite_0_02
 2
02
12~
zE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_axi_uartlite_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_clk_wiz_0_02
 2y
uE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_clk_wiz_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_clk_wiz_0_02
 2
02
12y
uE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_clk_wiz_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_mdm_1_12
 2u
qE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_mdm_1_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_mdm_1_12
 2
02
12u
qE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_mdm_1_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	Interrupt2
system_mdm_1_12
mdm_12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
18418@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mdm_12
system_mdm_1_12
302
292O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
18418@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_microblaze_0_12
 2|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_microblaze_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_microblaze_0_12
 2
02
12|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_microblaze_0_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 system_microblaze_0_axi_periph_02
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
21408@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_1RZ0IW62
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
138@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_1RZ0IW62
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_K87I2F2
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
1458@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_K87I2F2
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
1458@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m02_couplers_imp_QYRHL12
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
2778@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m02_couplers_imp_QYRHL12
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
2778@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m03_couplers_imp_1LIFQL02
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
4098@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m03_couplers_imp_1LIFQL02
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
4098@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m04_couplers_imp_E2VWV52
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
5418@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m04_couplers_imp_E2VWV52
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
5418@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m05_couplers_imp_17ILSXC2
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
6738@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m05_couplers_imp_17ILSXC2
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
6738@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m06_couplers_imp_1E95TTU2
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
8058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m06_couplers_imp_1E95TTU2
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
8058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m07_couplers_imp_7MB6C32
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
9378@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m07_couplers_imp_7MB6C32
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
9378@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_1LZPV072
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
13038@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_1LZPV072
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
13038@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xbar_02
 2t
pE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_xbar_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xbar_02
 2
02
12t
pE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_xbar_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_xbar_02
xbar2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
33178@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_xbar_02
xbar2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
33178@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2
system_xbar_02
402
382O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
33178@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 system_microblaze_0_axi_periph_02
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
21408@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$microblaze_0_local_memory_imp_OGE0N82
 2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
10698@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_dlmb_bram_if_cntlr_12
 2�
~E:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_dlmb_bram_if_cntlr_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_dlmb_bram_if_cntlr_12
 2
02
12�
~E:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_dlmb_bram_if_cntlr_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_dlmb_v10_12
 2x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_dlmb_v10_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_dlmb_v10_12
 2
02
12x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_dlmb_v10_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
LMB_Rst2
system_dlmb_v10_12

dlmb_v102O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12158@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

dlmb_v102
system_dlmb_v10_12
252
242O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12158@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_ilmb_bram_if_cntlr_12
 2�
~E:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_ilmb_bram_if_cntlr_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_ilmb_bram_if_cntlr_12
 2
02
12�
~E:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_ilmb_bram_if_cntlr_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_ilmb_v10_12
 2x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_ilmb_v10_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_ilmb_v10_12
 2
02
12x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_ilmb_v10_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
LMB_Rst2
system_ilmb_v10_12

ilmb_v102O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12618@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

ilmb_v102
system_ilmb_v10_12
252
242O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12618@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_lmb_bram_12
 2x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_lmb_bram_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_lmb_bram_12
 2
02
12x
tE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_lmb_bram_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2
system_lmb_bram_12

lmb_bram2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12868@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2
system_lmb_bram_12

lmb_bram2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12868@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

lmb_bram2
system_lmb_bram_12
162
142O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
12868@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$microblaze_0_local_memory_imp_OGE0N82
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
10698@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_rst_Clk_100M_02
 2|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_rst_Clk_100M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_rst_Clk_100M_02
 2
02
12|
xE:/project/golden/example6/project_1.runs/synth_1/.Xil/Vivado-14624-MININT-7LTFL4B/realtime/system_rst_Clk_100M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2
system_rst_Clk_100M_02
rst_Clk_100M2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
21248@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
system_rst_Clk_100M_02
rst_Clk_100M2O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
21248@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_Clk_100M2
system_rst_Clk_100M_02
102
82O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
21248@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xlconcat_0_02
 2s
oe:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconcat_v2_1_6_xlconcat2
 2i
ee:/project/golden/example6/project_1.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconcat_v2_1_6_xlconcat2
 2
02
12i
ee:/project/golden/example6/project_1.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xlconcat_0_02
 2
02
12s
oe:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12O
Ke:/project/golden/example6/project_1.gen/sources_1/bd/system/synth/system.v2
14498@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_wrapper2
 2
02
12U
QE:/project/golden/example6/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dip_switches_4bits_tri_i2
system_wrapper2U
QE:/project/golden/example6/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
318@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
push_buttons_4bits_tri_i2
system_wrapper2U
QE:/project/golden/example6/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
338@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In3[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In4[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In5[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In6[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In7[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In8[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
In9[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In10[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In11[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In12[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In13[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In14[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In15[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In16[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In17[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In18[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In19[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In20[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In21[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In22[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In23[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In24[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In25[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In26[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In27[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In28[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In29[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In30[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In31[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In32[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In33[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In34[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In35[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In36[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In37[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In38[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In39[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In40[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In41[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In42[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In43[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In44[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In45[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In46[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In47[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In48[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In49[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In50[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In51[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In52[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In53[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In54[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In55[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In56[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In57[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In58[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In59[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In60[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In61[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In62[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In63[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In64[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In65[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In66[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In67[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In68[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In69[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In70[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In71[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In72[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In73[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In74[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In75[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In76[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In77[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In78[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In79[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In80[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In81[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In82[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In83[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In84[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In85[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In86[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In87[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In88[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In89[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In90[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In91[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In92[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In93[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In94[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In95[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In96[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In97[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In98[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
In99[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In100[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In101[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

In102[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1795.836 ; gain = 573.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1795.836 ; gain = 573.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1795.836 ; gain = 573.117
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.0462

1795.8362
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_microblaze_0_1/system_microblaze_0_1/system_microblaze_0_1_in_context.xdc2
system_i/microblaze_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_microblaze_0_1/system_microblaze_0_1/system_microblaze_0_1_in_context.xdc2
system_i/microblaze_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_dlmb_v10_1/system_dlmb_v10_1/system_dlmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/dlmb_v10	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_dlmb_v10_1/system_dlmb_v10_1/system_dlmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/dlmb_v10	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_ilmb_v10_1/system_ilmb_v10_1/system_dlmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/ilmb_v10	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_ilmb_v10_1/system_ilmb_v10_1/system_dlmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/ilmb_v10	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_lmb_bram_1/system_lmb_bram_1/system_lmb_bram_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/lmb_bram	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_lmb_bram_1/system_lmb_bram_1/system_lmb_bram_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/lmb_bram	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2|
xe:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system_i/microblaze_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2|
xe:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system_i/microblaze_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2
{e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_mdm_1_1/system_mdm_1_1/system_mdm_1_1_in_context.xdc2
system_i/mdm_1	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2
{e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_mdm_1_1/system_mdm_1_1/system_mdm_1_1_in_context.xdc2
system_i/mdm_1	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_rst_Clk_100M_0/system_rst_Clk_100M_0/system_rst_Clk_100M_0_in_context.xdc2
system_i/rst_Clk_100M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_rst_Clk_100M_0/system_rst_Clk_100M_0/system_rst_Clk_100M_0_in_context.xdc2
system_i/rst_Clk_100M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0/system_axi_uartlite_0_0_in_context.xdc2
system_i/axi_uartlite_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0/system_axi_uartlite_0_0_in_context.xdc2
system_i/axi_uartlite_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc2
system_i/clk_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc2
system_i/clk_wiz_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0/system_axi_hwicap_0_0_in_context.xdc2
system_i/axi_hwicap_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0/system_axi_hwicap_0_0_in_context.xdc2
system_i/axi_hwicap_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0/system_axi_intc_0_0_in_context.xdc2
system_i/axi_intc_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0/system_axi_intc_0_0_in_context.xdc2
system_i/axi_intc_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1/system_axi_gpio_0_1_in_context.xdc2
system_i/axi_gpio_1	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1/system_axi_gpio_0_1_in_context.xdc2
system_i/axi_gpio_1	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_2	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_2	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0/system_axi_timer_0_0_in_context.xdc2
system_i/axi_timer_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�e:/project/golden/example6/project_1.gen/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0/system_axi_timer_0_0_in_context.xdc2
system_i/axi_timer_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
	sys_clk_p2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
138@Z18-619h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
278@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
288@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
298@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
308@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
318@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
328@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
338@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
348@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
358@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
368@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
378@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
388@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
398@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
408@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
418@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
dip_switches_4bits_tri_i[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
428@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
438@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
448@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
458@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
push_buttons_4bits_tri_i[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
468@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[3]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
478@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[2]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
488@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[1]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
498@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
led_tri_o[0]2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2
508@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2C
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2A
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2"
 .Xil/system_wrapper_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2A
?E:/project/golden/example6/project_1.srcs/constrs_1/new/sys.xdc2"
 .Xil/system_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2D
@E:/project/golden/example6/project_1.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2D
@E:/project/golden/example6/project_1.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1819.4962
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0082

1819.4962
0.000Z17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
system_i/axi_hwicap_02

s_axi_aclk2
10.000Z38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002-
+system_i/microblaze_0_local_memory/lmb_bram2
clka2
10.000Z38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Loading part: xc7vx690tffg1927-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
%s
*synth2^
\Part Resources:
DSPs: 3600 (col length:200)
BRAMs: 2940 (col length: RAMB18 200 RAMB36 100)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
redefining clock '%s'565*oasys2
	sys_clk_pZ8-565h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:26 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
K
%s
*synth23
1|      |BlackBox name               |Instances |
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
K
%s
*synth23
1|1     |system_axi_gpio_0_0         |         1|
h p
x
� 
K
%s
*synth23
1|2     |system_axi_gpio_0_1         |         1|
h p
x
� 
K
%s
*synth23
1|3     |system_axi_gpio_1_0         |         1|
h p
x
� 
K
%s
*synth23
1|4     |system_axi_hwicap_0_0       |         1|
h p
x
� 
K
%s
*synth23
1|5     |system_axi_intc_0_0         |         1|
h p
x
� 
K
%s
*synth23
1|6     |system_axi_timer_0_0        |         1|
h p
x
� 
K
%s
*synth23
1|7     |system_axi_uartlite_0_0     |         1|
h p
x
� 
K
%s
*synth23
1|8     |system_clk_wiz_0_0          |         1|
h p
x
� 
K
%s
*synth23
1|9     |system_mdm_1_1              |         1|
h p
x
� 
K
%s
*synth23
1|10    |system_microblaze_0_1       |         1|
h p
x
� 
K
%s
*synth23
1|11    |system_xbar_0               |         1|
h p
x
� 
K
%s
*synth23
1|12    |system_rst_Clk_100M_0       |         1|
h p
x
� 
K
%s
*synth23
1|13    |system_dlmb_bram_if_cntlr_1 |         1|
h p
x
� 
K
%s
*synth23
1|14    |system_dlmb_v10_1           |         1|
h p
x
� 
K
%s
*synth23
1|15    |system_ilmb_bram_if_cntlr_1 |         1|
h p
x
� 
K
%s
*synth23
1|16    |system_ilmb_v10_1           |         1|
h p
x
� 
K
%s
*synth23
1|17    |system_lmb_bram_1           |         1|
h p
x
� 
K
%s
*synth23
1+------+----------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
E
%s*synth2-
++------+--------------------------+------+
h px� 
E
%s*synth2-
+|      |Cell                      |Count |
h px� 
E
%s*synth2-
++------+--------------------------+------+
h px� 
E
%s*synth2-
+|1     |system_axi_gpio_0         |     2|
h px� 
E
%s*synth2-
+|3     |system_axi_gpio_1         |     1|
h px� 
E
%s*synth2-
+|4     |system_axi_hwicap_0       |     1|
h px� 
E
%s*synth2-
+|5     |system_axi_intc_0         |     1|
h px� 
E
%s*synth2-
+|6     |system_axi_timer_0        |     1|
h px� 
E
%s*synth2-
+|7     |system_axi_uartlite_0     |     1|
h px� 
E
%s*synth2-
+|8     |system_clk_wiz_0          |     1|
h px� 
E
%s*synth2-
+|9     |system_dlmb_bram_if_cntlr |     1|
h px� 
E
%s*synth2-
+|10    |system_dlmb_v10           |     1|
h px� 
E
%s*synth2-
+|11    |system_ilmb_bram_if_cntlr |     1|
h px� 
E
%s*synth2-
+|12    |system_ilmb_v10           |     1|
h px� 
E
%s*synth2-
+|13    |system_lmb_bram           |     1|
h px� 
E
%s*synth2-
+|14    |system_mdm_1              |     1|
h px� 
E
%s*synth2-
+|15    |system_microblaze_0       |     1|
h px� 
E
%s*synth2-
+|16    |system_rst_Clk_100M       |     1|
h px� 
E
%s*synth2-
+|17    |system_xbar               |     1|
h px� 
E
%s*synth2-
+|18    |IBUF                      |     1|
h px� 
E
%s*synth2-
+|19    |OBUF                      |     1|
h px� 
E
%s*synth2-
++------+--------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 1819.496 ; gain = 596.777
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 20 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:26 . Memory (MB): peak = 1819.496 ; gain = 573.117
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1819.496 ; gain = 596.777
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0272

1819.4962
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1819.4962
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ed32d6afZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
882
1512
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:432

00:00:432

1819.4962

1228.184Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1819.4962
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2F
DE:/project/golden/example6/project_1.runs/synth_1/system_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Sep 20 09:20:05 2024Z17-206h px� 


End Record