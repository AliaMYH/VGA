`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:22 05/12/2015 
// Design Name: 
// Module Name:    testwithoutwiz 
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
module testwithoutwiz(
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

wire [9:0] hcount;
wire [9:0] vcount;
wire bright;
wire [3:0] tselect;
wire clkdiv;
assign rs= 0;
assign gs= 0;
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
