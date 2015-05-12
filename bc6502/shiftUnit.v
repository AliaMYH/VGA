/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	shiftUnit.v
	- performs shift operations (ASL ROL LSR ROR)


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

================================================================ */

module shiftUnit(sz, op, ci, a, o, co);
	parameter DBW = 16;
	localparam DMSB = DBW-1;
	input sz;		// 0=16 bit, 1=8 bit
	input [1:0] op;	// 0=ASL,1=ROL,2=LSR,3=ROR
	input ci;
	input [DMSB:0] a;
	output [DMSB:0] o;
	reg [DMSB:0] o;
	output co;

    assign co = op[1]?a[0]:(sz?a[7]:a[DMSB]);
    wire fill_bit = op[0] ? ci : 1'b0;
    always @(a or ci or op or fill_bit or sz)
    begin
        case (op[1])
        1'd0:	o <= {a[DBW-2:0],fill_bit};
        1'd1:   o <= {fill_bit,a[DMSB:DBW-7],(sz?fill_bit:a[8%DBW]),a[7:1]};
        endcase
    end

endmodule


