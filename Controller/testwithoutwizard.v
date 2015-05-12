`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:33:32 05/12/2015
// Design Name:   testwithoutwiz
// Module Name:   Y:/Desktop/github/DigitalProject2/VGA/Controller/testwithoutwizard.v
// Project Name:  Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: testwithoutwiz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testwithoutwizard;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] r;
	wire [2:0] g;
	wire [1:0] b;
	wire hsync;
	wire vsync;
	wire rs;
	wire gs;
	wire [1:0] bs;

	// Instantiate the Unit Under Test (UUT)
	testwithoutwiz uut (
		.clk(clk), 
		.rst(rst), 
		.r(r), 
		.g(g), 
		.b(b), 
		.hsync(hsync), 
		.vsync(vsync), 
		.rs(rs), 
		.gs(gs), 
		.bs(bs)
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

