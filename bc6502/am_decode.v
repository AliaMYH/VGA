/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	am_decode.v
	- decode the processor address modes


	This source code is free for use and modification for
	non-commercial or evaluation purposes, provided this
	copyright statement and disclaimer remains present in
	the file.

	If you do modify the code, please state_o the origin and
	note that you have modified the code.

	NO WARRANTY.
	THIS Work, IS PROVIDEDED "AS IS" WITH NO WARRANTIES OF
	ANY KIND, WHETHER EXPRESS OR IMPLIED. The user must assume
	the entire risk of using the Work.

	IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR
	ANY INCIDENTAL, CONSEQUENTIAL, OR PUNITIVE DAMAGES
	WHATSOEVER RELATING TO THE USE OF THIS WORK, OR YOUR
	RELATIONSHIP WITH THE AUTHOR.

	IN ADDITION, IN NO EVENT DOES THE AUTHOR AUTHORIZE YOU
	TO USE THE WORK IN APPLICATIONS OR SYSTEMS WHERE THE
	WORK'S FAILURE TO PERFORM CAN REASONABLY BE EXPECTED
	TO RESULT IN A SIGNIFICANT PHYSICAL INJURY, OR IN LOSS
	OF LIFE. ANY SUCH USE BY YOU IS ENTIRELY AT YOUR OWN RISK,
	AND YOU AGREE TO HOLD THE AUTHOR AND CONTRIBUTORS HARMLESS
	FROM ANY CLAIMS OR LOSSES RELATING TO SUCH UNAUTHORIZED
	USE.

	14 slices / 24 LUTs / 11.4 ns
================================================================ */

module am_decode(
	input [7:0] ir,
	input stx_zy,
	input ldx_zy,
	input ldx_ay,
	input stz_a,
	input trb_a,
	input trb_z,
	input ldy_i,
	input cpy_i,
	input ldx_i,
	input cpx_i,
	output ix,
	output iy,
	output absy,
	output zpy,
	output zi,
	output dsp,
	output sriy,
	output abs,
	output absx,
	output zp,
	output zpx,
	output imm,
	output zpxy,
	output absxy
);
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// address modes zp:zp,x:zp,y:(zp,x):(zp),y:#:abs:abs,x:abs,y
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	wire [4:0] am_bits=ir[4:0];
	assign ix 	= am_bits==5'b00001;				// (zp,x)
	assign iy 	= am_bits==5'b10001;				// (zp),y
	assign absy	= am_bits==5'b11001 || ldx_ay;		// abs,y
	assign zpy 	= stx_zy|ldx_zy;		// zp,y
	assign zi 	= am_bits==5'b10010;	// (zp)
	assign dsp 	= am_bits==5'b00011;	// d,sp
	assign sriy	= am_bits==5'b10011;	// (dsp),y
	assign abs 	= am_bits[4:2]==3'b011 || stz_a || trb_a;	// abs
	assign absx	= am_bits[4:2]==3'b111 && !ldx_ay && !stz_a && !trb_a;
	assign zp 	= am_bits[4:2]==3'b001||trb_z;	// zp
	assign zpx 	= am_bits[4:2]==3'b101 && !zpy && !trb_z;	// zp,x
	assign imm 	= am_bits==5'b01001 || ldy_i|cpy_i|ldx_i|cpx_i;

	// modes processed as groups
	assign zpxy  = zp|zpx|zpy;
	assign absxy = abs|absx|absy;

endmodule
