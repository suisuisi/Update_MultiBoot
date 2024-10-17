// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 24 12:35:51 2024
// Host        : MININT-7LTFL4B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/project/multiboot/example6_2/project_1.gen/sources_1/ip/icape2_ctrl_0/icape2_ctrl_0_stub.v
// Design      : icape2_ctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1927-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "icape2_ctrl,Vivado 2024.1" *)
module icape2_ctrl_0(clk, rst_n, icape2_start, icape2_addr, busy)
/* synthesis syn_black_box black_box_pad_pin="rst_n,icape2_start,icape2_addr[31:0],busy" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input icape2_start;
  input [31:0]icape2_addr;
  output busy;
endmodule
