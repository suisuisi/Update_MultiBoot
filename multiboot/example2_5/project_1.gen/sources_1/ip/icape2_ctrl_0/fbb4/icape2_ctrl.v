`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/15 21:08:53
// Design Name: 
// Module Name: icape2_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module icape2_ctrl#(
	parameter DEVICE_ID                = 32'h3651093,   // 7K325t-651 7A100t-631 
										                // 7A200T-636 7VX690T-691 
    parameter FLASH_SIZE_SMALLER_256Mb = 0       //0-->smaller 256Mb 1-->equal to or greater than 256 Mb
)
(
	input 			clk				,
	input 			rst_n			,
	input 			icape2_start 	,//start posedge 
	input [31:0] 	icape2_addr		,//start multiboot addr
	
	output reg 		busy
);

   // ICAPE2: Internal Configuration Access Port
   //         Kintex-7
   // Xilinx HDL Language Template, version 2024.1
  wire [31:0]  	ICAPE2_DATA_O;
  reg 			ICAPE2_CSIB;
  wire [31:0] 	ICAPE2_DATA_I;
  reg 			ICAPE2_RDWRB;

   ICAPE2 #(
      .DEVICE_ID(DEVICE_ID),     // Specifies the pre-programmed Device ID value to be used for simulation
                                  // purposes.
      .ICAP_WIDTH("X32"),         // Specifies the input and output data width.
      .SIM_CFG_FILE_NAME("NONE")  // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
                                  // model.
   )
   ICAPE2_inst (
      .O	(	ICAPE2_DATA_O	),         // 32-bit output: Configuration data output bus
      .CLK	(	clk				),     // 1-bit input: Clock Input
      .CSIB	(	ICAPE2_CSIB		),   // 1-bit input: Active-Low ICAP Enable
      .I	(	ICAPE2_DATA_I	),         // 32-bit input: Configuration data input bus
      .RDWRB(	ICAPE2_RDWRB	)  // 1-bit input: Read/Write Select input
   );

   // End of ICAPE2_inst instantiation

//ila_1 ila_icape2 (
//	.clk(clk), // input wire clk


//	.probe0(ICAPE2_DATA_I), // input wire [31:0]  probe0  
//	.probe1(state) // input wire [15:0]  probe1
//);			
				
				
  wire [31:0] Dummy 	= 32'hFFFF_FFFF;
  wire [31:0] Sync_Word = 32'hAA99_5566;
  wire [31:0] NOOP		= 32'h2000_0000;
  wire [31:0] WR_WBSTAR = 32'h3002_0001;
  wire [31:0] WBSTAR                   ;

//-----------------------------------------------------------------------------
// State machine for driving 7-Series ICAP block to warmboot to an alt addr
// If jp1_l == 0, reconfigure FPGA with bitstream at SPI PROM addr 0x00200000
// Warning: Make sure and disable i_am_slot0 if building a bitfile for
// another slot ( or else the slot will just reconfigure again and again ).
// Note the 7bit address shift on START_ADDR. See Table 7-2 of document:
//   www.xilinx.com/support/documentation/user_guides/ug470_7Series_Config.pdf
// Seems like it should be 8bits, but 3bit shift is what actually works.
//-----------------------------------------------------------------------------
generate if(FLASH_SIZE_SMALLER_256Mb == 1 ) begin:icape2_addr31_8
        assign WBSTAR 	= {3'b000,5'h0,icape2_addr[31:8]};
    end else if (FLASH_SIZE_SMALLER_256Mb == 0) begin:icape2_addr31_3
        assign WBSTAR 	= {3'b000,icape2_addr[31:3]};
    end
endgenerate

  wire [31:0] WR_CMD 	= 32'h3000_8001;
  wire [31:0] IPROG 	= 32'h0000_000F;
	
	
	//ICAPE2 BIT SWAPPING
	reg[31:0] wrdat;
	
	assign ICAPE2_DATA_I = {	wrdat[24],wrdat[25],wrdat[26],wrdat[27],wrdat[28],wrdat[29],wrdat[30],wrdat[31],
								wrdat[16],wrdat[17],wrdat[18],wrdat[19],wrdat[20],wrdat[21],wrdat[22],wrdat[23],
								wrdat[ 8],wrdat[ 9],wrdat[10],wrdat[11],wrdat[12],wrdat[13],wrdat[14],wrdat[15],
								wrdat[ 0],wrdat[ 1],wrdat[ 2],wrdat[ 3],wrdat[ 4],wrdat[ 5],wrdat[ 6],wrdat[ 7]
							};
					  
//----------------FSM---------------------//
  localparam S_IDLE 	= 16'h0001;
  localparam S_DUMMY 	= 16'h0002;
  localparam S_SYN_WORD = 16'h0004;
  localparam S_NOOP1 	= 16'h0008;
  localparam S_WR_WBSTAR= 16'h0010;
  localparam S_WBSTAR 	= 16'h0020;
  localparam S_WR_CMD 	= 16'h0040;
  localparam S_IPROG 	= 16'h0080;
  localparam S_NOOP2 	= 16'h0100;
  localparam S_STOP 	= 16'h0200;

//----------------上升沿检测---------------------//
  wire multiboot_start_pe;
  reg multiboot_start_d0,multiboot_start_d1;

  assign multiboot_start_pe =multiboot_start_d0&(~multiboot_start_d1);

always@(posedge clk) begin
	multiboot_start_d0 <= icape2_start;
	multiboot_start_d1 <= multiboot_start_d0;
end

  reg [15:0] state = S_IDLE;
  reg [15:0] next_state ;

always@(posedge clk) begin
	if(~rst_n) begin
		state <= S_IDLE;
	end else begin
		state <= next_state;
	end
end

always@(*) begin
	case(state)
	  S_IDLE : begin
		if(multiboot_start_pe == 1'b1) begin
			next_state <= S_DUMMY;
		end else begin
			next_state <= S_IDLE;
		end
	  end
	  
	  S_DUMMY 		: next_state <= S_SYN_WORD	;
	  S_SYN_WORD 	: next_state <= S_NOOP1		;
	  S_NOOP1 		: next_state <= S_WR_WBSTAR	;
	  S_WR_WBSTAR 	: next_state <= S_WBSTAR	;
	  S_WBSTAR 		: next_state <= S_WR_CMD	;
	  S_WR_CMD 		: next_state <= S_IPROG		;
	  S_IPROG 		: next_state <= S_NOOP2		;
	  S_NOOP2 		: next_state <= S_STOP		;
	  S_STOP 		: next_state <= S_IDLE		;
	  default 		: next_state <= S_IDLE		;
	endcase
end

always@(posedge clk)begin
	case(state)
	  S_IDLE:begin
	    wrdat <= 32'd0;
		ICAPE2_CSIB <= 1'b1;
		ICAPE2_RDWRB <= 1'b1;
	  end
	  S_DUMMY:begin
	    wrdat <= Dummy;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_SYN_WORD:begin
	    wrdat <= Sync_Word;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_NOOP1:begin
	    wrdat <= NOOP;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_WR_WBSTAR:begin
	    wrdat <= WR_WBSTAR;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_WBSTAR:begin
	    wrdat <= WBSTAR;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_WR_CMD:begin
	    wrdat <= WR_CMD;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_IPROG:begin
	    wrdat <= IPROG;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	  
	  S_NOOP2:begin
	    wrdat <= NOOP;
		ICAPE2_CSIB <= 1'b0;
		ICAPE2_RDWRB <= 1'b0;
	  end	
	  S_STOP:begin
	    wrdat <= 32'd0;
		ICAPE2_CSIB <= 1'b1;
		ICAPE2_RDWRB <= 1'b1;
	  end	
	  default:begin
	    wrdat <= 32'd0;
		ICAPE2_CSIB <= 1'b1;
		ICAPE2_RDWRB <= 1'b1;
	  end		
    endcase
end

always@(*) begin
	case (state)
	  S_IDLE :busy <= 1'b0;
	  default:busy <= 1'b1;
	endcase
end

endmodule
