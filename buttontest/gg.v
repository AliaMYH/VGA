`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:43 05/19/2015 
// Design Name: 
// Module Name:    gg 
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
module gg(
    input a,
    input b,
    input c,
    input d,
    output reg [3:0] sel
    );

always @ ( *)
begin
if (a)
begin 
////
sel = ~4'b1110;
end
else  if (b)
begin 

sel = ~4'b1101;
end
else if (c)
begin 

sel = ~4'b1011;
end
else if(d)
begin 
sel = ~4'b0111;
end
else sel= ~4'b1111;

end 
endmodule
