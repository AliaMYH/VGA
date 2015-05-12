/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	br_eval.v
	- evaluate branch condition


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

	 slices /  LUTS /  ns
================================================================ */

`define BPL		3'b000
`define BMI		3'b001
`define BVC		3'b010
`define BVS		3'b011
`define BCC		3'b100
`define BCS		3'b101
`define BNE		3'b110
`define BEQ		3'b111

module br_eval(
	input [2:0] cond,
	input nf,
	input vf,
	input cf,
	input zf,
	input bra,
	input brl,
	output reg takb
);

	// Evaluate br condition - - - - - - - - - - - - - - - - -
	always @(cond, nf, vf, cf, zf, bra, brl)
		begin
			case (cond)
			`BPL:	takb <= ~nf;
			`BMI: 	takb <= nf;
			`BVC:	takb <= ~vf;
			`BVS: 	takb <= vf;
			`BCC:	takb <= ~cf|bra|brl;
			`BCS: 	takb <= cf;
			`BNE:	takb <= ~zf;
			`BEQ: 	takb <= zf;
			endcase
		end

endmodule
