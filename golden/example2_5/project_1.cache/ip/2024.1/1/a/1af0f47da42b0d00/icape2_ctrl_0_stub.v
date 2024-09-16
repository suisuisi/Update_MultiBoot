// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Sep 16 13:26:43 2024
// Host        : DESKTOP-E0LD1A9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ icape2_ctrl_0_stub.v
// Design      : icape2_ctrl_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffv900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "icape2_ctrl,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, icape2_start, icape2_addr, busy)
/* synthesis syn_black_box black_box_pad_pin="rst_n,icape2_start,icape2_addr[31:0],busy" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input icape2_start;
  input [31:0]icape2_addr;
  output busy;
endmodule
