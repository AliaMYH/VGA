`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:40:12 05/10/2015
// Design Name:   count2bit
// Module Name:   Y:/Desktop/github/DigitalProject2/VGA/Controller/countertest.v
// Project Name:  Controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count2bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module countertest;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clkdiv;

	// Instantiate the Unit Under Test (UUT)
	count2bit uut (
		.clk(clk), 
		.rst(rst), 
		.clkdiv(clkdiv)
	);

	always #5 clk = ~clk;
	initial begin
		// In itialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#10;
       rst=1'b1;
			#10 
			rst = 1'b0;

	end
      
endmodule

