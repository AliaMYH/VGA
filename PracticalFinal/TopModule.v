`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:00:07 05/19/2015 
// Design Name: 
// Module Name:    TopModule 
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
module TopModule(
	input en,
    input w,
    input x,
    input y,
    input z,
    input u,
    output [6:0] outbin,
	 output [3:0] outsel
    );


BCD binary (en, u,outbin);


Decoder dec(w,x,y,z,outsel,en);


endmodule
