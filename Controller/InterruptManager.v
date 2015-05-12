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
	 input bright
    );

parameter hleft = 10'd144;
//parameter hpixels = 10'd640;

parameter vtop = 10'd31;
//parameter vpixels = 10'd521;

wire [5:0] address;
wire [6:0] truehc;
wire [6:0] hselect;

assign address = (bright) ? ((vcount-vtop-1'b1)>>3):6'b0 ;

assign truehc = (bright)? ((hcount-hleft-1'b1)>>3):7'b0;

assign hselect = (bright)? (truehc <<2):7'b0;

wire [319:0] line;

//16 tiles therefore we need four selection bits 
ScreenS screen (
  .clka(~clk), // input clka
  .addra(address), // input [5 : 0] addra
  .douta(line) // output [319 : 0] douta
);


assign tselect[0] = line[hselect+0];
assign tselect[1] = line[hselect+1];
assign tselect[2] = line[hselect+2];
assign tselect[3] = line[hselect+3];

//assign tselect = address[0];
endmodule
