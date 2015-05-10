`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:01 05/04/2015
// Design Name:   VController
// Module Name:   Y:/Documents/Controller/vconttest.v
// Project Name:  Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VController
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vconttest;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [9:0] hcount;
	wire [9:0] vcount;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	VController uut (
		.clk(clk), 
		.rst(rst), 
		.hcount(hcount), 
		.vcount(vcount), 
		.hsync(hsync), 
		.vsync(vsync)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		#10;
		rst = 1;
		
		#10;
		rst = 0;
	end
      always 
			#0.5 clk=!clk ;
			
endmodule

