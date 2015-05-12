/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	spAdder.v
	- add/subtract to sp


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

module spAdder(op, sp, disp, o);
    parameter DBW = 16;
    localparam DMSB = DBW-1;
    input [1:0] op;     //1=pull,2=push,other=disp
    input [DMSB:0] sp;
    input [DMSB:0] disp;
    output [DMSB:0] o;
    reg [DMSB:0] o;
    
    always @(op or sp or disp)
    begin
        case (op)
        2'd1:       o <= sp + 1;
        2'd2:       o <= sp - 1;
        default:    o <= sp + disp;
        endcase
    end

endmodule
