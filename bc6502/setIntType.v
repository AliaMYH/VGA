/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	setIntType.v
	- set interrupt type indicators


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

module setIntType (
	input rst,
	input clk,
	input pipe_ce,
	input s_int4,
	input s_sync,
	input s_exec,
	input brk,
	input any_int,
	input nmi_ff,
	output reg firq,
	output reg fbrk,
	output reg fnmi
);
	
	always @(posedge clk) begin
		if (rst) begin
			firq <= 0;
			fbrk <= 0;
			fnmi <= 0;
		end
		else if (pipe_ce) begin
		
			// NMI / IRQ / BRK ---------------------
			if (s_int4) begin
				fbrk <= 0;
				firq <= 0;
				fnmi <= 0;
			end
			// sync indicates the start of an instruction cycle
			// when active. we can check for an nmi_i or irq_i first
			// before proceding with the instruction.
			if (s_sync) begin
				// irq_i is level sensitive
				if (any_int) begin
					// nmi_i takes precedence
					if (~nmi_ff)
						firq <= 1; 
					else
						fnmi <= 1;
				end
			end

			if (s_exec) begin
				if (brk)
					fbrk <= 1;
			end
		end
	end

endmodule

