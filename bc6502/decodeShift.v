/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	decodeShift.v
	- decode shift instructions


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

	slices / LUTS / ns
================================================================ */

`define ASL_ACC	8'h0A
`define ASL_Z	8'h06
`define ASL_ZX	8'h16
`define ASL_A	8'h0E
`define ASL_AX	8'h1E
`define	ROL_ACC	8'h2A
`define ROL_Z	8'h26
`define ROL_ZX	8'h36
`define ROL_A	8'h2E
`define ROL_AX	8'h3e
`define LSR_ACC	8'h4A
`define LSR_Z	8'h46
`define LSR_ZX	8'h56
`define LSR_A	8'h4E
`define LSR_AX	8'h5E
`define	ROR_ACC	8'h6A
`define ROR_Z	8'h66
`define ROR_ZX	8'h76
`define ROR_A	8'h6E
`define ROR_AX	8'h7E

module decodeShift(
	input [7:0] ir,
	output [1:0] shiftOp,
	output shiftMem,
	output shiftAcc,
	output dShift
);

    assign shiftOp = ir[6:5];

	wire asl_acc = ir==`ASL_ACC;
	wire asl_z = ir==`ASL_Z;
	wire asl_zx = ir==`ASL_ZX;
	wire asl_a = ir==`ASL_A;
	wire asl_ax = ir==`ASL_AX;
	wire asl = asl_acc|asl_z|asl_zx|asl_a|asl_ax;

	wire rol_acc = ir==`ROL_ACC;
	wire rol_z = ir==`ROL_Z;
	wire rol_zx = ir==`ROL_ZX;
	wire rol_a = ir==`ROL_A;
	wire rol_ax = ir==`ROL_AX;
	wire rol = rol_acc|rol_z|rol_zx|rol_a|rol_ax;
	
	wire lsr_acc = ir==`LSR_ACC;
	wire lsr_z = ir==`LSR_Z;
	wire lsr_zx = ir==`LSR_ZX;
	wire lsr_a = ir==`LSR_A;
	wire lsr_ax = ir==`LSR_AX;
	wire lsr = lsr_acc|lsr_z|lsr_zx|lsr_a|lsr_ax;

	wire ror_acc = ir==`ROR_ACC;
	wire ror_z = ir==`ROR_Z;
	wire ror_zx = ir==`ROR_ZX;
	wire ror_a = ir==`ROR_A;
	wire ror_ax = ir==`ROR_AX;
	wire ror = ror_acc|ror_z|ror_zx|ror_a|ror_ax;

	assign shiftMem =
		asl_z|asl_zx|asl_a|asl_ax|
		rol_z|rol_zx|rol_a|rol_ax|
		lsr_z|lsr_zx|lsr_a|lsr_ax|
		ror_z|ror_zx|ror_a|ror_ax;
	assign shiftAcc = asl_acc|rol_acc|lsr_acc|ror_acc;
	assign dShift = shiftMem | shiftAcc;

endmodule
