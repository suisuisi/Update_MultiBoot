
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
E:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
,Skipped adding '%s' file in synth run script21234*project2D
B..\..\..\..\vitis_ide_v5\spi_flash_rw_v0\Debug\spi_flash_rw_v0.elfZ1-4468h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2d
bC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
j
Command: %s
53*	vivadotcl29
7synth_design -top system_wrapper -part xc7k325tffv900-2Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7k325tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7k325tZ17-349h px� 
E
Loading part %s157*device2
xc7k325tffv900-2Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7k325tffv900-2Z21-9227h px� 
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
29952Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1535.996 ; gain = 448.941
h px� 
�
synthesizing module '%s'%s4497*oasys2
system_wrapper2
 2n
jC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IOBUF2
 29
5E:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
782098@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IOBUF2
 2
02
129
5E:/Xilinx/Vivado/2024.1/scripts/rt/data/unisim_comp.v2	
782098@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
53668@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_bram_ctrl_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_bram_ctrl_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_bram_ctrl_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_bram_ctrl_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_bram_ctrl_0_bram_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_bram_ctrl_0_bram_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_bram_ctrl_0_bram_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_bram_ctrl_0_bram_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2
system_axi_bram_ctrl_0_bram_02
axi_bram_ctrl_0_bram2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
59158@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2
system_axi_bram_ctrl_0_bram_02
axi_bram_ctrl_0_bram2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
59158@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axi_bram_ctrl_0_bram2
system_axi_bram_ctrl_0_bram_02
162
142h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
59158@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_0_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_0_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_0_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_gpio_1_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_1_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_gpio_1_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_gpio_1_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_hwicap_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_hwicap_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_hwicap_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_hwicap_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_intc_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_intc_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_intc_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_intc_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_quad_spi_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_quad_spi_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_quad_spi_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_quad_spi_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
cfgclk2
system_axi_quad_spi_0_02
axi_quad_spi_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60428@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
cfgmclk2
system_axi_quad_spi_0_02
axi_quad_spi_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60428@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
preq2
system_axi_quad_spi_0_02
axi_quad_spi_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60428@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axi_quad_spi_02
system_axi_quad_spi_0_02
402
372h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60428@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_timer_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_timer_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_timer_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_timer_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
generateout02
system_axi_timer_0_02
axi_timer_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60808@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
generateout12
system_axi_timer_0_02
axi_timer_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60808@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
pwm02
system_axi_timer_0_02
axi_timer_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60808@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axi_timer_02
system_axi_timer_0_02
262
232h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
60808@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_axi_uart16550_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_uart16550_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_axi_uart16550_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_axi_uart16550_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

baudoutn2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ddis2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dtrn2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
out1n2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
out2n2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rtsn2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
rxrdyn2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
txrdyn2
system_axi_uart16550_0_02
axi_uart16550_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
axi_uart16550_02
system_axi_uart16550_0_02
352
272h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61048@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_clk_wiz_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_clk_wiz_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_clk_wiz_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_clk_wiz_0_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_mdm_1_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_mdm_1_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_mdm_1_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_mdm_1_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	Interrupt2
system_mdm_1_12
mdm_12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61368@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Debug_SYS_Rst2
system_mdm_1_12
mdm_12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61368@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mdm_12
system_mdm_1_12
302
282h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61368@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_microblaze_0_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_microblaze_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_microblaze_0_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_microblaze_0_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWADDR2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWLEN2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWSIZE2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWBURST2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWLOCK2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWCACHE2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWPROT2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWQOS2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_AWVALID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_WDATA2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_WSTRB2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_WLAST2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_WVALID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_BREADY2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_IC_ARID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_DC_AWID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
M_AXI_DC_ARID2
system_microblaze_0_12
microblaze_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
microblaze_02
system_microblaze_0_12
1262
1082h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
61678@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2"
 system_microblaze_0_axi_periph_02
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
67008@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_1RZ0IW62
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_02	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
3448@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_02	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
3448@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_02
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
3448@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_1RZ0IW62
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
138@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_K87I2F2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
4018@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_12	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
7328@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_12	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
7328@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_12
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
7328@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_K87I2F2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
4018@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m02_couplers_imp_QYRHL12
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
7898@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_22
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_2_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_22
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_2_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_22
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_2_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_22
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_2_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_22	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
11208@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_22	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
11208@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_22
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
11208@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m02_couplers_imp_QYRHL12
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
7898@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m03_couplers_imp_1LIFQL02
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
11778@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_32
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_3_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_32
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_3_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_32
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_3_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_32
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_3_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_32	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
15088@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_32	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
15088@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_32
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
15088@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m03_couplers_imp_1LIFQL02
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
11778@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m04_couplers_imp_E2VWV52
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
15658@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_42
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_4_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_42
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_4_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_42
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_4_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_42
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_4_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_42	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
18968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_42	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
18968@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_42
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
18968@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m04_couplers_imp_E2VWV52
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
15658@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m05_couplers_imp_17ILSXC2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
19538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_52
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_5_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_52
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_5_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_52
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_5_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_52
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_5_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_52	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
22848@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_52	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
22848@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_52
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
22848@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m05_couplers_imp_17ILSXC2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
19538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m06_couplers_imp_1E95TTU2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
23418@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_62
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_6_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_62
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_6_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_62
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_6_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_62
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_6_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_62	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
26728@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_62	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
26728@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_62
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
26728@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m06_couplers_imp_1E95TTU2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
23418@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m07_couplers_imp_7MB6C32
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
27298@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_72
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_7_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_72
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_7_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_72
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_7_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_72
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_7_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_72	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
30608@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_72	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
30608@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_72
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
30608@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m07_couplers_imp_7MB6C32
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
27298@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m08_couplers_imp_15IETBD2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
31178@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_82
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_8_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_82
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_8_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_82
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_8_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_82
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_8_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
system_auto_pc_82	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
34488@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
system_auto_pc_82	
auto_pc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
34488@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_pc2
system_auto_pc_82
562
542h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
34488@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m08_couplers_imp_15IETBD2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
31178@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m09_couplers_imp_GMVR082
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
35058@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_cc_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_cc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_cc_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_cc_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awregion2
system_auto_cc_02	
auto_cc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
37968@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
system_auto_cc_02	
auto_cc2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
37968@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_cc2
system_auto_cc_02
742
722h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
37968@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m09_couplers_imp_GMVR082
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
35058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m10_couplers_imp_QYIUP12
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
38718@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_ds_92
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_9_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_ds_92
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_ds_9_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awregion2
system_auto_ds_92	
auto_ds2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
41508@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awqos2
system_auto_ds_92	
auto_ds2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
41508@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
system_auto_ds_92	
auto_ds2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
41508@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arqos2
system_auto_ds_92	
auto_ds2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
41508@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_ds2
system_auto_ds_92
722
682h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
41508@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m10_couplers_imp_QYIUP12
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
38718@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_1LZPV072
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44558@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_pc_92
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_9_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_pc_92
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_pc_9_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_us_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_us_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awregion2
system_auto_us_02	
auto_us2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
47708@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
system_auto_us_02	
auto_us2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
47708@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_us2
system_auto_us_02
722
702h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
47708@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_1LZPV072
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44558@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s01_couplers_imp_ZCOGIU2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
48438@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_us_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_us_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awregion2
system_auto_us_12	
auto_us2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
51228@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
system_auto_us_12	
auto_us2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
51228@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_us2
system_auto_us_12
722
702h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
51228@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s01_couplers_imp_ZCOGIU2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
48438@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s02_couplers_imp_O1CEHG2
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
51958@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_auto_us_22
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_2_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_auto_us_22
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_auto_us_2_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arregion2
system_auto_us_22	
auto_us2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
53308@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
auto_us2
system_auto_us_22
342
332h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
53308@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s02_couplers_imp_O1CEHG2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
51958@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xbar_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_xbar_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xbar_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_xbar_0_stub.v2
68@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
s_axi_awready2
32
system_xbar_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
93028@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
s_axi_bresp2
62
system_xbar_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
93068@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
s_axi_bvalid2
32
system_xbar_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
93078@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
s_axi_wready2
32
system_xbar_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
93158@Z8-689h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_bid2
system_xbar_02
xbar2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
92458@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_rid2
system_xbar_02
xbar2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
92458@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2
system_xbar_02
742
722h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
92458@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 system_microblaze_0_axi_periph_02
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
67008@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
$microblaze_0_local_memory_imp_OGE0N82
 2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
42218@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
system_dlmb_bram_if_cntlr_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_dlmb_bram_if_cntlr_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_dlmb_bram_if_cntlr_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_dlmb_bram_if_cntlr_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_dlmb_v10_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_dlmb_v10_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_dlmb_v10_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_dlmb_v10_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
LMB_Rst2
system_dlmb_v10_12

dlmb_v102h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
43678@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

dlmb_v102
system_dlmb_v10_12
252
242h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
43678@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_ilmb_bram_if_cntlr_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_ilmb_bram_if_cntlr_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_ilmb_bram_if_cntlr_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_ilmb_bram_if_cntlr_1_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_ilmb_v10_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_ilmb_v10_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_ilmb_v10_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_ilmb_v10_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
LMB_Rst2
system_ilmb_v10_12

ilmb_v102h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44138@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

ilmb_v102
system_ilmb_v10_12
252
242h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44138@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_lmb_bram_12
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_lmb_bram_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_lmb_bram_12
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_lmb_bram_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rsta_busy2
system_lmb_bram_12

lmb_bram2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44388@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	rstb_busy2
system_lmb_bram_12

lmb_bram2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44388@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

lmb_bram2
system_lmb_bram_12
162
142h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
44388@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
$microblaze_0_local_memory_imp_OGE0N82
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
42218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_mig_7series_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_mig_7series_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_mig_7series_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_mig_7series_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
app_sr_active2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
app_ref_ack2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

app_zq_ack2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_bid2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	s_axi_rid2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
device_temp2
system_mig_7series_0_02
mig_7series_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
mig_7series_02
system_mig_7series_0_02
642
582h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66138@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_proc_sys_reset_0_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_proc_sys_reset_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_proc_sys_reset_0_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_proc_sys_reset_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2
system_proc_sys_reset_0_02
proc_sys_reset_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66728@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
system_proc_sys_reset_0_02
proc_sys_reset_02h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66728@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
proc_sys_reset_02
system_proc_sys_reset_0_02
102
82h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66728@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2!
system_rst_mig_7series_0_200M_02
 2�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_rst_mig_7series_0_200M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
system_rst_mig_7series_0_200M_02
 2
02
12�
�C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/.Xil/Vivado-19272-DESKTOP-E0LD1A9/realtime/system_rst_mig_7series_0_200M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2!
system_rst_mig_7series_0_200M_02
rst_mig_7series_0_200M2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66818@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2!
system_rst_mig_7series_0_200M_02
rst_mig_7series_0_200M2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66818@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2!
system_rst_mig_7series_0_200M_02
rst_mig_7series_0_200M2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66818@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2!
system_rst_mig_7series_0_200M_02
rst_mig_7series_0_200M2h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66818@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_mig_7series_0_200M2!
system_rst_mig_7series_0_200M_02
102
62h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
66818@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xlconcat_0_02
 2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconcat_v2_1_6_xlconcat2
 2�
~c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconcat_v2_1_6_xlconcat2
 2
02
12�
~c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v2
598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xlconcat_0_02
 2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconcat_0_0/synth/system_xlconcat_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xlconstant_0_02
 2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconstant_0_0/synth/system_xlconstant_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xlconstant_v1_1_9_xlconstant2
 2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xlconstant_v1_1_9_xlconstant2
 2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xlconstant_0_02
 2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconstant_0_0/synth/system_xlconstant_0_0.v2
538@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
system_xlconstant_1_02
 2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconstant_1_0/synth/system_xlconstant_1_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2.
,xlconstant_v1_1_9_xlconstant__parameterized02
 2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
,xlconstant_v1_1_9_xlconstant__parameterized02
 2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v2
688@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_xlconstant_1_02
 2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xlconstant_1_0/synth/system_xlconstant_1_0.v2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12h
dc:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/synth/system.v2
53668@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system_wrapper2
 2
02
12n
jC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/hdl/system_wrapper.v2
138@Z8-6155h px� 
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
9Port %s in module %s is either unconnected or has no load4866*oasys2

In103[0]2
xlconcat_v2_1_6_xlconcatZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1687.738 ; gain = 600.684
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1687.738 ; gain = 600.684
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1687.738 ; gain = 600.684
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
00:00:00.3522

1687.7382
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
5Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_microblaze_0_1/system_microblaze_0_1/system_microblaze_0_1_in_context.xdc2
system_i/microblaze_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_microblaze_0_1/system_microblaze_0_1/system_microblaze_0_1_in_context.xdc2
system_i/microblaze_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_dlmb_v10_1/system_dlmb_v10_1/system_ilmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/dlmb_v10	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_dlmb_v10_1/system_dlmb_v10_1/system_ilmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/dlmb_v10	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_ilmb_v10_1/system_ilmb_v10_1/system_ilmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/ilmb_v10	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_ilmb_v10_1/system_ilmb_v10_1/system_ilmb_v10_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/ilmb_v10	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_ilmb_bram_if_cntlr_1/system_ilmb_bram_if_cntlr_1/system_dlmb_bram_if_cntlr_1_in_context.xdc29
5system_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_lmb_bram_1/system_lmb_bram_1/system_lmb_bram_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/lmb_bram	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_lmb_bram_1/system_lmb_bram_1/system_lmb_bram_1_in_context.xdc2/
+system_i/microblaze_0_local_memory/lmb_bram	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system_i/microblaze_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_xbar_0/system_xbar_0/system_xbar_0_in_context.xdc2)
%system_i/microblaze_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_9/system_auto_pc_9/system_auto_pc_9_in_context.xdc29
5system_i/microblaze_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_9/system_auto_pc_9/system_auto_pc_9_in_context.xdc29
5system_i/microblaze_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0/system_auto_us_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/s00_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_0/system_auto_us_0/system_auto_us_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/s00_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1/system_auto_us_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/s01_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_1/system_auto_us_1/system_auto_us_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/s01_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_2/system_auto_us_2/system_auto_us_2_in_context.xdc29
5system_i/microblaze_0_axi_periph/s02_couplers/auto_us	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_us_2/system_auto_us_2/system_auto_us_2_in_context.xdc29
5system_i/microblaze_0_axi_periph/s02_couplers/auto_us	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_0/system_auto_ds_0/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m00_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_0/system_auto_ds_0/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m00_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_0/system_auto_pc_0/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_1/system_auto_ds_1/system_auto_ds_1_in_context.xdc29
5system_i/microblaze_0_axi_periph/m01_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_1/system_auto_ds_1/system_auto_ds_1_in_context.xdc29
5system_i/microblaze_0_axi_periph/m01_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1/system_auto_pc_1_in_context.xdc29
5system_i/microblaze_0_axi_periph/m01_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_1/system_auto_pc_1/system_auto_pc_1_in_context.xdc29
5system_i/microblaze_0_axi_periph/m01_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_2/system_auto_ds_2/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m02_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_2/system_auto_ds_2/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m02_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_2/system_auto_pc_2/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m02_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_2/system_auto_pc_2/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m02_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_3/system_auto_ds_3/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m03_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_3/system_auto_ds_3/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m03_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_3/system_auto_pc_3/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m03_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_3/system_auto_pc_3/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m03_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_4/system_auto_ds_4/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m04_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_4/system_auto_ds_4/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m04_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_4/system_auto_pc_4/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m04_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_4/system_auto_pc_4/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m04_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_5/system_auto_ds_5/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m05_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_5/system_auto_ds_5/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m05_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_5/system_auto_pc_5/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m05_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_5/system_auto_pc_5/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m05_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_6/system_auto_ds_6/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m06_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_6/system_auto_ds_6/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m06_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_6/system_auto_pc_6/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m06_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_6/system_auto_pc_6/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m06_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_7/system_auto_ds_7/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m07_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_7/system_auto_ds_7/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m07_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_7/system_auto_pc_7/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m07_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_7/system_auto_pc_7/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m07_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_8/system_auto_ds_8/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m08_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_8/system_auto_ds_8/system_auto_ds_7_in_context.xdc29
5system_i/microblaze_0_axi_periph/m08_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_8/system_auto_pc_8/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m08_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_pc_8/system_auto_pc_8/system_auto_pc_8_in_context.xdc29
5system_i/microblaze_0_axi_periph/m08_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0/system_auto_cc_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/m09_couplers/auto_cc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_cc_0/system_auto_cc_0/system_auto_cc_0_in_context.xdc29
5system_i/microblaze_0_axi_periph/m09_couplers/auto_cc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_9/system_auto_ds_9/system_auto_ds_9_in_context.xdc29
5system_i/microblaze_0_axi_periph/m10_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_auto_ds_9/system_auto_ds_9/system_auto_ds_9_in_context.xdc29
5system_i/microblaze_0_axi_periph/m10_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_mdm_1_1/system_mdm_1_1/system_mdm_1_1_in_context.xdc2
system_i/mdm_1	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_mdm_1_1/system_mdm_1_1/system_mdm_1_1_in_context.xdc2
system_i/mdm_1	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc2
system_i/clk_wiz_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0/system_clk_wiz_0_0_in_context.xdc2
system_i/clk_wiz_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0/system_axi_hwicap_0_0_in_context.xdc2
system_i/axi_hwicap_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0/system_axi_hwicap_0_0_in_context.xdc2
system_i/axi_hwicap_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0/system_axi_intc_0_0_in_context.xdc2
system_i/axi_intc_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0/system_axi_intc_0_0_in_context.xdc2
system_i/axi_intc_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0/system_axi_gpio_0_0_in_context.xdc2
system_i/axi_gpio_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1/system_axi_gpio_0_1_in_context.xdc2
system_i/axi_gpio_1	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1/system_axi_gpio_0_1_in_context.xdc2
system_i/axi_gpio_1	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0/system_axi_gpio_1_0_in_context.xdc2
system_i/axi_gpio_2	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_gpio_1_0/system_axi_gpio_1_0/system_axi_gpio_1_0_in_context.xdc2
system_i/axi_gpio_2	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0/system_axi_timer_0_0_in_context.xdc2
system_i/axi_timer_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_timer_0_0/system_axi_timer_0_0/system_axi_timer_0_0_in_context.xdc2
system_i/axi_timer_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0_in_context.xdc2
system_i/axi_quad_spi_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0/system_axi_quad_spi_0_0_in_context.xdc2
system_i/axi_quad_spi_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/system_mig_7series_0_0_in_context.xdc2
system_i/mig_7series_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/system_mig_7series_0_0_in_context.xdc2
system_i/mig_7series_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0_in_context.xdc2#
system_i/rst_mig_7series_0_200M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0/system_rst_mig_7series_0_200M_0_in_context.xdc2#
system_i/rst_mig_7series_0_200M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0/system_rst_Clk_100M_0_in_context.xdc2
system_i/proc_sys_reset_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_proc_sys_reset_0_0/system_proc_sys_reset_0_0/system_rst_Clk_100M_0_in_context.xdc2
system_i/proc_sys_reset_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0/system_axi_uart16550_0_0_in_context.xdc2
system_i/axi_uart16550_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_uart16550_0_0/system_axi_uart16550_0_0/system_axi_uart16550_0_0_in_context.xdc2
system_i/axi_uart16550_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_bram_ctrl_0_0/system_axi_bram_ctrl_0_0/system_axi_bram_ctrl_0_0_in_context.xdc2
system_i/axi_bram_ctrl_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_bram_ctrl_0_0/system_axi_bram_ctrl_0_0/system_axi_bram_ctrl_0_0_in_context.xdc2
system_i/axi_bram_ctrl_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_bram_ctrl_0_bram_0/system_axi_bram_ctrl_0_bram_0/system_axi_bram_ctrl_0_bram_0_in_context.xdc2!
system_i/axi_bram_ctrl_0_bram	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example9_4/project_1.gen/sources_1/bd/system/ip/system_axi_bram_ctrl_0_bram_0/system_axi_bram_ctrl_0_bram_0/system_axi_bram_ctrl_0_bram_0_in_context.xdc2!
system_i/axi_bram_ctrl_0_bram	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2\
XC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/sys.xdc8Z20-179h px� 
�
nA clock with name '%s' already exists, creating a clock with the same name will overwrite the previous clock.
576*constraints2
SYS_CLK_0_clk_p2\
XC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/sys.xdc2
138@Z18-619h px�
�
Finished Parsing XDC File [%s]
178*designutils2\
XC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/sys.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Z
XC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/sys.xdc2"
 .Xil/system_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2b
^C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/spi_flash.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2b
^C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/spi_flash.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2`
^C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.srcs/constrs_1/new/spi_flash.xdc2"
 .Xil/system_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2]
YC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2]
YC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1735.0122
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 5 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 5 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0182

1735.0122
0.000Z17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002
system_i/axi_bram_ctrl_0_bram2
clka2
10.000Z38-316h px� 
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
20.0002
system_i/axi_quad_spi_02
ext_spi_clk2
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
Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
9
%s
*synth2!
Loading part: xc7k325tffv900-2
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
s
%s
*synth2[
YPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB18 140 RAMB36 70)
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
H
redefining clock '%s'565*oasys2
SYS_CLK_0_clk_pZ8-565h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
}Finished Timing Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
|Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
vFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|      |BlackBox name                   |Instances |
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
O
%s
*synth27
5|1     |system_axi_bram_ctrl_0_0        |         1|
h p
x
� 
O
%s
*synth27
5|2     |system_axi_bram_ctrl_0_bram_0   |         1|
h p
x
� 
O
%s
*synth27
5|3     |system_axi_gpio_0_0             |         1|
h p
x
� 
O
%s
*synth27
5|4     |system_axi_gpio_0_1             |         1|
h p
x
� 
O
%s
*synth27
5|5     |system_axi_gpio_1_0             |         1|
h p
x
� 
O
%s
*synth27
5|6     |system_axi_hwicap_0_0           |         1|
h p
x
� 
O
%s
*synth27
5|7     |system_axi_intc_0_0             |         1|
h p
x
� 
O
%s
*synth27
5|8     |system_axi_quad_spi_0_0         |         1|
h p
x
� 
O
%s
*synth27
5|9     |system_axi_timer_0_0            |         1|
h p
x
� 
O
%s
*synth27
5|10    |system_axi_uart16550_0_0        |         1|
h p
x
� 
O
%s
*synth27
5|11    |system_clk_wiz_0_0              |         1|
h p
x
� 
O
%s
*synth27
5|12    |system_mdm_1_1                  |         1|
h p
x
� 
O
%s
*synth27
5|13    |system_microblaze_0_1           |         1|
h p
x
� 
O
%s
*synth27
5|14    |system_xbar_0                   |         1|
h p
x
� 
O
%s
*synth27
5|15    |system_auto_ds_0                |         1|
h p
x
� 
O
%s
*synth27
5|16    |system_auto_pc_0                |         1|
h p
x
� 
O
%s
*synth27
5|17    |system_auto_ds_1                |         1|
h p
x
� 
O
%s
*synth27
5|18    |system_auto_pc_1                |         1|
h p
x
� 
O
%s
*synth27
5|19    |system_auto_ds_2                |         1|
h p
x
� 
O
%s
*synth27
5|20    |system_auto_pc_2                |         1|
h p
x
� 
O
%s
*synth27
5|21    |system_auto_ds_3                |         1|
h p
x
� 
O
%s
*synth27
5|22    |system_auto_pc_3                |         1|
h p
x
� 
O
%s
*synth27
5|23    |system_auto_ds_4                |         1|
h p
x
� 
O
%s
*synth27
5|24    |system_auto_pc_4                |         1|
h p
x
� 
O
%s
*synth27
5|25    |system_auto_ds_5                |         1|
h p
x
� 
O
%s
*synth27
5|26    |system_auto_pc_5                |         1|
h p
x
� 
O
%s
*synth27
5|27    |system_auto_ds_6                |         1|
h p
x
� 
O
%s
*synth27
5|28    |system_auto_pc_6                |         1|
h p
x
� 
O
%s
*synth27
5|29    |system_auto_ds_7                |         1|
h p
x
� 
O
%s
*synth27
5|30    |system_auto_pc_7                |         1|
h p
x
� 
O
%s
*synth27
5|31    |system_auto_ds_8                |         1|
h p
x
� 
O
%s
*synth27
5|32    |system_auto_pc_8                |         1|
h p
x
� 
O
%s
*synth27
5|33    |system_auto_cc_0                |         1|
h p
x
� 
O
%s
*synth27
5|34    |system_auto_ds_9                |         1|
h p
x
� 
O
%s
*synth27
5|35    |system_auto_pc_9                |         1|
h p
x
� 
O
%s
*synth27
5|36    |system_auto_us_0                |         1|
h p
x
� 
O
%s
*synth27
5|37    |system_auto_us_1                |         1|
h p
x
� 
O
%s
*synth27
5|38    |system_auto_us_2                |         1|
h p
x
� 
O
%s
*synth27
5|39    |system_mig_7series_0_0          |         1|
h p
x
� 
O
%s
*synth27
5|40    |system_proc_sys_reset_0_0       |         1|
h p
x
� 
O
%s
*synth27
5|41    |system_rst_mig_7series_0_200M_0 |         1|
h p
x
� 
O
%s
*synth27
5|42    |system_dlmb_bram_if_cntlr_1     |         1|
h p
x
� 
O
%s
*synth27
5|43    |system_dlmb_v10_1               |         1|
h p
x
� 
O
%s
*synth27
5|44    |system_ilmb_bram_if_cntlr_1     |         1|
h p
x
� 
O
%s
*synth27
5|45    |system_ilmb_v10_1               |         1|
h p
x
� 
O
%s
*synth27
5|46    |system_lmb_bram_1               |         1|
h p
x
� 
O
%s
*synth27
5+------+--------------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
I
%s*synth21
/+------+------------------------------+------+
h px� 
I
%s*synth21
/|      |Cell                          |Count |
h px� 
I
%s*synth21
/+------+------------------------------+------+
h px� 
I
%s*synth21
/|1     |system_auto_cc                |     1|
h px� 
I
%s*synth21
/|2     |system_auto_ds                |    10|
h px� 
I
%s*synth21
/|12    |system_auto_pc                |    10|
h px� 
I
%s*synth21
/|22    |system_auto_us                |     3|
h px� 
I
%s*synth21
/|25    |system_axi_bram_ctrl_0        |     1|
h px� 
I
%s*synth21
/|26    |system_axi_bram_ctrl_0_bram   |     1|
h px� 
I
%s*synth21
/|27    |system_axi_gpio_0             |     2|
h px� 
I
%s*synth21
/|29    |system_axi_gpio_1             |     1|
h px� 
I
%s*synth21
/|30    |system_axi_hwicap_0           |     1|
h px� 
I
%s*synth21
/|31    |system_axi_intc_0             |     1|
h px� 
I
%s*synth21
/|32    |system_axi_quad_spi_0         |     1|
h px� 
I
%s*synth21
/|33    |system_axi_timer_0            |     1|
h px� 
I
%s*synth21
/|34    |system_axi_uart16550_0        |     1|
h px� 
I
%s*synth21
/|35    |system_clk_wiz_0              |     1|
h px� 
I
%s*synth21
/|36    |system_dlmb_bram_if_cntlr     |     1|
h px� 
I
%s*synth21
/|37    |system_dlmb_v10               |     1|
h px� 
I
%s*synth21
/|38    |system_ilmb_bram_if_cntlr     |     1|
h px� 
I
%s*synth21
/|39    |system_ilmb_v10               |     1|
h px� 
I
%s*synth21
/|40    |system_lmb_bram               |     1|
h px� 
I
%s*synth21
/|41    |system_mdm_1                  |     1|
h px� 
I
%s*synth21
/|42    |system_microblaze_0           |     1|
h px� 
I
%s*synth21
/|43    |system_mig_7series_0          |     1|
h px� 
I
%s*synth21
/|44    |system_proc_sys_reset_0       |     1|
h px� 
I
%s*synth21
/|45    |system_rst_mig_7series_0_200M |     1|
h px� 
I
%s*synth21
/|46    |system_xbar                   |     1|
h px� 
I
%s*synth21
/|47    |IBUF                          |    10|
h px� 
I
%s*synth21
/|48    |IOBUF                         |     5|
h px� 
I
%s*synth21
/|49    |OBUF                          |     6|
h px� 
I
%s*synth21
/+------+------------------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
GSynthesis finished with 0 errors, 0 critical warnings and 22 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:29 . Memory (MB): peak = 1735.012 ; gain = 600.684
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1735.012 ; gain = 647.957
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
00:00:00.2022

1735.0122
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
5Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
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

1735.0122
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2Y
W  A total of 5 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 5 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

4587c172Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1722
2212
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

00:00:392

00:00:402

1735.0122

1105.125Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

1735.0122
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2_
]C:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/synth_1/system_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file system_wrapper_utilization_synth.rpt -pb system_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Oct  6 15:02:16 2024Z17-206h px� 


End Record