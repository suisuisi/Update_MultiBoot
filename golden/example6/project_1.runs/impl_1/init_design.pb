
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
551.4692	
198.652Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
g
 Loaded user IP repository '%s'.
1135*coregen2 
e:/project/ip/icape2_ctrl_v1.1Z19-1700h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
D:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
`
Command: %s
53*	vivadotcl2/
-link_design -top top -part xc7vx690tffg1927-2Z4-113h px� 
U
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_1Z12-437h px� 
X
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_1Z12-434h px� 
G
Loading part %s157*device2
xc7vx690tffg1927-2Z21-403h px� 
]
$Part: %s does not have CEAM library.966*device2
xc7vx690tffg1927-2Z21-9227h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2Q
Oe:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp2
clk_wiz_10mZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2Y
We:/project/golden/example6_2/project_1.gen/sources_1/ip/icape2_ctrl_0/icape2_ctrl_0.dcp2
icape2_instZ1-454h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1211.5002
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
26Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2024.1Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt2
clk_wiz_10m/inst/clkin1_ibufg2
	sys_clk_pZ31-35h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. '%s' is ignored for synthesis but preserved for implementation.
528*constraints2
IBUF_LOW_PWR2
clk_wiz_10m/clk_in12
IBUF_LOW_PWR8Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2Y
Ue:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2
clk_wiz_10m/inst	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2Y
Ue:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc2
clk_wiz_10m/inst	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2S
Oe:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
clk_wiz_10m/inst	8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2S
Oe:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
548@Z38-35h px� 
�
Deriving generated clocks
2*timing2S
Oe:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
548@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
get_clocks: 2

00:00:092

00:00:092

2155.4572	
802.535Z17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2S
Oe:/project/golden/example6_2/project_1.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc2
clk_wiz_10m/inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2E
AE:/project/golden/example6_2/project_1.srcs/constrs_1/new/sys.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2E
AE:/project/golden/example6_2/project_1.srcs/constrs_1/new/sys.xdc8Z20-178h px� 
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

2155.4572
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152
22
02
0Z4-41h px� 
K
%s completed successfully
29*	vivadotcl2
link_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
link_design: 2

00:00:212

00:00:222

2155.4572

1586.805Z17-268h px� 


End Record