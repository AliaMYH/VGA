`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:04 05/04/2015 
// Design Name: 
// Module Name:    VController 
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
module VController(
    input clk,
    input rst,
    output [9:0] hc,
    output [9:0] vc,
    output hsync,
    output vsync,
	 output bright
    );
	 
	 reg [9:0] hcount;
    reg [9:0] vcount;
	 
	 assign hc= hcount;
	 assign vc= vcount;
	 //the dimensions
parameter hpixels = 10'd800;
parameter hbackporch = 10'd144;
parameter hfrontporch = 10'd784;
parameter hpulsewidth = 10'd96;

parameter vpixels = 10'd521;
parameter vbackporch = 10'd31;
parameter vfrontporch = 10'd511;
parameter vpulsewidth = 10'd2;

assign bright = ( hcount-1'b1 <= hfrontporch && hcount >hbackporch && vcount <=vfrontporch && vcount >vbackporch ) ? 1'b1:1'b0;

always @ (posedge clk or posedge rst)
begin 
	if(rst == 1'b1)
		hcount<=0;
	else if(hcount <hpixels -1)
		hcount <= hcount +10'b1;
		else begin
		hcount <= 0;
		if(vcount< vpixels-1)
		vcount <= vcount+1'b1;
		else 
		vcount <= 10'b0;
	end
end

assign hsync = (hc<hpulsewidth) ? 1'b0 :1'b1;
assign vsync = (vc<vpulsewidth) ? 1'b0 :1'b1;

//always @ (posedge clk or posedge rst)
//if(rst == 1'b1)
//hsync <= 1'b1;
//else if ( hcount >=(hbackporch +hpixels + hfrontporch) && hcount < (hbackporch + hpixels + hpulsewidth + hfrontporch))
//hsync <=0;
//else 
//hsync <=1'b1;

//reg flag;
//
//always @ (posedge clk or posedge rst)
//begin
//if(rst == 1'b1)
//vcount <= 0;
//else if (flag && hcount ==0 && vcount < vpixels)
//vcount <=vcount +10'b1;
//end
//
//always @ (posedge clk or posedge rst)
//begin 
//if (rst)
//flag <=0;
//else if (hcount ==0)
//flag <=1;
//end

endmodule
