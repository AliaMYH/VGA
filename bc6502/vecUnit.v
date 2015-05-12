/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	vecUnit.v
	- supplies vector addresses


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

`define EIRQ_VEC	24'h00FFFE
`define EBRK_VEC	24'h00FFFE
`define ERESET_VEC	24'h00FFFC
`define ENMI_VEC	24'h00FFFA
`define EABORT_VEC	24'h00FFF8
//`define BRK_VEC		24'h00FFE6	// reserved
`define ECOP_VEC	24'h00FFF4

// real 65816 vectors
/*
`define IRQ_VEC		24'h00FFEE
//`define RESET_VEC	24'h00FFEC	// reserved
`define NMI_VEC		24'h00FFEA
`define ABORT_VEC	24'h00FFE8
`define BRK_VEC		24'h00FFE6
`define ECOP_VEC	24'h00FFE4
*/

`define RESET_VEC	24'hFFFFFC
`define NMI_VEC		24'hFFFFF8
`define IRQ_VEC		24'hFFFFF4
`define BRK_VEC		24'hFFFFF0
`define ABORT_VEC	24'hFFFFE8
`define COP_VEC		24'hFFFFE4


module vecUnit(ef, abort, int, firq, fnmi, fbrk, o);
	parameter ABW = 24;
	localparam AMSB = ABW-1;
    input ef;       // 1=emulation mode, 0=native
    input abort;	// 1=abort in progress
    input int;      // 1=interrupt in progress
    input firq;     // 1=irq in progress
    input fnmi;		// 1=nmi in progress
    input fbrk;     // 1=brk in progress
    output [AMSB:0] o;
    reg [AMSB:0] o;

	// Determine exception vector address
	always @(ef or int or fnmi or firq or fbrk or abort)
	begin
		if (ef) begin
			if (abort)
				o <= `ABORT_VEC;
			else if (int) begin
				if (fnmi)
					o <= `ENMI_VEC;
				else if (firq)
					o <= `EIRQ_VEC;
				else if (fbrk)
					o <= `EBRK_VEC;
				else
					o <= `RESET_VEC;
			end
			else
				o <= `ERESET_VEC;
		end
		else begin
			if (abort)
				o <= `ABORT_VEC;
			else if (int) begin
				if (fnmi)
					o <= `NMI_VEC;
				else if (firq)
					o <= `IRQ_VEC;
				else if (fbrk)
					o <= `BRK_VEC;
				else
					o <= `RESET_VEC;
			end
			else
				o <= `RESET_VEC;
		end
	end

endmodule


