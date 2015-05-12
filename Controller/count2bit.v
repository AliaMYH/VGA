`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:34:06 05/10/2015 
// Design Name: 
// Module Name:    count2bit 
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
module count2bit(
    input clk,
	 input rst, 
    output reg clkdiv
    );

reg out;

always @ (posedge clk or posedge rst) 
begin
	if (rst)
		out<= 0;
	else if(out == 1'b0)
		out<= out+1'b1;
		else out<=0;
end

always @ (posedge clk or posedge rst)
begin
	if (rst) 
		clkdiv <= 0; 
	else 
	clkdiv <=(out == 1'b0) ? ~clkdiv : clkdiv;
end


endmodule
