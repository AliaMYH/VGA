`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:00 05/07/2015 
// Design Name: 
// Module Name:    testBigMod 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module testBigMod(
input clk,
    input rst,
    output [2:0] r,
    output [2:0] g,
    output [1:0] b,
    output hsync,
    output vsync,
	 output rs,
	 output gs,
	 output [1:0] bs
    );
	 //assign r = 0;
	 //assign g = 0;
	 //assign b = 0;
	 //assign hsync = 0;
	 //assign vsync = 0;
	 //assign rs = 0;
	 //assign bs = 0;
//wire clk0;
//wire clk1;
//cccc instance_name
//   (// Clock in ports
//    .CLK_IN1(clk),      // IN
//    // Clock out ports
//    .CLK_OUT1(clk1),     // OUT
//    // Status and control signals
//    .RESET(rst));  

wire [9:0] hcount;
wire [9:0] vcount;
wire bright;
wire [3:0] tselect;
wire clkdiv;
assign rs= 0;
assign gs= 1'b1;
assign bs = 2'b00;

count2bit hi(clk,rst, clkdiv);

VController cont(
clkdiv,
rst,
hcount,
vcount,
hsync,
vsync,
bright
    );

InterruptManager inter(
clkdiv,
hcount,
vcount,
tselect,
bright
    );
	 
ColorSelector col(
clkdiv, 
hcount,
vcount,
tselect,
r,
g,
b,
bright 
    );

endmodule
