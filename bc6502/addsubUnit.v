/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	addsubUnit.v
	- add/subtract


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

module addsubUnit(clk,rdy,op,dec,ci,a,b,o,v,co,do,dco);
	parameter DBW = 8;
	localparam DMSB=DBW-1;
	input clk;
	input rdy;
	input op;
	input dec;
	input ci;
	input [DMSB:0] a;
	input [DMSB:0] b;
	output [DMSB:0] o;
	output v, co;
	output [DMSB:0] do;		// decimal mode output
	output dco;				// decimal carry output

	wire [DBW:0] sum0 = op ? {a,ci} - {b,1'b1} : {a,ci} + {b,1'b1};

	wire c1;
	carry carry0(.op(op),.a(a[DMSB]),.b(b[DMSB]),.s(sum0[DBW]),.c(c1) );
	overflow of0(.op(op),.a(a[DMSB]),.b(b[DMSB]),.s(sum0[DBW]),.v(v) );

	// register the binary output for performance
	reg [DBW:0] sum0r;
	always @(posedge clk)
	begin
		if (rdy)
			sum0r <= sum0;
	end

	reg [4:0] sum1;
	reg [4:0] sum1h;
	wire as1 = (sum0r[4:1] > 4'd9) && dec;
	wire [4:0] b1 = {2'b0,as1,as1,1'b0};

	// decimal adjust low nybble
	always @(sum0r or op or dec or b1)
	begin
		case (op)
		0:	sum1 <= {1'b0,sum0r[4:1]} + b1;
		1:	sum1 <= {1'b0,sum0r[4:1]} - b1;
		endcase
	end

	// if subtract check >10 if borrow
	// else if add check >8 if borrow
	// otherwise check >9
	wire as2 = (sum0r[7:4] > {2'b10,sum1[4]&op,op?1'b1:~sum1[4]}) && dec;
	wire [4:0] b2 = {2'b0,as2,as2,sum1[4]};

	// decimal adjust high nybble
	always @(sum0r or op or dec or sum1 or b2)
	begin
		case (op)
		0:	sum1h <= {1'b0,sum0r[8:5]} + b2;
		1:	sum1h <= {1'b0,sum0r[8:5]} - b2;
		endcase
	end

	assign o = sum0[DBW:1];
	assign co = op ? ~c1 : c1;
	assign do = {sum1h[3:0],sum1[3:0]};
	assign dco = op ? ~(c1|sum1h[4]) : c1|sum1h[4];

endmodule


