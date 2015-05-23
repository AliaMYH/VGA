`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:51 05/18/2015 
// Design Name: 
// Module Name:    memory 
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
module memory(
    input clk,
    input rst,
    input wr,
    input [15:0] address,
    input [7:0] dataIn,
    output [7:0] dataOut
	 input [15:0] addressS, // used to write for IO and to read for display
	 output [7:0] dataOutS, 
	 input wrIO, 
	 input [7:0] IOdata,
    );


cpuMem NOI (
  .clka(clk), // input clka
  .wea(wr), // input [0 : 0] wea
  .addra(address), // input [15 : 0] addra
  .dina(dataIn), // input [7 : 0] dina
  .douta(dataOut), // output [7 : 0] douta
  .clkb(clk), // input clkb
  .web(wrIO), // input [0 : 0] web
  .addrb(addressS), // input [15 : 0] addrb
  .dinb(IOdata), // input [7 : 0] dinb
  .doutb(dataOutS) // output [7 : 0] doutb
);

endmodule
