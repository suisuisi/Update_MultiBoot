
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:072	
550.9452	
200.059Z17-268h px� 
k
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
system_axi_hwicap_0_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2k
isynth_design -top system_axi_hwicap_0_0 -part xc7k325tffv900-2 -incremental_mode off -mode out_of_contextZ4-113h px� 
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
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
22100Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1473.277 ; gain = 446.699
h px� 
�
synthesizing module '%s'638*oasys2
system_axi_hwicap_0_02�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/synth/system_axi_hwicap_0_0.vhd2
868@Z8-638h px� 
V
%s
*synth2>
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter C_SHARED_STARTUP bound to: 0 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_ICAP_EXTERNAL bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter C_INCLUDE_STARTUP bound to: 0 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_ENABLE_ASYNC bound to: 0 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 9 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_WRITE_FIFO_DEPTH bound to: 64 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter C_READ_FIFO_DEPTH bound to: 128 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_ICAP_WIDTH_S bound to: X32 - type: string 
h p
x
� 
a
%s
*synth2I
G	Parameter C_DEVICE_ID bound to: 32'b00000100001000100100000010010011 
h p
x
� 
I
%s
*synth21
/	Parameter C_MODE bound to: 0 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter C_NOREAD bound to: 0 - type: integer 
h p
x
� 
O
%s
*synth27
5	Parameter C_SIMULATION bound to: 2 - type: integer 
h p
x
� 
W
%s
*synth2?
=	Parameter C_BRAM_SRL_FIFO_TYPE bound to: 1 - type: integer 
h p
x
� 
P
%s
*synth28
6	Parameter C_FAMILY bound to: kintex7 - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter C_OPERATION bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40042
U02

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/synth/system_axi_hwicap_0_0.vhd2
1898@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40748@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
axi_lite_ipif2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
slave_attachment2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
address_decoder2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
	pselect_f2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	pselect_f2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized02�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized02
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized12
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized22�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized22
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized32�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized32
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized42�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized42
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized52�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized52
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized62�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized62
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized72�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized72
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized82�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized82
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized92�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized92
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized102�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized102
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized112�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized112
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized122�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized122
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized132�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized132
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized142�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized142
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized152�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized152
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized162�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized162
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized172�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized172
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized182�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized182
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized192�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized192
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized202�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized202
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized212�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized212
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized222�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized222
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized232�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized232
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
pselect_f__parameterized242�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
pselect_f__parameterized242
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
15348@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
address_decoder2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
17758@Z8-256h px� 
�
default block is never used226*oasys2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
25508@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
slave_attachment2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
23418@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_lite_ipif2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2
29488@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
28298@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
ipic_if2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
2128@Z8-638h px� 
�
synthesizing module '%s'638*oasys2

cdc_sync2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7728@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7888@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8048@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8218@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2,
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
8378@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

cdc_sync2
02
12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
cdc_sync__parameterized02~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2#
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
7368@Z8-113h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-1132
100Z17-14h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync__parameterized02
02
12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
async_fifo_fg2
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
2468@Z8-638h px� 
V
%s
*synth2>
<	Parameter FIFO_MEMORY_TYPE bound to: block - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter FIFO_WRITE_DEPTH bound to: 64 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter WRITE_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter READ_MODE bound to: std - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter FULL_RESET_VALUE bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter USE_ADV_FEATURES bound to: 1F1F - type: string 
h p
x
� 
S
%s
*synth2;
9	Parameter READ_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter CDC_SYNC_STAGES bound to: 4 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter WR_DATA_COUNT_WIDTH bound to: 7 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_FULL_THRESH bound to: 10 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter RD_DATA_COUNT_WIDTH bound to: 7 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: no_ecc - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_async2>
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21732
xpm_fifo_async_inst2
xpm_fifo_async2
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
19238@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_async2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21738@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_counter_updn2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_counter_updn2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized02
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized02
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_memory_base2
 2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_memory_base2
 2
02
12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray2
 2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray2
 2
02
12>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_vec2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_vec2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray__parameterized02
 2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray__parameterized02
 2
02
12>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_fifo_reg_vec__parameterized02
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_fifo_reg_vec__parameterized02
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_rst2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16398@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_sync_rst2
 2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_sync_rst2
 2
02
12>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
10598@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_rst2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
16398@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_reg_bit2
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19278@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_reg_bit2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19278@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized12
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized12
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized22
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized22
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_async2
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21738@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
async_fifo_fg2
02
12
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
2468@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
cdc_sync__parameterized12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync__parameterized12
02
12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
async_fifo_fg__parameterized02
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
2468@Z8-638h px� 
V
%s
*synth2>
<	Parameter FIFO_MEMORY_TYPE bound to: block - type: string 
h p
x
� 
U
%s
*synth2=
;	Parameter FIFO_WRITE_DEPTH bound to: 128 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter RELATED_CLOCKS bound to: 0 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter WRITE_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter READ_MODE bound to: std - type: string 
h p
x
� 
T
%s
*synth2<
:	Parameter FIFO_READ_LATENCY bound to: 1 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter FULL_RESET_VALUE bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter USE_ADV_FEATURES bound to: 1F1F - type: string 
h p
x
� 
S
%s
*synth2;
9	Parameter READ_DATA_WIDTH bound to: 32 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter CDC_SYNC_STAGES bound to: 4 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter WR_DATA_COUNT_WIDTH bound to: 8 - type: integer 
h p
x
� 
T
%s
*synth2<
:	Parameter PROG_FULL_THRESH bound to: 10 - type: integer 
h p
x
� 
V
%s
*synth2>
<	Parameter RD_DATA_COUNT_WIDTH bound to: 8 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter PROG_EMPTY_THRESH bound to: 10 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter DOUT_RESET_VALUE bound to: 0 - type: string 
h p
x
� 
O
%s
*synth27
5	Parameter ECC_MODE bound to: no_ecc - type: string 
h p
x
� 
N
%s
*synth26
4	Parameter WAKEUP_TIME bound to: 0 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
xpm_fifo_async2>
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21732
xpm_fifo_async_inst2
xpm_fifo_async2
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
19238@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2 
xpm_fifo_async__parameterized12
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21738@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_fifo_base__parameterized02
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized32
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized32
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized42
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized42
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
xpm_memory_base__parameterized02
 2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
xpm_memory_base__parameterized02
 2
02
12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv2
548@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
xpm_cdc_gray__parameterized12
 2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_cdc_gray__parameterized12
 2
02
12>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
2838@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_fifo_reg_vec__parameterized12
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_fifo_reg_vec__parameterized12
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
19058@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized52
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized52
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 xpm_counter_updn__parameterized62
 2@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 xpm_counter_updn__parameterized62
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
18798@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
xpm_fifo_base__parameterized02
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
538@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
xpm_fifo_async__parameterized12
 2
02
12@
<E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv2
21738@Z8-6155h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
async_fifo_fg__parameterized02
02
12
{c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd2
2468@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
cdc_sync__parameterized22~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync__parameterized22
02
12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
cdc_sync__parameterized32~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync__parameterized32
02
12~
zc:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
ipic_if2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
2128@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
icap_statemachine2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
15558@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
icap_statemachine2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
15558@Z8-256h px� 
_
%s
*synth2G
E	Parameter DEVICE_ID bound to: 32'b00000100001000100100000010010011 
h p
x
� 
N
%s
*synth26
4	Parameter ICAP_WIDTH bound to: X32 - type: string 
h p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
hwicap2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
28298@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
interrupt_control2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd2
2578@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
interrupt_control2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd2
2578@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

axi_hwicap2
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40748@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
system_axi_hwicap_0_02
02
12�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/synth/system_axi_hwicap_0_0.vhd2
868@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
dest_out_bin_ff_reg2>
:E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv2
4178@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
IP2Bus_Rderrack_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
9968@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
busip_2_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
10518@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
busip_ack_fifo_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
10538@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
Intr_rst_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
8878@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
Status_read2	
ipic_if2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
1828@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
CFGCLK2	
ipic_if2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
1938@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
CFGMCLK2	
ipic_if2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
1948@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
PREQ2	
ipic_if2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
1958@Z8-3848h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
icap_ce_cs1_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
18918@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
icap_we_cs1_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
18928@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

int2_reg2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
19008@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	icap_csib2

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40638@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

icap_rdwrb2

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40648@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2	
cap_req2

axi_hwicap2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ipshared/0425/hdl/axi_hwicap_v3_0_vh_rfs.vhd2
40658@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[1]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[2]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[3]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[4]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[5]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[6]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[7]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[8]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[9]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[10]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[11]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[12]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[13]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[14]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[15]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[16]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[17]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[18]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[19]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[20]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[21]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[22]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[23]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[24]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[25]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[26]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_data[27]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_be[1]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_be[2]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
bus2ip_be[3]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[0]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[1]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[2]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[3]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[4]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[5]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[6]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[9]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[11]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[12]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[13]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[14]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_rdce[15]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[0]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[1]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[2]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[3]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[4]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[5]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[6]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[9]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[11]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[12]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[13]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[14]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
interrupt_wrce[15]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ipif_reg_interrupts[0]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ipif_reg_interrupts[1]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ipif_lvl_interrupts[0]2
interrupt_controlZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_aclk2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_resetn2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[31]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[30]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[29]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[28]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[27]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[26]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[25]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[24]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[23]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[22]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[21]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[20]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[19]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[18]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[17]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[16]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[15]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[14]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[13]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[12]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[11]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[10]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[9]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[8]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[7]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[6]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[5]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[4]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[3]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[2]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[1]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[0]2
cdc_sync__parameterized1Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
scndry_resetn2
cdc_sync__parameterized1Z8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
Wrfifo_full2
icap_statemachineZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
Rdfifo_empty2
icap_statemachineZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
Status_read2
icap_statemachineZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_aclk2

cdc_syncZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_resetn2

cdc_syncZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_in2

cdc_syncZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1736.328 ; gain = 709.750
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1736.328 ; gain = 709.750
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:19 . Memory (MB): peak = 1736.328 ; gain = 709.750
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

00:00:002
00:00:00.0432

1736.3282
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
402Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0_ooc.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0_ooc.xdc2
U0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0.xdc2
U0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2q
mC:/Users/openfpga/Desktop/project/golden/example3/project_1.runs/system_axi_hwicap_0_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2q
mC:/Users/openfpga/Desktop/project/golden/example3/project_1.runs/system_axi_hwicap_0_0_synth_1/dont_touch.xdc8Z20-178h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0_clocks.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/openfpga/Desktop/project/golden/example3/project_1.gen/sources_1/bd/system/ip/system_axi_hwicap_0_0/system_axi_hwicap_0_0_clocks.xdc2
U0	8Z20-847h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.rd_pntr_cdc_dc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
;Current instance is the top level cell '%s' of design '%s'
1953*	planAhead2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst2
preSynthElab_12D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@Z12-3272h px� 
�
%s1000*XPM_CDC_GRAY: TCL2�
�The source and destination clocks are the same. 
     Instance: U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_cdc_pntr.wr_pntr_cdc_dc_inst 
  This will add unnecessary latency to the design. Please check the design for the following: 
 1) Manually instantiated XPM_CDC modules: AMD recommends that you remove these modules. 
 2) AMD IP that contains XPM_CDC modules: Verify the connections to the IP to determine whether you can safely ignore this message.
2D
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2
168@h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2B
@E:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl2)
'.Xil/system_axi_hwicap_0_0_propImpl.xdcZ1-236h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2C
AE:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/tcl/xpm_fifo_rst.tcl2)
'.Xil/system_axi_hwicap_0_0_propImpl.xdcZ1-236h px� 
[
2%s XPM XDC files have been applied to the design.
665*project2
14Z1-1714h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1829.0232
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2L
J  A total of 402 instances were transformed.
  FDR => FDRE: 402 instances
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0452

1829.1452
0.121Z17-268h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:28 . Memory (MB): peak = 1829.145 ; gain = 802.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
slave_attachmentZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rst__xdcDup__1Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rst__xdcDup__1Z8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rstZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rstZ8-802h px� 
~
3inferred FSM for state register '%s' in module '%s'802*oasys2
icap_nstate_cs_reg2
icap_statemachineZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
slave_attachmentZ8-3354h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rst__xdcDup__1Z8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               WRST_IDLE |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_                 WRST_IN |                            00010 |                              010
h p
x
� 
y
%s
*synth2a
_                WRST_OUT |                            00100 |                              111
h p
x
� 
y
%s
*synth2a
_               WRST_EXIT |                            01000 |                              110
h p
x
� 
y
%s
*synth2a
_            WRST_GO2IDLE |                            10000 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_wrst_state_reg2	
one-hot2
xpm_fifo_rst__xdcDup__1Z8-3354h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rst__xdcDup__1Z8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               RRST_IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                 RRST_IN |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_                RRST_OUT |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_               RRST_EXIT |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_rrst_state_reg2

sequential2
xpm_fifo_rst__xdcDup__1Z8-3354h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_wrst_state_reg2
xpm_fifo_rstZ8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               WRST_IDLE |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_                 WRST_IN |                            00010 |                              010
h p
x
� 
y
%s
*synth2a
_                WRST_OUT |                            00100 |                              111
h p
x
� 
y
%s
*synth2a
_               WRST_EXIT |                            01000 |                              110
h p
x
� 
y
%s
*synth2a
_            WRST_GO2IDLE |                            10000 |                              100
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_wrst_state_reg2	
one-hot2
xpm_fifo_rstZ8-3354h px� 
�
BImplemented safe state '%s' for state register '%s' in module '%s'4006*oasys2
default_state2 
gen_rst_ic.curr_rrst_state_reg2
xpm_fifo_rstZ8-5552h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_               RRST_IDLE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                 RRST_IN |                               01 |                               10
h p
x
� 
y
%s
*synth2a
_                RRST_OUT |                               10 |                               11
h p
x
� 
y
%s
*synth2a
_               RRST_EXIT |                               11 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
gen_rst_ic.curr_rrst_state_reg2

sequential2
xpm_fifo_rstZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_               icap_idle |                             0000 |                             0000
h p
x
� 
y
%s
*synth2a
_             icap_abort0 |                             0001 |                             0111
h p
x
� 
y
%s
*synth2a
_             icap_write1 |                             0010 |                             0001
h p
x
� 
y
%s
*synth2a
_             icap_write3 |                             0011 |                             0011
h p
x
� 
y
%s
*synth2a
_             icap_write4 |                             0100 |                             0100
h p
x
� 
y
%s
*synth2a
_             icap_write5 |                             0101 |                             0101
h p
x
� 
y
%s
*synth2a
_             icap_write2 |                             0110 |                             0010
h p
x
� 
y
%s
*synth2a
_              icap_read1 |                             0111 |                             0110
h p
x
� 
y
%s
*synth2a
_             icap_abort1 |                             1000 |                             1001
h p
x
� 
y
%s
*synth2a
_             icap_abort2 |                             1001 |                             1010
h p
x
� 
y
%s
*synth2a
_             icap_abort3 |                             1010 |                             1011
h p
x
� 
y
%s
*synth2a
_             icap_abort4 |                             1011 |                             1100
h p
x
� 
y
%s
*synth2a
_         icap_abort_hang |                             1100 |                             1000
h p
x
� 
y
%s
*synth2a
_                    done |                             1101 |                             1101
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
icap_nstate_cs_reg2

sequential2
icap_statemachineZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:29 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    8 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    7 Bit       Adders := 7     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    7 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    6 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   3 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      7 Bit         XORs := 4     
h p
x
� 
H
%s
*synth20
.	   2 Input      6 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      1 Bit         XORs := 53    
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 10    
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 17    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 35    
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 18    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 123   
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
X
%s
*synth2@
>	               4K Bit	(128 X 32 bit)          RAMs := 1     
h p
x
� 
W
%s
*synth2?
=	               2K Bit	(64 X 32 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  14 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    5 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	  32 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 52    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	  14 Input    1 Bit        Muxes := 18    
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
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/BUS2ICAP_SIZE_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[11].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[12].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[13].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[14].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[15].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[16].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[17].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[18].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[19].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[20].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[21].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[22].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[23].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[24].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[25].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[26].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[27].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[28].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[29].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[30].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/ICAP2BUS_STATUS_REGISTER_PROCESS/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[31].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WREMPTY_SYNCH/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WREMPTY_SYNCH/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDFULL_SYNCH/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDFULL_SYNCH/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDFULL_SYNCH/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/FIFO_RST_CDC_PROCESS/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
�ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/FIFO_RST_CDC_PROCESS/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/PLB2ICAP_SYNCH1/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/PLB2ICAP_SYNCH1/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/PLB2ICAP_SYNCH2/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/PLB2ICAP_SYNCH2/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62

axi_hwicapZ8-3332h px�
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2�
ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/PLB2ICAP_SYNCH3/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52

axi_hwicapZ8-3332h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-33322
100Z17-14h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:34 . Memory (MB): peak = 1829.145 ; gain = 802.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name                                                                                                                                                                       | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|U0/\ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst   | gen_wr_a.gen_word_narrow.mem_reg | 64 x 32(NO_CHANGE)     | W |   | 64 x 32(NO_CHANGE)     |   | R | Port A and B     | 1      | 0      | 
h px� 
�
%s*synth2�
�|U0/\ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 128 x 32(NO_CHANGE)    | W |   | 128 x 32(NO_CHANGE)    |   | R | Port A and B     | 1      | 0      | 
h px� 
�
%s*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
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
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
�
`Found 'rw_addr_collision' attribute set to 'no' on SDP RAM %s. Setting write mode to NO_CHANGE 
4174*oasys2"
 gen_wr_a.gen_word_narrow.mem_regZ8-5775h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 1829.145 ; gain = 802.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name                                                                                                                                                                       | RTL Object                       | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|U0/\ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst   | gen_wr_a.gen_word_narrow.mem_reg | 64 x 32(NO_CHANGE)     | W |   | 64 x 32(NO_CHANGE)     |   | R | Port A and B     | 1      | 0      | 
h p
x
� 
�
%s
*synth2�
�|U0/\ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst /\gnuram_async_fifo.xpm_fifo_base_inst /\gen_sdpram.xpm_memory_base_inst  | gen_wr_a.gen_word_narrow.mem_reg | 128 x 32(NO_CHANGE)    | W |   | 128 x 32(NO_CHANGE)    |   | R | Port A and B     | 1      | 0      | 
h p
x
� 
�
%s
*synth2�
�+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/WRFIFO.WRDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2
BlockZ8-7052h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2�
�U0/ICAP_NOT_SHARED.HWICAP_CTRL_I/IPIC_IF_I/RD_FIFO.RDDATA_FIFO_I/xpm_fifo_instance.xpm_fifo_async_inst/gnuram_async_fifo.xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg2
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
vFinished IO Insertion : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |CARRY4   |    21|
h px� 
4
%s*synth2
|2     |ICAPE2   |     1|
h px� 
4
%s*synth2
|3     |LUT1     |    27|
h px� 
4
%s*synth2
|4     |LUT2     |   189|
h px� 
4
%s*synth2
|5     |LUT3     |    66|
h px� 
4
%s*synth2
|6     |LUT4     |    81|
h px� 
4
%s*synth2
|7     |LUT5     |   127|
h px� 
4
%s*synth2
|8     |LUT6     |   148|
h px� 
4
%s*synth2
|9     |RAMB18E1 |     2|
h px� 
4
%s*synth2
|10    |FDR      |   267|
h px� 
4
%s*synth2
|11    |FDRE     |   928|
h px� 
4
%s*synth2
|12    |FDSE     |    32|
h px� 
4
%s*synth2
+------+---------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:40 ; elapsed = 00:00:44 . Memory (MB): peak = 1829.145 ; gain = 802.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 134 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:41 . Memory (MB): peak = 1829.145 ; gain = 709.750
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:40 ; elapsed = 00:00:44 . Memory (MB): peak = 1829.145 ; gain = 802.566
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
00:00:00.0282

1829.1452
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
290Z29-17h px� 
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

00:00:002
00:00:00.0012

1829.1452
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2L
J  A total of 267 instances were transformed.
  FDR => FDRE: 267 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

17224263Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4052
1262
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

00:00:462

00:00:502

1829.1452

1263.988Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1829.1452
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2z
xC:/Users/openfpga/Desktop/project/golden/example3/project_1.runs/system_axi_hwicap_0_0_synth_1/system_axi_hwicap_0_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
system_axi_hwicap_0_02
3866f59232b02199Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
68Z2-1174h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1829.1452
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2z
xC:/Users/openfpga/Desktop/project/golden/example3/project_1.runs/system_axi_hwicap_0_0_synth_1/system_axi_hwicap_0_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2u
sreport_utilization -file system_axi_hwicap_0_0_utilization_synth.rpt -pb system_axi_hwicap_0_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Sep 16 20:16:18 2024Z17-206h px� 


End Record