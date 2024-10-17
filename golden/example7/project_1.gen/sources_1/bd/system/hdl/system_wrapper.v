//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Sep 20 09:06:54 2024
//Host        : MININT-7LTFL4B running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (UART_DEBUG_rxd,
    UART_DEBUG_txd,
    //dip_switches_4bits_tri_i,
    //led_tri_o,
    //push_buttons_4bits_tri_i,
    sys_clk_n,
    sys_clk_p);
  input UART_DEBUG_rxd;
  output UART_DEBUG_txd;
  //input [3:0]dip_switches_4bits_tri_i;
  //output [3:0]led_tri_o;
  //input [3:0]push_buttons_4bits_tri_i;
  input sys_clk_n;
  input sys_clk_p;

  wire UART_DEBUG_rxd;
  wire UART_DEBUG_txd;
  wire [3:0]dip_switches_4bits_tri_i;
  wire [3:0]led_tri_o;
  wire [3:0]push_buttons_4bits_tri_i;
  wire sys_clk_n;
  wire sys_clk_p;

  system system_i
       (.UART_DEBUG_rxd(UART_DEBUG_rxd),
        .UART_DEBUG_txd(UART_DEBUG_txd),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .led_tri_o(led_tri_o),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .sys_clk_n(sys_clk_n),
        .sys_clk_p(sys_clk_p));
endmodule
