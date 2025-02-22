`timescale 1ns / 1ns

module top
(
    input sys_clk_p,// Differentia system clock 200Mhz input on board
	input sys_clk_n,
	
	input[1:0] key,
	
    output led,
    output uart_tx
);

//===========================================================================
//Differentia system clock to single end clock
//===========================================================================
wire        sys_clk,clk_10m;

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

key_jitter#
(
	.CLK_FREQ(200000000) //200MHz
)
key0
(
	.clk_i(sys_clk),
	.key_i(key[1]),
	.key_cap(key_cap)
);



icape2_ctrl_0 icape2_inst (
  .clk          (sys_clk    ),    // input wire clk
  .rst_n        (1'b1       ),    // input wire rst_n
  .icape2_start (key_cap    ),    // input wire icape2_start
  .icape2_addr  (32'h000000 ),    // input wire [31 : 0] icape2_addr
  .busy         (           )     // output wire busy
);

/* icape2_ctrl#(
	.DEVICE_ID  (32'h3691093)   // 7K325t-651 7A100t-631 
										// 7A200T-636 7VX690T-691 
)
icape2_inst
(
	.clk			(sys_clk)		,
	.rst_n			(1'b1)			,
	.icape2_start 	(key_cap)		,//start posedge 
	.icape2_addr	(32'h00000000)	,//start multiboot addr

	.busy           ()
); */

led_blink u0_led_blink(
    .clk(sys_clk),  //50MHz

    .led(led)
);

uart_top u1_uart_top
(
    .sysclk_i(sys_clk),
    .uart_tx_o(uart_tx) 
);

endmodule