`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:11 05/06/2015 
// Design Name: 
// Module Name:    InterruptManager 
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
module InterruptManager(
input clk,
	 input [9:0] hcount,
    input [9:0] vcount,
    output [3:0] tselect,
	 input bright,
	 input upb,
	 input downb,
	 input leftb,
	 input rightb,
	 output [3:0] direction
    );

parameter hleft = 10'd144;
//parameter hpixels = 10'd640;

parameter vtop = 10'd31;
//parameter vpixels = 10'd521;

wire [12:0] address;
//wire [9:0] truehc;
//
//wire [9:0] hselect;

//assign address = (bright) ? ((vcount-vtop-1'b1)>>3):10'b0 ;
//assign truehc = (bright)? ((hcount-hleft-1'b1)>>3):10'b0;
//assign hselect = (bright)? (truehc <<2):10'b0;

assign address = (bright) ? (((vcount -13'd32)>>13'd4)*13'd40) + ((hcount-13'd145)>>13'd4):13'b0;

wire [3:0] line;

//16 tiles therefore we need four selection bits 
Screeen screen (
  .clka(~clk), // input clka
  .addra(address[12:0]), // input [5 : 0] addra
  .douta(line) // output [319 : 0] douta
);

//wire [319:0] screen [59:0];
//
//assign screen [0] =01010101010101010101010101010101010101010101010101010101010101010101010101010101;
//assign screen [1] =01010101010101010101010101010101010101010101010101010101010101010101010101010101;
//assign screen [2] =02020202020202020202020202020202020202020202020202020202020202020202020202020202;
//
//assign screen [3] =30303030303030303030303030303030303030303030303030303030303030303030303030303030;
//assign screen [4] =01010101010101010101010101010101010101010101010101010101010101010101010101010101;
//
//assign line= screen [address[5:0]];

assign tselect[0] = line[0];
assign tselect[1] = line[1];
assign tselect[2] = line[2];
assign tselect[3] = line[3];

//assign tselect = address[0];
endmodule
