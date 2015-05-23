`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:34 05/19/2015 
// Design Name: 
// Module Name:    Shifting 
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
module Shifting(
    input clk,
    input rst,
	 output [6:0] outbin,
	 output [3:0] outsel
    );

clk_div 1hz (clk, rst, clkout);

always @ (posedge clkout)
begin 


end


endmodule
