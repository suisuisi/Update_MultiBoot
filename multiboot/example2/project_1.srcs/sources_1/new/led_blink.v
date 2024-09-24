module led_blink(
    input  clk,  //50MHz

    output reg led
);

parameter ONE_SECOND = 200*1000*1000; //Only valid for 50MHz input clock

localparam ALL_LED_ON = 1'b0; //led active low
localparam ALL_LED_OFF = ~ALL_LED_ON; //led active low

reg [31:0] count; 

always @(posedge clk) begin
	if(count == ONE_SECOND-1) count <= 0;
	else count <= count + 1;
end

always @(posedge clk) begin
    if(count == ONE_SECOND-1) begin
		if(led == ALL_LED_ON) led <= ALL_LED_OFF;
		else led <= ALL_LED_ON;
	end
end

endmodule