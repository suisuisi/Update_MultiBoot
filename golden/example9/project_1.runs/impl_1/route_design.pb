
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7k325tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7k325tZ17-349h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
route_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
P
DRC finished with %s
79*	vivadotcl2
0 Errors, 1 WarningsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
8Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 28a534e36
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:01:07 ; elapsed = 00:00:39 . Memory (MB): peak = 3935.508 ; gain = 0.000h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 28a534e36
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:01:08 ; elapsed = 00:00:40 . Memory (MB): peak = 3935.508 ; gain = 0.000h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 28a534e36
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:01:09 ; elapsed = 00:00:40 . Memory (MB): peak = 3935.508 ; gain = 0.000h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 1c285d57b
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:01:39 ; elapsed = 00:00:58 . Memory (MB): peak = 3935.508 ; gain = 0.000h px� 
{
Intermediate Timing Summary %s164*route2:
8| WNS=0.116  | TNS=0.000  | WHS=-0.474 | THS=-4618.660|
Z35-416h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 1933ae157
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:48 ; elapsed = 00:01:03 . Memory (MB): peak = 3991.508 ; gain = 56.000h px� 
K

Phase %s%s
101*constraints2
3 2
Global RoutingZ18-101h px� 
H
%s*common2/
-Phase 3 Global Routing | Checksum: 1933ae157
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:01:48 ; elapsed = 00:01:03 . Memory (MB): peak = 3991.508 ; gain = 56.000h px� 
L

Phase %s%s
101*constraints2
4 2
Initial RoutingZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Initial Net Routing PassZ18-101h px� 
T
%s*common2;
9Phase 4.1 Initial Net Routing Pass | Checksum: 284e23db4
h px� 


%s
*constraints2_
]Time (s): cpu = 00:04:00 ; elapsed = 00:01:56 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
I
%s*common20
.Phase 4 Initial Routing | Checksum: 284e23db4
h px� 


%s
*constraints2_
]Time (s): cpu = 00:04:00 ; elapsed = 00:01:56 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
1042�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+=================================================================================================================================================================================================================================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                                                                                                                                                                                                                                             |
+====================+===================+=================================================================================================================================================================================================================================================================+
| oserdes_clk_6      | oserdes_clk_6     | system_i/mig_7series_0/u_system_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_1.u_ddr_phy_4lanes/ddr_byte_lane_D.ddr_byte_lane_D/ddr_byte_group_io/output_[0].oserdes_dq_.sdr.oserdes_dq_i/RST |
| oserdes_clk_1      | oserdes_clk_1     | system_i/mig_7series_0/u_system_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/output_[8].oserdes_dq_.ddr.oserdes_dq_i/RST |
| oserdes_clk_8      | oserdes_clk_8     | system_i/mig_7series_0/u_system_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_B.ddr_byte_lane_B/ddr_byte_group_io/output_[8].oserdes_dq_.ddr.oserdes_dq_i/RST |
| oserdes_clk_9      | oserdes_clk_9     | system_i/mig_7series_0/u_system_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_2.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/output_[2].oserdes_dq_.ddr.oserdes_dq_i/RST |
| oserdes_clk_2      | oserdes_clk_2     | system_i/mig_7series_0/u_system_mig_7series_0_0_mig/u_memc_ui_top_axi/mem_intfc0/ddr_phy_top0/u_ddr_mc_phy_wrapper/u_ddr_mc_phy/ddr_phy_4lanes_0.u_ddr_phy_4lanes/ddr_byte_lane_C.ddr_byte_lane_C/ddr_byte_group_io/output_[2].oserdes_dq_.ddr.oserdes_dq_i/RST |
+--------------------+-------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
5 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
5.1 2
Global Iteration 0Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.030  | TNS=0.000  | WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 5.1 Global Iteration 0 | Checksum: 1d22d8b6b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:09 ; elapsed = 00:02:42 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
L
%s*common23
1Phase 5 Rip-up And Reroute | Checksum: 1d22d8b6b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:09 ; elapsed = 00:02:42 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
X

Phase %s%s
101*constraints2
6 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Delay CleanUpZ18-101h px� 
I
%s*common20
.Phase 6.1 Delay CleanUp | Checksum: 1d22d8b6b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:10 ; elapsed = 00:02:42 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
V

Phase %s%s
101*constraints2
6.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 6.2 Clock Skew Optimization | Checksum: 1d22d8b6b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:10 ; elapsed = 00:02:42 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
U
%s*common2<
:Phase 6 Delay and Skew Optimization | Checksum: 1d22d8b6b
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:10 ; elapsed = 00:02:42 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
J

Phase %s%s
101*constraints2
7 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
7.1 2
Hold Fix IterZ18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=0.030  | TNS=0.000  | WHS=0.028  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 7.1 Hold Fix Iter | Checksum: 15cbc75d9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:15 ; elapsed = 00:02:45 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
G
%s*common2.
,Phase 7 Post Hold Fix | Checksum: 15cbc75d9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:16 ; elapsed = 00:02:45 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
K

Phase %s%s
101*constraints2
8 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 8 Route finalize | Checksum: 15cbc75d9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:16 ; elapsed = 00:02:45 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
R

Phase %s%s
101*constraints2
9 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 9 Verifying routed nets | Checksum: 15cbc75d9
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:16 ; elapsed = 00:02:45 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
O

Phase %s%s
101*constraints2
10 2
Depositing RoutesZ18-101h px� 
L
%s*common23
1Phase 10 Depositing Routes | Checksum: 1a4668f31
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:20 ; elapsed = 00:02:47 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
R

Phase %s%s
101*constraints2
11 2
Post Process RoutingZ18-101h px� 
O
%s*common26
4Phase 11 Post Process Routing | Checksum: 1a4668f31
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:21 ; elapsed = 00:02:47 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
P

Phase %s%s
101*constraints2
12 2
Post Router TimingZ18-101h px� 
u
Estimated Timing Summary %s
57*route28
6| WNS=0.030  | TNS=0.000  | WHS=0.028  | THS=0.000  |
Z35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
M
%s*common24
2Phase 12 Post Router Timing | Checksum: 1a4668f31
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:21 ; elapsed = 00:02:47 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
Y

Phase %s%s
101*constraints2
13 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 13 Post-Route Event Processing | Checksum: 1fd647e96
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:22 ; elapsed = 00:02:48 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 1fd647e96
h px� 


%s
*constraints2_
]Time (s): cpu = 00:05:22 ; elapsed = 00:02:48 . Memory (MB): peak = 4863.285 ; gain = 927.777h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1712
1242
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:05:332

00:02:542

4863.2852	
927.777Z17-268h px� 
�
Executing command : %s
56330*	planAhead2t
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2t
rreport_drc -file system_wrapper_drc_routed.rpt -pb system_wrapper_drc_routed.pb -rpx system_wrapper_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
gC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/impl_1/system_wrapper_drc_routed.rptgC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/impl_1/system_wrapper_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_drc: 2

00:00:142

00:00:062

4863.2852
0.000Z17-268h px� 
�
Executing command : %s
56330*	planAhead2�
�report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file system_wrapper_methodology_drc_routed.rpt -pb system_wrapper_methodology_drc_routed.pb -rpx system_wrapper_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
2Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
sC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/impl_1/system_wrapper_methodology_drc_routed.rptsC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/impl_1/system_wrapper_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_methodology: 2

00:00:312

00:00:182

4863.2852
0.000Z17-268h px� 
�
Executing command : %s
56330*	planAhead2�
�report_timing_summary -max_paths 10 -report_unconstrained -file system_wrapper_timing_summary_routed.rpt -pb system_wrapper_timing_summary_routed.pb -rpx system_wrapper_timing_summary_routed.rpx -warn_on_violation Z12-24828h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_timing_summary: 2

00:00:142

00:00:092

4863.2852
0.000Z17-268h px� 
�
)Running report commands "%s" in parallel.56334*	planAhead2/
-report_incremental_reuse, report_route_statusZ12-24838h px� 
Y
+Running report generation with %s threads.
56333*	planAhead2
2Z12-24831h px� 
�
Executing command : %s
56330*	planAhead2L
Jreport_incremental_reuse -file system_wrapper_incremental_reuse_routed.rptZ12-24828h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
Executing command : %s
56330*	planAhead2^
\report_route_status -file system_wrapper_route_status.rpt -pb system_wrapper_route_status.pbZ12-24828h px� 
�
Executing command : %s
56330*	planAhead2�
�report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file system_wrapper_power_routed.rpt -pb system_wrapper_power_summary_routed.pb -rpx system_wrapper_power_routed.rpxZ4-113h px� 
�
$Power model is not available for %s
23*power2�
)STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst	�system_i/axi_quad_spi_0/U0/NO_DUAL_QUAD_MODE.QSPI_NORMAL/QSPI_LEGACY_MD_GEN.QSPI_CORE_INTERFACE_I/LOGIC_FOR_MD_12_GEN.SCK_MISO_STARTUP_USED.QSPI_STARTUP_BLOCK_I/STARTUP_7SERIES_GEN.STARTUP2_7SERIES_inst8Z33-23h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1892
1242
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
report_power: 2

00:00:162

00:00:092

4863.2852
0.000Z17-268h px� 
�
Executing command : %s
56330*	planAhead2L
Jreport_clock_utilization -file system_wrapper_clock_utilization_routed.rptZ12-24828h px� 
�
jFailed to find the Oracle tile group with name '%s'. This is required for Clock regions and Virtual grid.
996*device2
HSR_BOUNDARY_TOPZ21-9320h px� 
E
"Failed to initialize Virtual grid.736*deviceZ21-2174h px� 
�
Executing command : %s
56330*	planAhead2�
�report_bus_skew -warn_on_violation -file system_wrapper_bus_skew_routed.rpt -pb system_wrapper_bus_skew_routed.pb -rpx system_wrapper_bus_skew_routed.rpxZ12-24828h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
generate_parallel_reports: 2

00:01:182

00:00:452

4863.2852
0.000Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:012
00:00:00.1462

4863.2852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:102

00:00:032

4863.2852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

4863.2852
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:022
00:00:00.6622

4863.2852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0562

4863.2852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0042

4863.2852
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:122

00:00:042

4863.2852
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2e
cC:/Users/openfpga/Desktop/project/golden/example9_4/project_1.runs/impl_1/system_wrapper_routed.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:162

00:00:092

4863.2852
0.000Z17-268h px� 


End Record