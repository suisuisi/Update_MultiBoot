-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Sep 24 11:43:18 2024
-- Host        : MININT-7LTFL4B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/project/golden/example6_2/project_1.gen/sources_1/ip/icape2_ctrl_0/icape2_ctrl_0_sim_netlist.vhdl
-- Design      : icape2_ctrl_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icape2_ctrl_0_icape2_ctrl is
  port (
    busy : out STD_LOGIC;
    clk : in STD_LOGIC;
    icape2_start : in STD_LOGIC;
    icape2_addr : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of icape2_ctrl_0_icape2_ctrl : entity is "icape2_ctrl";
end icape2_ctrl_0_icape2_ctrl;

architecture STRUCTURE of icape2_ctrl_0_icape2_ctrl is
  signal ICAPE2_CSIB : STD_LOGIC;
  signal ICAPE2_CSIB_i_1_n_0 : STD_LOGIC;
  signal ICAPE2_CSIB_i_2_n_0 : STD_LOGIC;
  signal ICAPE2_DATA_I : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal busy_INST_0_i_1_n_0 : STD_LOGIC;
  signal busy_INST_0_i_2_n_0 : STD_LOGIC;
  signal multiboot_start_d0 : STD_LOGIC;
  signal multiboot_start_d1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state[0]_i_4_n_0\ : STD_LOGIC;
  signal \state[0]_i_5_n_0\ : STD_LOGIC;
  signal \state[0]_i_6_n_0\ : STD_LOGIC;
  signal \state[0]_i_7_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[6]_i_1_n_0\ : STD_LOGIC;
  signal \state[7]_i_1_n_0\ : STD_LOGIC;
  signal \state[7]_i_2_n_0\ : STD_LOGIC;
  signal \state[7]_i_3_n_0\ : STD_LOGIC;
  signal \state[8]_i_1_n_0\ : STD_LOGIC;
  signal \state[9]_i_1_n_0\ : STD_LOGIC;
  signal \state[9]_i_2_n_0\ : STD_LOGIC;
  signal \state[9]_i_3_n_0\ : STD_LOGIC;
  signal \wrdat[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[10]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[11]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[12]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[13]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[14]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[15]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[16]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[17]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[18]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[19]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[20]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[21]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[22]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[23]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[28]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[29]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[29]_i_2_n_0\ : STD_LOGIC;
  signal \wrdat[29]_i_3_n_0\ : STD_LOGIC;
  signal \wrdat[2]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[31]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[3]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[4]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[5]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[6]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[7]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[8]_i_1_n_0\ : STD_LOGIC;
  signal \wrdat[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_ICAPE2_inst_O_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ICAPE2_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_INST_0_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \state[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[9]_i_3\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[4]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[5]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[6]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[7]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[8]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute FSM_ENCODED_STATES of \state_reg[9]\ : label is "S_IDLE:0000000000000001,S_WBSTAR:0000000000100000,S_NOOP1:0000000000001000,S_NOOP2:0000000100000000,S_SYN_WORD:0000000000000100,S_IPROG:0000000010000000,S_DUMMY:0000000000000010,S_WR_CMD:0000000001000000,S_STOP:0000001000000000,S_WR_WBSTAR:0000000000010000";
  attribute SOFT_HLUTNM of \wrdat[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wrdat[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wrdat[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wrdat[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wrdat[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wrdat[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wrdat[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wrdat[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wrdat[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wrdat[20]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrdat[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wrdat[22]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wrdat[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wrdat[29]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wrdat[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wrdat[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wrdat[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wrdat[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wrdat[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wrdat[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wrdat[9]_i_1\ : label is "soft_lutpair13";
begin
ICAPE2_CSIB_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => ICAPE2_CSIB_i_2_n_0,
      I1 => busy_INST_0_i_1_n_0,
      I2 => state(9),
      I3 => state(0),
      I4 => \state[0]_i_3_n_0\,
      I5 => \state[0]_i_5_n_0\,
      O => ICAPE2_CSIB_i_1_n_0
    );
ICAPE2_CSIB_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFA8FFA8A8A8"
    )
        port map (
      I0 => state(5),
      I1 => state(1),
      I2 => state(2),
      I3 => state(7),
      I4 => state(3),
      I5 => state(8),
      O => ICAPE2_CSIB_i_2_n_0
    );
ICAPE2_CSIB_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ICAPE2_CSIB_i_1_n_0,
      Q => ICAPE2_CSIB,
      R => '0'
    );
ICAPE2_inst: unisim.vcomponents.ICAPE2
    generic map(
      DEVICE_ID => X"00001093",
      ICAP_WIDTH => "X32",
      SIM_CFG_FILE_NAME => "NONE"
    )
        port map (
      CLK => clk,
      CSIB => ICAPE2_CSIB,
      I(31 downto 0) => ICAPE2_DATA_I(31 downto 0),
      O(31 downto 0) => NLW_ICAPE2_inst_O_UNCONNECTED(31 downto 0),
      RDWRB => ICAPE2_CSIB
    );
\NEGEDGE_LEVEL.multiboot_start_d0_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => icape2_start,
      Q => multiboot_start_d0,
      R => '0'
    );
\NEGEDGE_LEVEL.multiboot_start_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => multiboot_start_d0,
      Q => multiboot_start_d1,
      R => '0'
    );
busy_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => state(0),
      I1 => state(9),
      I2 => busy_INST_0_i_1_n_0,
      O => busy
    );
busy_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => state(5),
      I1 => state(1),
      I2 => state(2),
      I3 => busy_INST_0_i_2_n_0,
      O => busy_INST_0_i_1_n_0
    );
busy_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => state(6),
      I1 => state(4),
      I2 => state(7),
      I3 => state(3),
      I4 => state(8),
      O => busy_INST_0_i_2_n_0
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFF4"
    )
        port map (
      I0 => busy_INST_0_i_1_n_0,
      I1 => \state[0]_i_2_n_0\,
      I2 => \state[0]_i_3_n_0\,
      I3 => \state[0]_i_4_n_0\,
      I4 => state(0),
      I5 => \state[0]_i_5_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => multiboot_start_d0,
      I1 => multiboot_start_d1,
      I2 => state(0),
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCCCFCCCFCC8"
    )
        port map (
      I0 => state(7),
      I1 => \state[0]_i_6_n_0\,
      I2 => state(3),
      I3 => state(8),
      I4 => state(4),
      I5 => state(6),
      O => \state[0]_i_3_n_0\
    );
\state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF88888"
    )
        port map (
      I0 => \state[0]_i_7_n_0\,
      I1 => state(7),
      I2 => state(2),
      I3 => state(1),
      I4 => state(5),
      I5 => state(9),
      O => \state[0]_i_4_n_0\
    );
\state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
        port map (
      I0 => \state[7]_i_3_n_0\,
      I1 => state(4),
      I2 => state(6),
      I3 => state(2),
      I4 => state(1),
      O => \state[0]_i_5_n_0\
    );
\state[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(5),
      O => \state[0]_i_6_n_0\
    );
\state[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(8),
      O => \state[0]_i_7_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => state(9),
      I1 => multiboot_start_d0,
      I2 => multiboot_start_d1,
      I3 => state(0),
      I4 => busy_INST_0_i_1_n_0,
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(5),
      I3 => state(9),
      I4 => state(0),
      I5 => busy_INST_0_i_2_n_0,
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(5),
      I3 => state(9),
      I4 => state(0),
      I5 => busy_INST_0_i_2_n_0,
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => state(8),
      I1 => state(3),
      I2 => state(7),
      I3 => \state[9]_i_3_n_0\,
      I4 => state(6),
      I5 => state(4),
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(6),
      I1 => state(4),
      I2 => \state[7]_i_2_n_0\,
      O => \state[5]_i_1_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(5),
      I3 => busy_INST_0_i_2_n_0,
      I4 => state(0),
      I5 => state(9),
      O => \state[6]_i_1_n_0\
    );
\state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(4),
      I1 => state(6),
      I2 => \state[7]_i_2_n_0\,
      O => \state[7]_i_1_n_0\
    );
\state[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(5),
      I3 => state(0),
      I4 => state(9),
      I5 => \state[7]_i_3_n_0\,
      O => \state[7]_i_2_n_0\
    );
\state[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => state(8),
      I1 => state(3),
      I2 => state(7),
      O => \state[7]_i_3_n_0\
    );
\state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => state(3),
      I1 => state(8),
      I2 => state(7),
      I3 => state(4),
      I4 => state(6),
      I5 => \state[9]_i_3_n_0\,
      O => \state[8]_i_1_n_0\
    );
\state[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \state[9]_i_1_n_0\
    );
\state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => state(3),
      I1 => state(8),
      I2 => state(7),
      I3 => \state[9]_i_3_n_0\,
      I4 => state(6),
      I5 => state(4),
      O => \state[9]_i_2_n_0\
    );
\state[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(9),
      I1 => state(0),
      I2 => state(5),
      I3 => state(1),
      I4 => state(2),
      O => \state[9]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      S => \state[9]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => \state[9]_i_1_n_0\
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => state(2),
      R => \state[9]_i_1_n_0\
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[3]_i_1_n_0\,
      Q => state(3),
      R => \state[9]_i_1_n_0\
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[4]_i_1_n_0\,
      Q => state(4),
      R => \state[9]_i_1_n_0\
    );
\state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[5]_i_1_n_0\,
      Q => state(5),
      R => \state[9]_i_1_n_0\
    );
\state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[6]_i_1_n_0\,
      Q => state(6),
      R => \state[9]_i_1_n_0\
    );
\state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[7]_i_1_n_0\,
      Q => state(7),
      R => \state[9]_i_1_n_0\
    );
\state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[8]_i_1_n_0\,
      Q => state(8),
      R => \state[9]_i_1_n_0\
    );
\state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \state[9]_i_2_n_0\,
      Q => state(9),
      R => \state[9]_i_1_n_0\
    );
\wrdat[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \wrdat[29]_i_2_n_0\,
      I1 => \state[7]_i_2_n_0\,
      I2 => \state[2]_i_1_n_0\,
      I3 => \state[8]_i_1_n_0\,
      I4 => icape2_addr(0),
      I5 => \state[6]_i_1_n_0\,
      O => \wrdat[0]_i_1_n_0\
    );
\wrdat[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(10),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[10]_i_1_n_0\
    );
\wrdat[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(11),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[11]_i_1_n_0\
    );
\wrdat[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(12),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[12]_i_1_n_0\
    );
\wrdat[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(13),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[13]_i_1_n_0\
    );
\wrdat[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(14),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[14]_i_1_n_0\
    );
\wrdat[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAFFEAEAEA"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[6]_i_1_n_0\,
      I2 => icape2_addr(15),
      I3 => \state[7]_i_2_n_0\,
      I4 => state(6),
      I5 => state(4),
      O => \wrdat[15]_i_1_n_0\
    );
\wrdat[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(16),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[16]_i_1_n_0\
    );
\wrdat[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAAABAAABAAA"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => state(6),
      I2 => state(4),
      I3 => \state[7]_i_2_n_0\,
      I4 => icape2_addr(17),
      I5 => \state[6]_i_1_n_0\,
      O => \wrdat[17]_i_1_n_0\
    );
\wrdat[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(18),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[18]_i_1_n_0\
    );
\wrdat[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(19),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[19]_i_1_n_0\
    );
\wrdat[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \wrdat[31]_i_1_n_0\,
      I1 => \state[8]_i_1_n_0\,
      I2 => icape2_addr(1),
      I3 => \state[6]_i_1_n_0\,
      O => \wrdat[1]_i_1_n_0\
    );
\wrdat[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(20),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[20]_i_1_n_0\
    );
\wrdat[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(21),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[21]_i_1_n_0\
    );
\wrdat[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(22),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[22]_i_1_n_0\
    );
\wrdat[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(23),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[23]_i_1_n_0\
    );
\wrdat[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF60"
    )
        port map (
      I0 => state(4),
      I1 => state(6),
      I2 => \state[7]_i_2_n_0\,
      I3 => \state[2]_i_1_n_0\,
      O => \wrdat[28]_i_1_n_0\
    );
\wrdat[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFF8F8F8F8F8"
    )
        port map (
      I0 => \state[7]_i_2_n_0\,
      I1 => \wrdat[29]_i_2_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      I3 => state(8),
      I4 => state(3),
      I5 => \wrdat[29]_i_3_n_0\,
      O => \wrdat[29]_i_1_n_0\
    );
\wrdat[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => state(4),
      I1 => state(6),
      O => \wrdat[29]_i_2_n_0\
    );
\wrdat[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => state(4),
      I1 => state(6),
      I2 => state(9),
      I3 => state(0),
      I4 => \state[0]_i_6_n_0\,
      I5 => state(7),
      O => \wrdat[29]_i_3_n_0\
    );
\wrdat[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \wrdat[31]_i_1_n_0\,
      I1 => \state[8]_i_1_n_0\,
      I2 => icape2_addr(2),
      I3 => \state[6]_i_1_n_0\,
      O => \wrdat[2]_i_1_n_0\
    );
\wrdat[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010000"
    )
        port map (
      I0 => state(5),
      I1 => state(9),
      I2 => state(0),
      I3 => busy_INST_0_i_2_n_0,
      I4 => state(2),
      I5 => state(1),
      O => \wrdat[31]_i_1_n_0\
    );
\wrdat[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \state[2]_i_1_n_0\,
      I1 => \state[8]_i_1_n_0\,
      I2 => icape2_addr(3),
      I3 => \state[6]_i_1_n_0\,
      O => \wrdat[3]_i_1_n_0\
    );
\wrdat[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(4),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[4]_i_1_n_0\
    );
\wrdat[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(5),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[5]_i_1_n_0\
    );
\wrdat[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(6),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[6]_i_1_n_0\
    );
\wrdat[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(7),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[7]_i_1_n_0\
    );
\wrdat[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(8),
      I1 => \state[6]_i_1_n_0\,
      I2 => \wrdat[31]_i_1_n_0\,
      O => \wrdat[8]_i_1_n_0\
    );
\wrdat[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => icape2_addr(9),
      I1 => \state[6]_i_1_n_0\,
      I2 => \state[2]_i_1_n_0\,
      O => \wrdat[9]_i_1_n_0\
    );
\wrdat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[0]_i_1_n_0\,
      Q => ICAPE2_DATA_I(7),
      R => '0'
    );
\wrdat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[10]_i_1_n_0\,
      Q => ICAPE2_DATA_I(13),
      R => '0'
    );
\wrdat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[11]_i_1_n_0\,
      Q => ICAPE2_DATA_I(12),
      R => '0'
    );
\wrdat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[12]_i_1_n_0\,
      Q => ICAPE2_DATA_I(11),
      R => '0'
    );
\wrdat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[13]_i_1_n_0\,
      Q => ICAPE2_DATA_I(10),
      R => '0'
    );
\wrdat_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[14]_i_1_n_0\,
      Q => ICAPE2_DATA_I(9),
      R => '0'
    );
\wrdat_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[15]_i_1_n_0\,
      Q => ICAPE2_DATA_I(8),
      R => '0'
    );
\wrdat_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[16]_i_1_n_0\,
      Q => ICAPE2_DATA_I(23),
      R => '0'
    );
\wrdat_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[17]_i_1_n_0\,
      Q => ICAPE2_DATA_I(22),
      R => '0'
    );
\wrdat_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[18]_i_1_n_0\,
      Q => ICAPE2_DATA_I(21),
      R => '0'
    );
\wrdat_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[19]_i_1_n_0\,
      Q => ICAPE2_DATA_I(20),
      R => '0'
    );
\wrdat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[1]_i_1_n_0\,
      Q => ICAPE2_DATA_I(6),
      R => '0'
    );
\wrdat_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[20]_i_1_n_0\,
      Q => ICAPE2_DATA_I(19),
      R => '0'
    );
\wrdat_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[21]_i_1_n_0\,
      Q => ICAPE2_DATA_I(18),
      R => '0'
    );
\wrdat_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[22]_i_1_n_0\,
      Q => ICAPE2_DATA_I(17),
      R => '0'
    );
\wrdat_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[23]_i_1_n_0\,
      Q => ICAPE2_DATA_I(16),
      R => '0'
    );
\wrdat_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => ICAPE2_DATA_I(31),
      R => '0'
    );
\wrdat_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[31]_i_1_n_0\,
      Q => ICAPE2_DATA_I(30),
      R => '0'
    );
\wrdat_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => ICAPE2_DATA_I(29),
      R => '0'
    );
\wrdat_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[31]_i_1_n_0\,
      Q => ICAPE2_DATA_I(28),
      R => '0'
    );
\wrdat_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[28]_i_1_n_0\,
      Q => ICAPE2_DATA_I(27),
      R => '0'
    );
\wrdat_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[29]_i_1_n_0\,
      Q => ICAPE2_DATA_I(26),
      R => '0'
    );
\wrdat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[2]_i_1_n_0\,
      Q => ICAPE2_DATA_I(5),
      R => '0'
    );
\wrdat_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => ICAPE2_DATA_I(25),
      R => '0'
    );
\wrdat_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[31]_i_1_n_0\,
      Q => ICAPE2_DATA_I(24),
      R => '0'
    );
\wrdat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[3]_i_1_n_0\,
      Q => ICAPE2_DATA_I(4),
      R => '0'
    );
\wrdat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[4]_i_1_n_0\,
      Q => ICAPE2_DATA_I(3),
      R => '0'
    );
\wrdat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[5]_i_1_n_0\,
      Q => ICAPE2_DATA_I(2),
      R => '0'
    );
\wrdat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[6]_i_1_n_0\,
      Q => ICAPE2_DATA_I(1),
      R => '0'
    );
\wrdat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[7]_i_1_n_0\,
      Q => ICAPE2_DATA_I(0),
      R => '0'
    );
\wrdat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[8]_i_1_n_0\,
      Q => ICAPE2_DATA_I(15),
      R => '0'
    );
\wrdat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \wrdat[9]_i_1_n_0\,
      Q => ICAPE2_DATA_I(14),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity icape2_ctrl_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    icape2_start : in STD_LOGIC;
    icape2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of icape2_ctrl_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of icape2_ctrl_0 : entity is "icape2_ctrl_0,icape2_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of icape2_ctrl_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of icape2_ctrl_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of icape2_ctrl_0 : entity is "icape2_ctrl,Vivado 2024.1";
end icape2_ctrl_0;

architecture STRUCTURE of icape2_ctrl_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.icape2_ctrl_0_icape2_ctrl
     port map (
      busy => busy,
      clk => clk,
      icape2_addr(23 downto 0) => icape2_addr(31 downto 8),
      icape2_start => icape2_start,
      rst_n => rst_n
    );
end STRUCTURE;
