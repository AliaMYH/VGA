/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	pcAdder.v
	- add/subtract to pc


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


	    This module takes care of adding / subtracting to the
	pc.

================================================================ */

module pcAdder(op, pc, disp, o);
    parameter ABW = 24;
    localparam AMSB = ABW-1;
    input [1:0] op;     //0,3=mvn/mvp,1=inc,2=disp,
    input [AMSB:0] pc;
    input [AMSB:0] disp;
    output [AMSB:0] o;
    reg [AMSB:0] o;
    
    always @(op or pc or disp)
    begin
        case (op)
        2'd0:	o <= pc - 0;
        2'd1:   o <= pc + 1;
        2'd2:   o <= pc + disp;
        2'd3:	o <= pc - 3;	// for mvn/mvp
        endcase
    end

endmodule

