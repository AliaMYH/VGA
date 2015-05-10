`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:40:42 05/09/2015
// Design Name:   testBigMod
// Module Name:   Y:/Documents/Controller/testBig.v
// Project Name:  Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: testBigMod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testBig;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] r;
	wire [2:0] g;
	wire [1:0] b;
	wire hsync;
	wire vsync;

	// Instantiate the Unit Under Test (UUT)
	testBigMod uut (
		.clk(clk), 
		.rst(rst), 
		.r(r), 
		.g(g), 
		.b(b), 
		.hsync(hsync), 
		.vsync(vsync)
	);

	always #0.01 clk= ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		//data1 = 0;
        
		#1 
		rst= 1'b1;
		#3 
		rst = 1'b0;

	end
      
endmodule

