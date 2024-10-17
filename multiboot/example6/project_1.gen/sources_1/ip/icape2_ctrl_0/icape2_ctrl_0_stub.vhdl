-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Sep 24 12:35:51 2024
-- Host        : MININT-7LTFL4B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/project/multiboot/example6_2/project_1.gen/sources_1/ip/icape2_ctrl_0/icape2_ctrl_0_stub.vhdl
-- Design      : icape2_ctrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1927-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity icape2_ctrl_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    icape2_start : in STD_LOGIC;
    icape2_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    busy : out STD_LOGIC
  );

end icape2_ctrl_0;

architecture stub of icape2_ctrl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,icape2_start,icape2_addr[31:0],busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "icape2_ctrl,Vivado 2024.1";
begin
end;
