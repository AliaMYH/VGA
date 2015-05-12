`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:31 05/06/2015 
// Design Name: 
// Module Name:    ColorSelector 
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
module ColorSelector(
input clk,
    input [9:0] hcount,
    input [9:0] vcount,
    input [3:0] tselect,
    output  [2:0] R,
    output  [2:0] G,
    output  [1:0] B,
	 input bright 
    );

wire [511:0] line;
//16 tiles therefore we need four selection bits 
TilesS tts(
  .clka(clk), // input clka
  .addra(tselect), // input [3 : 0] addra
  .douta(line) // output [511 : 0] douta
);

parameter [9:0] hleft = 10'd144;
//parameter hpixels = 10'd640;

parameter [9:0] vtop = 10'd31;
//parameter vpixels = 10'd480;

wire [31:0] add;
assign add = (bright) ? ((((vcount-vtop-1'b1)& 10'd7)<<10'd6) + (((hcount - hleft-1'b1)&10'd7)<<10'd3)- 32'd8): 10'd0;

assign	R[0] = line[add];
assign	R[1] = line[add+1];
assign	R[2] = line[add+2];

assign	G[0] = line[add+3];
assign	G[1] = line[add+4];
assign	G[2] = line[add+5];
	
assign	B[0] = line[add+6];
assign	B[1] = line[add+7];

//
//always @ (*)
//begin 
//	if (rst)
//	begin 
//	R = 3'b000;
//	G = 3'b000;
//	B = 2'b00;
//	end
//	else if (bright)
//	begin 
//	R[0] = line[add];
//	R[1] = line[add+1];
//	R[2] = line[add+2];
//
//	G[0] = line[add+3];
//	G[1] = line[add+4];
//	G[2] = line[add+5];
//	
//	B[0] = line[add+6];
//	B[1] = line[add+7];
//	
//	end
//	else 
//	begin 
//	R = 3'b000;
//	G = 3'b000;
//	B = 2'b00;
//
//	end 
//
//end 
//
endmodule
