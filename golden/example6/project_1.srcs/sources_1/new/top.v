`timescale 1ns / 1ns

module top
(
    input sys_clk_p,// Differentia system clock 200Mhz input on board
	input sys_clk_n,
	
	input[1:0] key,
	
	output busy,
	
    output led,
    output uart_tx
);

//===========================================================================
//Differentia system clock to single end clock
//===========================================================================
wire        sys_clk,clk_10m;
wire 		key_cap;
// IBUFDS: Differential Input Buffer
//         Kintex-7
// Xilinx HDL Language Template, version 2017.4
   
IBUFDS #(
	.DIFF_TERM("TRUE"),       // Differential Termination
	.IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
	.IOSTANDARD("DEFAULT")     // Specify the input I/O standard
) u_ibuf_sys_clk (
	.O(sys_clk),  // Buffer output
	.I(sys_clk_p),  // Diff_p buffer input (connect directly to top-level port)
	.IB(sys_clk_n) // Diff_n buffer input (connect directly to top-level port)
);          

clk_wiz_0 clk_wiz_10m
   (
    // Clock out ports
    .clk_out1(clk_10m),     // output clk_out1
    // Status and control signals
    .locked(),       // output locked
   // Clock in ports
    .clk_in1(sys_clk)      // input clk_in1
);


key_jitter#
(
	.CLK_FREQ(10000000) //200MHz
)
key0
(
	.clk_i(clk_10m),
	.key_i(key[0]),
	.key_cap(key_cap)
);

icape2_ctrl_0 icape2_inst (
  .clk          (clk_10m    ),    // input wire clk
  .rst_n        (1'b1       ),    // input wire rst_n
  .icape2_start (key_cap    ),    // input wire icape2_start
  .icape2_addr  (32'h800000 ),    // input wire [31 : 0] icape2_addr
  .busy         ( busy      )     // output wire busy
);


/* icape2_ctrl#(
	.DEVICE_ID  (32'h3691093),   // 7K325t-651 7A100t-631 
										                // 7A200T-636 7VX690T-691 
    .FLASH_SIZE_SMALLER_256Mb(1)       //0-->smaller 256Mb 1-->equal to or greater than 256 Mb
)icape2_ctrl_inst
(
	.clk			(clk_10m),
	.rst_n			(1'b1),
	.icape2_start 	(key_cap),//start posedge 
	.icape2_addr	(32'h800000)	,//start multiboot addr
				
	.busy           (busy)
); */


led_blink u0_led_blink(
    .clk(clk_10m),  //50MHz

    .led(led)
);

uart_top u1_uart_top
(
    .sysclk_i(clk_10m),
    .uart_tx_o(uart_tx) 
);

endmodule