`timescale 1ns / 1ns

module top
(
    input sys_clk_p,// Differentia system clock 200Mhz input on board
	input sys_clk_n,
	
    output led,
    output uart_tx
);

//===========================================================================
//Differentia system clock to single end clock
//===========================================================================
wire        sys_clk;

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