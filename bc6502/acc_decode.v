/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	acc_decode.v
	- decode accumulator instructions


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

	8 slices / 14 LUTS / 12.6 ns
================================================================ */

// Group1 opcodes
`define	ORA		3'b000
`define AND		3'b001
`define EOR		3'b010
`define ADC		3'b011
`define STA		3'b100
`define LDA		3'b101
`define CMP		3'b110
`define SBC		3'b111

module acc_decode(
	input [7:0] ir,
	input zi,
	input bit_i,
	output acc,
	output lda,
	output sta,
	output ora,
	output andd,
	output eor,
	output adc,
	output sbc,
	output cmp
);

	wire [2:0] op = ir[7:5];

	// accumulator instructions
	// every other column, except for column B
	assign acc 	= (ir[0]&&ir[3:0]!=4'hB)||zi;
	assign lda 	= op==`LDA&&acc;
	assign sta 	= op==`STA&&acc&&!bit_i;
	assign ora 	= op==`ORA&&acc;
	assign andd = op==`AND&&acc;
	assign eor 	= op==`EOR&&acc;
	assign adc 	= op==`ADC&&acc;
	assign sbc 	= op==`SBC&&acc;
	assign cmp 	= op==`CMP&&acc;

endmodule
