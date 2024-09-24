// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Sep 16 13:26:44 2024
// Host        : DESKTOP-E0LD1A9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/openfpga/Desktop/project/golden/example2_2/project_1.gen/sources_1/ip/icape2_ctrl_0/icape2_ctrl_0_sim_netlist.v
// Design      : icape2_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffv900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "icape2_ctrl_0,icape2_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "icape2_ctrl,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module icape2_ctrl_0
   (clk,
    rst_n,
    icape2_start,
    icape2_addr,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input icape2_start;
  input [31:0]icape2_addr;
  output busy;

  wire busy;
  wire clk;
  wire [31:0]icape2_addr;
  wire icape2_start;
  wire rst_n;

  icape2_ctrl_0_icape2_ctrl inst
       (.busy(busy),
        .clk(clk),
        .icape2_addr(icape2_addr[31:3]),
        .icape2_start(icape2_start),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "icape2_ctrl" *) 
module icape2_ctrl_0_icape2_ctrl
   (busy,
    clk,
    icape2_start,
    icape2_addr,
    rst_n);
  output busy;
  input clk;
  input icape2_start;
  input [28:0]icape2_addr;
  input rst_n;

  wire ICAPE2_CSIB;
  wire ICAPE2_CSIB_i_1_n_0;
  wire ICAPE2_CSIB_i_2_n_0;
  wire [31:0]ICAPE2_DATA_I;
  wire busy;
  wire busy_INST_0_i_1_n_0;
  wire busy_INST_0_i_2_n_0;
  wire clk;
  wire [28:0]icape2_addr;
  wire icape2_start;
  wire multiboot_start_d0;
  wire multiboot_start_d1;
  wire rst_n;
  wire [9:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[7]_i_2_n_0 ;
  wire \state[7]_i_3_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[9]_i_1_n_0 ;
  wire \state[9]_i_2_n_0 ;
  wire \state[9]_i_3_n_0 ;
  wire \wrdat[0]_i_1_n_0 ;
  wire \wrdat[10]_i_1_n_0 ;
  wire \wrdat[11]_i_1_n_0 ;
  wire \wrdat[12]_i_1_n_0 ;
  wire \wrdat[13]_i_1_n_0 ;
  wire \wrdat[14]_i_1_n_0 ;
  wire \wrdat[15]_i_1_n_0 ;
  wire \wrdat[16]_i_1_n_0 ;
  wire \wrdat[17]_i_1_n_0 ;
  wire \wrdat[18]_i_1_n_0 ;
  wire \wrdat[19]_i_1_n_0 ;
  wire \wrdat[1]_i_1_n_0 ;
  wire \wrdat[20]_i_1_n_0 ;
  wire \wrdat[21]_i_1_n_0 ;
  wire \wrdat[22]_i_1_n_0 ;
  wire \wrdat[23]_i_1_n_0 ;
  wire \wrdat[24]_i_1_n_0 ;
  wire \wrdat[25]_i_1_n_0 ;
  wire \wrdat[26]_i_1_n_0 ;
  wire \wrdat[27]_i_1_n_0 ;
  wire \wrdat[28]_i_1_n_0 ;
  wire \wrdat[29]_i_1_n_0 ;
  wire \wrdat[29]_i_2_n_0 ;
  wire \wrdat[29]_i_3_n_0 ;
  wire \wrdat[2]_i_1_n_0 ;
  wire \wrdat[31]_i_1_n_0 ;
  wire \wrdat[3]_i_1_n_0 ;
  wire \wrdat[4]_i_1_n_0 ;
  wire \wrdat[5]_i_1_n_0 ;
  wire \wrdat[6]_i_1_n_0 ;
  wire \wrdat[7]_i_1_n_0 ;
  wire \wrdat[8]_i_1_n_0 ;
  wire \wrdat[9]_i_1_n_0 ;
  wire [31:0]NLW_ICAPE2_inst_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    ICAPE2_CSIB_i_1
       (.I0(ICAPE2_CSIB_i_2_n_0),
        .I1(busy_INST_0_i_1_n_0),
        .I2(state[9]),
        .I3(state[0]),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\state[0]_i_5_n_0 ),
        .O(ICAPE2_CSIB_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFA8FFA8FFA8A8A8)) 
    ICAPE2_CSIB_i_2
       (.I0(state[5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[7]),
        .I4(state[3]),
        .I5(state[8]),
        .O(ICAPE2_CSIB_i_2_n_0));
  FDRE ICAPE2_CSIB_reg
       (.C(clk),
        .CE(1'b1),
        .D(ICAPE2_CSIB_i_1_n_0),
        .Q(ICAPE2_CSIB),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  ICAPE2 #(
    .DEVICE_ID(32'h03651093),
    .ICAP_WIDTH("X32"),
    .SIM_CFG_FILE_NAME("NONE")) 
    ICAPE2_inst
       (.CLK(clk),
        .CSIB(ICAPE2_CSIB),
        .I(ICAPE2_DATA_I),
        .O(NLW_ICAPE2_inst_O_UNCONNECTED[31:0]),
        .RDWRB(ICAPE2_CSIB));
  LUT3 #(
    .INIT(8'hFD)) 
    busy_INST_0
       (.I0(state[0]),
        .I1(state[9]),
        .I2(busy_INST_0_i_1_n_0),
        .O(busy));
  LUT4 #(
    .INIT(16'hFFFE)) 
    busy_INST_0_i_1
       (.I0(state[5]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(busy_INST_0_i_2_n_0),
        .O(busy_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    busy_INST_0_i_2
       (.I0(state[6]),
        .I1(state[4]),
        .I2(state[7]),
        .I3(state[3]),
        .I4(state[8]),
        .O(busy_INST_0_i_2_n_0));
  FDRE multiboot_start_d0_reg
       (.C(clk),
        .CE(1'b1),
        .D(icape2_start),
        .Q(multiboot_start_d0),
        .R(1'b0));
  FDRE multiboot_start_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(multiboot_start_d0),
        .Q(multiboot_start_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFF4)) 
    \state[0]_i_1 
       (.I0(busy_INST_0_i_1_n_0),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\state[0]_i_4_n_0 ),
        .I4(state[0]),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \state[0]_i_2 
       (.I0(multiboot_start_d0),
        .I1(multiboot_start_d1),
        .I2(state[0]),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFCCCFCCCFCC8)) 
    \state[0]_i_3 
       (.I0(state[7]),
        .I1(\state[0]_i_6_n_0 ),
        .I2(state[3]),
        .I3(state[8]),
        .I4(state[4]),
        .I5(state[6]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF88888)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_7_n_0 ),
        .I1(state[7]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[5]),
        .I5(state[9]),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \state[0]_i_5 
       (.I0(\state[7]_i_3_n_0 ),
        .I1(state[4]),
        .I2(state[6]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[0]_i_6 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[5]),
        .O(\state[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_7 
       (.I0(state[3]),
        .I1(state[8]),
        .O(\state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \state[1]_i_1 
       (.I0(state[9]),
        .I1(multiboot_start_d0),
        .I2(multiboot_start_d1),
        .I3(state[0]),
        .I4(busy_INST_0_i_1_n_0),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[5]),
        .I3(state[9]),
        .I4(state[0]),
        .I5(busy_INST_0_i_2_n_0),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \state[3]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[5]),
        .I3(state[9]),
        .I4(state[0]),
        .I5(busy_INST_0_i_2_n_0),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \state[4]_i_1 
       (.I0(state[8]),
        .I1(state[3]),
        .I2(state[7]),
        .I3(\state[9]_i_3_n_0 ),
        .I4(state[6]),
        .I5(state[4]),
        .O(\state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[5]_i_1 
       (.I0(state[6]),
        .I1(state[4]),
        .I2(\state[7]_i_2_n_0 ),
        .O(\state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[6]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[5]),
        .I3(busy_INST_0_i_2_n_0),
        .I4(state[0]),
        .I5(state[9]),
        .O(\state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[7]_i_1 
       (.I0(state[4]),
        .I1(state[6]),
        .I2(\state[7]_i_2_n_0 ),
        .O(\state[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[7]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[5]),
        .I3(state[0]),
        .I4(state[9]),
        .I5(\state[7]_i_3_n_0 ),
        .O(\state[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[7]_i_3 
       (.I0(state[8]),
        .I1(state[3]),
        .I2(state[7]),
        .O(\state[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \state[8]_i_1 
       (.I0(state[3]),
        .I1(state[8]),
        .I2(state[7]),
        .I3(state[4]),
        .I4(state[6]),
        .I5(\state[9]_i_3_n_0 ),
        .O(\state[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[9]_i_1 
       (.I0(rst_n),
        .O(\state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \state[9]_i_2 
       (.I0(state[3]),
        .I1(state[8]),
        .I2(state[7]),
        .I3(\state[9]_i_3_n_0 ),
        .I4(state[6]),
        .I5(state[4]),
        .O(\state[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \state[9]_i_3 
       (.I0(state[9]),
        .I1(state[0]),
        .I2(state[5]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\state[9]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .S(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[3]_i_1_n_0 ),
        .Q(state[3]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[4]_i_1_n_0 ),
        .Q(state[4]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[5]_i_1_n_0 ),
        .Q(state[5]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[6]_i_1_n_0 ),
        .Q(state[6]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[7]_i_1_n_0 ),
        .Q(state[7]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[8]_i_1_n_0 ),
        .Q(state[8]),
        .R(\state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[9]_i_2_n_0 ),
        .Q(state[9]),
        .R(\state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \wrdat[0]_i_1 
       (.I0(\wrdat[29]_i_2_n_0 ),
        .I1(\state[7]_i_2_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .I3(\state[8]_i_1_n_0 ),
        .I4(icape2_addr[0]),
        .I5(\state[6]_i_1_n_0 ),
        .O(\wrdat[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[10]_i_1 
       (.I0(icape2_addr[10]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[11]_i_1 
       (.I0(icape2_addr[11]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[12]_i_1 
       (.I0(icape2_addr[12]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[13]_i_1 
       (.I0(icape2_addr[13]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[14]_i_1 
       (.I0(icape2_addr[14]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAFFEAEAEA)) 
    \wrdat[15]_i_1 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[6]_i_1_n_0 ),
        .I2(icape2_addr[15]),
        .I3(\state[7]_i_2_n_0 ),
        .I4(state[6]),
        .I5(state[4]),
        .O(\wrdat[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[16]_i_1 
       (.I0(icape2_addr[16]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAAABAAABAAA)) 
    \wrdat[17]_i_1 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(state[6]),
        .I2(state[4]),
        .I3(\state[7]_i_2_n_0 ),
        .I4(icape2_addr[17]),
        .I5(\state[6]_i_1_n_0 ),
        .O(\wrdat[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[18]_i_1 
       (.I0(icape2_addr[18]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[19]_i_1 
       (.I0(icape2_addr[19]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wrdat[1]_i_1 
       (.I0(\wrdat[31]_i_1_n_0 ),
        .I1(\state[8]_i_1_n_0 ),
        .I2(icape2_addr[1]),
        .I3(\state[6]_i_1_n_0 ),
        .O(\wrdat[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[20]_i_1 
       (.I0(icape2_addr[20]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[21]_i_1 
       (.I0(icape2_addr[21]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[22]_i_1 
       (.I0(icape2_addr[22]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[23]_i_1 
       (.I0(icape2_addr[23]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[24]_i_1 
       (.I0(icape2_addr[24]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[25]_i_1 
       (.I0(icape2_addr[25]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[26]_i_1 
       (.I0(icape2_addr[26]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[27]_i_1 
       (.I0(icape2_addr[27]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8FFF8FFF8F8F8)) 
    \wrdat[28]_i_1 
       (.I0(icape2_addr[28]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .I3(\state[7]_i_2_n_0 ),
        .I4(state[6]),
        .I5(state[4]),
        .O(\wrdat[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFF8F8F8F8F8)) 
    \wrdat[29]_i_1 
       (.I0(\state[7]_i_2_n_0 ),
        .I1(\wrdat[29]_i_2_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .I3(state[8]),
        .I4(state[3]),
        .I5(\wrdat[29]_i_3_n_0 ),
        .O(\wrdat[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrdat[29]_i_2 
       (.I0(state[4]),
        .I1(state[6]),
        .O(\wrdat[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wrdat[29]_i_3 
       (.I0(state[4]),
        .I1(state[6]),
        .I2(state[9]),
        .I3(state[0]),
        .I4(\state[0]_i_6_n_0 ),
        .I5(state[7]),
        .O(\wrdat[29]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wrdat[2]_i_1 
       (.I0(\wrdat[31]_i_1_n_0 ),
        .I1(\state[8]_i_1_n_0 ),
        .I2(icape2_addr[2]),
        .I3(\state[6]_i_1_n_0 ),
        .O(\wrdat[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \wrdat[31]_i_1 
       (.I0(state[5]),
        .I1(state[9]),
        .I2(state[0]),
        .I3(busy_INST_0_i_2_n_0),
        .I4(state[2]),
        .I5(state[1]),
        .O(\wrdat[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wrdat[3]_i_1 
       (.I0(\state[2]_i_1_n_0 ),
        .I1(\state[8]_i_1_n_0 ),
        .I2(icape2_addr[3]),
        .I3(\state[6]_i_1_n_0 ),
        .O(\wrdat[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[4]_i_1 
       (.I0(icape2_addr[4]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[5]_i_1 
       (.I0(icape2_addr[5]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[6]_i_1 
       (.I0(icape2_addr[6]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[7]_i_1 
       (.I0(icape2_addr[7]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[8]_i_1 
       (.I0(icape2_addr[8]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\wrdat[31]_i_1_n_0 ),
        .O(\wrdat[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wrdat[9]_i_1 
       (.I0(icape2_addr[9]),
        .I1(\state[6]_i_1_n_0 ),
        .I2(\state[2]_i_1_n_0 ),
        .O(\wrdat[9]_i_1_n_0 ));
  FDRE \wrdat_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[0]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[7]),
        .R(1'b0));
  FDRE \wrdat_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[10]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[13]),
        .R(1'b0));
  FDRE \wrdat_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[11]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[12]),
        .R(1'b0));
  FDRE \wrdat_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[12]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[11]),
        .R(1'b0));
  FDRE \wrdat_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[13]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[10]),
        .R(1'b0));
  FDRE \wrdat_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[14]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[9]),
        .R(1'b0));
  FDRE \wrdat_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[15]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[8]),
        .R(1'b0));
  FDRE \wrdat_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[16]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[23]),
        .R(1'b0));
  FDRE \wrdat_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[17]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[22]),
        .R(1'b0));
  FDRE \wrdat_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[18]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[21]),
        .R(1'b0));
  FDRE \wrdat_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[19]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[20]),
        .R(1'b0));
  FDRE \wrdat_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[1]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[6]),
        .R(1'b0));
  FDRE \wrdat_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[20]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[19]),
        .R(1'b0));
  FDRE \wrdat_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[21]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[18]),
        .R(1'b0));
  FDRE \wrdat_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[22]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[17]),
        .R(1'b0));
  FDRE \wrdat_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[23]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[16]),
        .R(1'b0));
  FDRE \wrdat_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[24]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[31]),
        .R(1'b0));
  FDRE \wrdat_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[25]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[30]),
        .R(1'b0));
  FDRE \wrdat_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[26]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[29]),
        .R(1'b0));
  FDRE \wrdat_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[27]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[28]),
        .R(1'b0));
  FDRE \wrdat_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[28]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[27]),
        .R(1'b0));
  FDRE \wrdat_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[29]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[26]),
        .R(1'b0));
  FDRE \wrdat_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[2]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[5]),
        .R(1'b0));
  FDRE \wrdat_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[25]),
        .R(1'b0));
  FDRE \wrdat_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[31]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[24]),
        .R(1'b0));
  FDRE \wrdat_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[3]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[4]),
        .R(1'b0));
  FDRE \wrdat_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[4]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[3]),
        .R(1'b0));
  FDRE \wrdat_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[5]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[2]),
        .R(1'b0));
  FDRE \wrdat_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[6]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[1]),
        .R(1'b0));
  FDRE \wrdat_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[7]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[0]),
        .R(1'b0));
  FDRE \wrdat_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[8]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[15]),
        .R(1'b0));
  FDRE \wrdat_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\wrdat[9]_i_1_n_0 ),
        .Q(ICAPE2_DATA_I[14]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
