/* ===============================================================
	(C) 2006  Robert Finch
	All rights reserved.
	rob@birdcomputer.ca

	bc6502.v
	- 6502 compatible core.


	This source code is free for use and modification for
	non-commercial or evaluation purposes, provided this
	copyright statement and disclaimer remains present in
	the file.

	If you do modify the code, please state the origin and
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


	Known incompatibilities:
	- the break flag can be restored from the stack
	- undocumented instructions are not supported

   	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|WISHBONE Datasheet
	|WISHBONE SoC Architecture Specification, Revision B.3
	|
	|Description:						Specifications:
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|General Description:				CPU core
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|Supported Cycles:					MASTER,READ/WRITE
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|Data port, size:					8 bit
	|Data port, granularity:			8 bit
	|Data port, maximum operand size:	8 bit
	|Data transfer ordering:			Undefined
	|Data transfer sequencing:			Undefined
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|Clock frequency constraints:		none
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|Supported signal list and			Signal Name		WISHBONE equiv.
	|cross reference to equivalent		ack_i			ACK_I
	|WISHBONE signals					adr_o[15:0]		ADR_O()
	|									clk_i			CLK_I
	|                                   rst_i           RST_I()
	|									dat_i(7:0)		DAT_I()
	|									dat_o(7:0)		DAT_O()
	|									cyc_o			CYC_O
	|									stb_o			STB_O
	|									we_o			WE_O
	|
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	|Special requirements:
	+- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


	Spartan2e
	477 slices / 887 LUTs / 53 MHZ Webpack7.1 speed
	358 slices / 618 LUTs / 36 MHz            area
	Spartan3
	482 slices / 902 LUTs / 65 MHZ Webpack7.1 speed
================================================================ */

`define SP_RESET	8'hFF		// reset value of the stack pointer

// Undefine this macro to disable 65C02 instructions for a reduced
// core size with reduced functionality
`define ENH_ISA		1

// Define this macro to enable decimal mode support
//`define DECMD		1

// Note this option isn't fully tested yet, so don't enable it!
//`define CYCLE_ACCURATE	1

// define this macro for WISHBONE bus compatibility (recommended)
`define WISHBONE

`define JSR		8'h20
`define JMP		8'h4C
`define JMP_I	8'h6C
`define JMP_IX	8'h7C
`define RTS		8'h60
`define RTI		8'h40
`define WAI		8'hCB
`define STP		8'hDB

`define PHP		8'h08
`define PHA		8'h48
`define PHX		8'hDA
`define PHY		8'h5A
`define PHD     8'h0B   // push direct register
`define PLP		8'h28
`define PLA		8'h68
`define PLX		8'hFA
`define PLY		8'h7A
`define PLD     8'h2B   // pull direct register

`define BRK		8'h00
`define INX		8'hE8
`define DEX		8'hCA
`define INY		8'hC8
`define DEY		8'h88
`define INA		8'h1A
`define DEA		8'h3A

`define TYA		8'h98
`define TAY		8'hA8
`define TXA		8'h8A
`define	TAX		8'hAA
`define TXS		8'h9A
`define	TSX		8'hBA
`define TXY		8'h9B
`define TYX		8'hBB
`define TAS		8'h1B
`define TSA		8'h3B
`define TAD     8'h5B
`define TDA     8'h7B

`define DEC_Z	8'hC6
`define DEC_ZX	8'hD6
`define DEC_A	8'hCE
`define DEC_AX	8'hDE
`define INC_Z	8'hE6
`define INC_ZX	8'hF6
`define INC_A	8'hEE
`define INC_AX	8'hFE

`define CLD		8'hD8
`define SED		8'hF8
`define CLC		8'h18
`define	SEC		8'h38
`define	CLI		8'h58
`define	SEI		8'h78
`define CLV		8'hB8
`define XCE     8'hFB

`define NOP		8'hEA

// Group0 opcodes
`define LDY		3'b101

// Group1 opcodes
`define	ORA		3'b000
`define AND		3'b001
`define EOR		3'b010
`define ADC		3'b011
`define STA		3'b100
`define LDA		3'b101
`define CMP		3'b110
`define SBC		3'b111

// Group2 opcodes
`define ASL		3'b000
`define ROL		3'b001
`define LSR		3'b010
`define ROR		3'b011
`define STX		3'b100
`define LDX		3'b101
`define DEC		3'b110
`define INC		3'b111

`define BRA		8'h80
`define BRL     8'h82
`define BPL		3'b000
`define BMI		3'b001
`define BVC		3'b010
`define BVS		3'b011
`define BCC		3'b100
`define BCS		3'b101
`define BNE		3'b110
`define BEQ		3'b111

`define LDA_I	8'hA9
`define LDA_Z	8'hA5
`define LDA_ZX	8'hB5
`define LDA_IX	8'hA1
`define LDA_IY	8'hB1
`define LDA_A	8'hAD
`define LDA_AX	8'hBD
`define LDA_AY	8'hB9

`define LDY_I	8'hA0
`define LDY_Z	8'hA4
`define LDY_ZX	8'hB4
`define LDY_A	8'hAC
`define LDY_AX	8'hBC

`define CPY_I	8'hC0
`define CPY_Z   8'hC4
`define CPY_A   8'hCC

`define LDX_I	8'hA2
`define	LDX_Z	8'hA6
`define LDX_ZY	8'hB6
`define LDX_A	8'hAE
`define LDX_AY	8'hBE

`define CPX_I	8'hE0
`define CPX_Z   8'hE4
`define CPX_A   8'hEC

`define STA_Z	8'h85
`define STA_ZX	8'h95
`define STA_IX	8'h81
`define STA_IY	8'h91
`define STA_A	8'h8D
`define STA_AX	8'h9D
`define STA_AY	8'h99

`define	STX_Z	8'h86
`define STX_ZY	8'h96
`define STX_A	8'h8E

`define STY_Z	8'h84
`define STY_ZX	8'h94
`define STY_A	8'h8C

`define STZ_Z	8'h64
`define STZ_ZX	8'h74
`define STZ_A	8'h9C
`define STZ_AX	8'h9E

`define BIT_I	8'h89
`define BIT_Z	8'h24
`define BIT_ZX	8'h34
`define BIT_A	8'h2C
`define BIT_AX	8'h3C

`define TSB_Z	8'h04
`define TSB_A	8'h0C
`define TRB_Z	8'h14
`define TRB_A	8'h1C


`define S_PIPE		1'b0
`define S_WAIT_ACK	1'b1


module bc6502
#(parameter ABW=16,DBW=8)
(
	// WISHBONE syscon
	input rst_i,			// reset
	input clk_i,			// system clock

	// The following signal is convenient for bus arbitration when
	// multiple masters are present.
	output reg soc_o,		// start of cycle (non-WISHBONE)

	// WISHBONE master
	output reg cyc_o,		// cycle is valid
	output reg stb_o,		// strobe
	output reg lock_o,		// lock bus for rmw
	input  ack_i,			// transfer acknowledged / ready input
	output reg we_o,		// write cycle is active
	output reg [ABW-1:0] adr_o,	// address bus
	input [DBW-1:0] dat_i,		// data input bus
	output reg [DBW-1:0] dat_o, // data output bus

	// The following signals are non-wishbone
	input nmi_i,			// non-maskable interrupt (async. edge triggered)
	input irq_i,			// interrupt (level sensitive)
	output stp_o,			// stop instruction is active
	input sig_i,			// signal for wai instruction
	input so_i,				// set overflow

	output reg ird_o,		// instruction read cycle is active
	output sync_o,			// first bus cycle of an instruction
	output [31:0] state_o,	// cpu state (mainly for debugging)
	output [7:0] flags_o,	// debugging

	// The following signals can be useful for interfacing
	// to synchronous memory by providing values just before the
	// clock edge rather than after.
	output ird_nxt_o,		// next bus cycle will be an instruction read
	output cyc_nxt_o,		// a bus cycle is next
	output lock_nxt_o,
	output we_nxt_o,		// a write cycle is next
	output [ABW-1:0] adr_nxt_o,
	output [DBW-1:0] dat_nxt_o
);

	localparam DMSB = DBW-1;
	localparam AMSB = ABW-1;

	//-----------------------------------

	wire creset;
`ifdef WISHBONE
	reg pipe_ce;		// pipeline clock enable
`else
	wire pipe_ce;
`endif
	reg [DMSB:0] ir;	// instruction register
	reg [DMSB:0] dil;	// data input latch
	wire [DMSB:0] din;

	// Processor Programming Model registers
	reg	[DMSB:0] a_reg;	// A accumulator
	reg [DMSB:0] x;		// X index register
	reg [DMSB:0] y;		// Y index register
	reg [DMSB:0] sp;		// SP stack pointer
	reg	[AMSB:0] pc;		// PC program counter
`ifdef ENH_ISA
	reg [DMSB:0] dp;		// direct page register
	reg ef;
`endif
	reg nf,vf,bf,df,im,zf,cf;	// SR status register
	wire [7:0] sr_reg = {nf,vf,1'b1,bf,df,im,zf,cf};
	wire takb;

	tri [DMSB:0] res;				// internal result bus
	reg [15:0] tmp;					// temp reg needed for some operations
	reg [AMSB:0] pc_nxt;

`ifdef CYCLE_ACCURATE
	reg page_cross;
	wire delayBr;				// true if pc page changes during a branch
`endif
	reg nmi1;
	reg nmi_ff;
	reg nmi_ff2;
	reg irq_ff;
	wire doBranch;
	wire any_int = (nmi_ff | (irq_i & ~im));

	wire fbrk;
	wire firq;
	wire fnmi;

	// cpu states
	// these flags_o are used to merge states together

	reg s_reset;
	reg s_reset1;
	reg s_reset2;
	reg s_reset3;
	reg s_int1, s_int2, s_int3, s_int4, s_int5;
	reg s_exec;
	reg s_br1, s_br2;
	reg s_df1;
	reg s_upd1;
	reg s_wr1;
	reg s_ix1, s_ix2;
	reg s_iy1, s_iy2;
	reg s_iyl1, s_iyl2, s_iyl3;
	reg s_abs1;
	reg s_jmpi1, s_jmpi2;
	reg s_jsr1, s_jsr2, s_jsr3;
	reg s_jsf1, s_jsf2, s_jsf3, s_jsf4;
	reg s_pul1;
	reg s_rts1, s_rts2, s_rts3;
	reg s_rti1, s_rti2, s_rti3;
	reg s_sync;
	reg s_wai1;
	reg s_dec1;
	reg s_ext1, s_ext2;
	reg s_brk1;
`ifdef CYCLE_ACCURATE
	reg s_exec2;
	reg s_df2;
	reg s_abs0;
	reg s_pul2;
	reg s_rts4;
	reg s_rti4;
	reg s_wr2;
`endif

	assign state_o = {
		s_reset, s_reset1, s_reset2, s_reset3,
		s_int1,	s_int2,	s_int3,	s_int4,	s_int5,
		s_exec,
		s_br1,
		s_df1,
		s_upd1,
		s_wr1,
		s_ix1, s_ix2,
		s_iy1, s_iy2,
		s_abs1,
		s_jmpi1, s_jmpi2,
		s_jsr1,	s_jsr2,
		s_pul1,
		s_rts1,	s_rts2,	s_rts3,
		s_rti1,	s_rti2, s_rti3,
		s_sync};

	assign sync_o = s_sync;

	// generate critical rst_i signal
	creset_gen crg0(.clk(clk_i), .rst(rst_i), .creset(creset) );

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Instruction Decoding Section
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	wire [2:0] cond = ir[7:5];
	reg taken;
	assign flags_o = {nf,vf,1'b0,bf,df,im,zf,cf};

	wire jmp = ir==`JMP;
	wire jmpi = ir==`JMP_I;

	wire php = ir==`PHP;
	wire pha = ir==`PHA;
	wire plp = ir==`PLP;
	wire pla = ir==`PLA;

	wire jsr = ir==`JSR;
	wire rts = ir==`RTS;
	wire rti = ir==`RTI;
	wire brk = ir==`BRK;

	wire nop = ir==`NOP;	
	wire inx = ir==`INX;
	wire iny = ir==`INY;
	wire dex = ir==`DEX;
	wire dey = ir==`DEY;

	wire clc = ir==`CLC;
	wire cld = ir==`CLD;
	wire clv = ir==`CLV;
	wire cli = ir==`CLI;
	wire sec = ir==`SEC;
	wire sed = ir==`SED;
	wire sei = ir==`SEI;

	wire tay = ir==`TAY;
	wire tya = ir==`TYA;
	wire tax = ir==`TAX;
	wire txa = ir==`TXA;
	wire tsx = ir==`TSX;
	wire txs = ir==`TXS;

	wire ldy_i = ir==`LDY_I;
	wire ldy_z = ir==`LDY_Z;
	wire ldy_zx = ir==`LDY_ZX;
	wire ldy_a = ir==`LDY_A;
	wire ldy_ax = ir==`LDY_AX;
	wire ldy = ldy_i|ldy_z|ldy_zx|ldy_a|ldy_ax;

	wire sty_z = ir==`STY_Z;
	wire sty_zx = ir==`STY_ZX;
	wire sty_a = ir==`STY_A;
	wire sty = sty_z|sty_zx|sty_a;

	wire cpy_i = ir==`CPY_I;
	wire cpy_z = ir==`CPY_Z;
	wire cpy_a = ir==`CPY_A;
	wire cpy = cpy_i|cpy_z|cpy_a;

	wire ldx_i = ir==`LDX_I;
	wire ldx_z = ir==`LDX_Z;
	wire ldx_zy = ir==`LDX_ZY;
	wire ldx_a = ir==`LDX_A;
	wire ldx_ay = ir==`LDX_AY;
	wire ldx = ldx_i|ldx_z|ldx_zy|ldx_a|ldx_ay;
	
	wire stx_z = ir==`STX_Z;
	wire stx_zy = ir==`STX_ZY;
	wire stx_a = ir==`STX_A;
	wire stx = stx_z|stx_zy|stx_a;

	wire cpx_i = ir==`CPX_I;
	wire cpx_z = ir==`CPX_Z;
	wire cpx_a = ir==`CPX_A;
	wire cpx = cpx_i|cpx_z|cpx_a;

	wire bit_z = ir==`BIT_Z;
	wire bit_a = ir==`BIT_A;

`ifdef ENH_ISA
	wire brl = ir==`BRL;
	wire bra = ir==`BRA;
	wire brn = ir[4:0]==5'b10000||bra||brl;
	wire jmpix = ir==`JMP_IX;

	wire wai = ir==`WAI;
	assign stp_o = ir==`STP;

	wire phx = ir==`PHX;
	wire phy = ir==`PHY;
	wire psh = php|pha|phx|phy;
	wire plx = ir==`PLX;
	wire ply = ir==`PLY;
	wire pul = plp|pla|plx|ply;

	wire xce = ir==`XCE;

	wire ina = ir==`INA;
	wire dea = ir==`DEA;

	wire txy = ir==`TXY;
	wire tyx = ir==`TYX;
	wire tas = ir==`TAS;
	wire tsa = ir==`TSA;
	wire tad = ir==`TAD;
	wire tda = ir==`TDA;

	wire bit_i = ir==`BIT_I;
	wire bit_zx = ir==`BIT_ZX;
	wire bit_ax = ir==`BIT_AX;
	wire bit=bit_i|bit_z|bit_zx|bit_a|bit_ax;

	wire stz_z = ir==`STZ_Z;
	wire stz_zx = ir==`STZ_ZX;
	wire stz_a = ir==`STZ_A;
	wire stz_ax = ir==`STZ_A;
	wire stz = stz_z|stz_zx|stz_a|stz_ax;

	wire trb_z = ir==`TRB_Z;
	wire trb_a = ir==`TRB_A;
	wire trb = trb_z|trb_a;
	wire tsb_z = ir==`TSB_Z;
	wire tsb_a = ir==`TSB_A;
	wire tsb = tsb_z|tsb_a;
`else
	wire brn = ir[4:0]==5'b10000;

	wire phx = ir==`PHX;
	wire phy = ir==`PHY;
	wire psh = php|pha|phx|phy;
//	wire psh = php|pha;
	wire pul = plp|pla;

	wire bit=bit_z|bit_a;
`endif

	// shifts
	wire [1:0] shiftOp;
	wire shiftMem;
	wire shiftAcc;
	wire dShift;

	decodeShift u6 (
		.ir(ir),
		.shiftOp(shiftOp),
		.shiftMem(shiftMem),
		.shiftAcc(shiftAcc),
		.dShift(dShift)
	);

	// memory increment / decrement
	wire dec_z = ir==`DEC_Z;
	wire dec_zx = ir==`DEC_ZX;
	wire dec_a = ir==`DEC_A;
	wire dec_ax = ir==`DEC_AX;		
	wire dec = dec_z|dec_zx|dec_a|dec_ax;

	wire inc_z = ir==`INC_Z;
	wire inc_zx = ir==`INC_ZX;
	wire inc_a = ir==`INC_A;
	wire inc_ax = ir==`INC_AX;
	wire inc = inc_z|inc_zx|inc_a|inc_ax;

`ifdef ENH_ISA
	wire mem_op = shiftMem|inc|dec|tsb|trb;
`else
	wire mem_op = shiftMem|inc|dec;
`endif

	// miscellaneous operations
	wire mop = nop | inx | dex | iny | dey |
`ifdef ENH_ISA
		ina | dea | txy | tyx | tas | tsa | tad | tda | xce |
		stp_o | wai |
`endif
		txa | tax | tya | tay | txs | tsx |
		cld | sed | sei | cli | sec | clc | clv |
		shiftAcc;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// Address mode decoding
	// address modes zp:zp,x:zp,y:(zp,x):(zp),y:#:abs:abs,x:abs,y
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	am_decode u1 (
		.ir(ir),
		.stx_zy(stx_zy),
		.ldx_zy(ldx_zy),
		.ldx_ay(ldx_ay),
		.stz_a(stz_a),
		.trb_a(trb_a),
		.trb_z(trb_z),
		.ldy_i(ldy_i),
		.cpy_i(cpy_i),
		.ldx_i(ldx_i),
		.cpx_i(cpx_i),
		.ix(ix),
		.iy(iy),
		.absy(absy),
		.zpy(zpy),
		.zi(zi),
		.dsp(dsp),
		.sriy(sriy),
		.abs(abs),
		.absx(absx),
		.zp(zp),
		.zpx(zpx),
		.imm(imm),
		.zpxy(zpxy),
		.absxy(absxy)
	);

	// modes processed as groups
`ifdef CYCLE_ACCURATE
	wire zpndx = zpx|zpy;
	wire absndx = absx|absy;
`endif

	// accumulator instructions
	// every other column, except for column B
	acc_decode u2 (
		.ir(ir),
		.zi(zi),
		.bit_i(bit_i),
		.acc(acc),
		.lda(lda),
		.sta(sta),
		.ora(ora),
		.andd(andd),
		.eor(eor),
		.adc(adc),
		.sbc(sbc),
		.cmp(cmp)
	);

	wire dLogic = ora|andd|eor;
	wire [1:0] logicOp = ir[6:5];

	// sta/x/sty
	wire staxy = sta|stx|sty;
`ifdef ENH_ISA
	wire staxyz = sta|stx|sty|stz;
`else
	wire staxyz = sta|stx|sty;
`endif

	wire lcxy = ldy|ldx|cpy|cpx;


	assign doBranch = s_br1 & taken;

`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
	wire br_lst = (doBranch & ~delayBr & ~brl) | s_br2;
`else
	wire br_lst = (doBranch & ~delayBr) | s_br2;
`endif
`else
`ifdef ENH_ISA
	wire br_lst = (doBranch & ~brl) | (s_br2 & brl);
`else
	wire br_lst = doBranch;
`endif
`endif


`ifdef CYCLE_ACCURATE
	wire df2_nxt = s_df1 & ((absndx|iy) & page_cross);
	wire wr2_nxt = s_wr1 & (((absndx|iy) & page_cross) | jsr);
	wire rti_lst = s_rti4;
	wire rts_lst = s_rts4;
	wire pul_lst = s_pul2;
	wire df_lst = s_df2 | (s_df1 & ~df2_nxt);
	wire wr_lst = s_wr2 | (s_wr1 & ~wr2_nxt);
`else
	wire rti_lst = s_rti3;
	wire rts_lst = s_rts3;
	wire pul_lst = s_pul1;
	wire df_lst = s_df1;
	wire wr_lst = s_wr1;
`endif

	wire upddec_nxt = (adc|sbc) & df & (df_lst | (s_exec & imm));
	wire upd_nxt = ((df_lst | (s_exec & imm)) & ~upddec_nxt) | s_dec1;
//	wire upd_nxt = s_df1 | (s_exec & imm);
	wire upd_lst = s_upd1;
	wire upd_lst2 = upd_nxt;

	wire br_nxt = s_exec & brn;
	// Extra cycle extension for cycle accuracy
	wire sync_nxt_ca;

`ifdef CYCLE_ACCURATE
	wire ext_nxt = 
		sync_nxt_ca; /* & (
			zpndx |
			(absndx & page_cross) |
			jsr |
			pul |
			rti |
			rts
		); */

	wire ext_lst = s_ext1;//(s_ext1 & ~(mem_op & absndx)) | s_ext2;
`endif

	// This sync_nxt signal indicates when sync_nxt would be active
	assign sync_nxt_ca =
			(upd_nxt & (lcxy|bit|acc)) |
			s_reset3 |
			wr_lst |
			s_jmpi2 |
			pul_lst |
			rts_lst |
			rti_lst |
			s_int5 |
			(s_abs1 & jmp) |
`ifdef ENH_ISA
			(s_wai1 & sig_i) |
`endif

// last cycle of taken branch goes back to sync_o state
// exec state feeds back to sync_o so that
// Branch is in both the br1 state and the sync_o state for
// the next instruction at the same time. Generally this
// type of thing is bad practice, but it trims a clock
// cycle from the execution time of every branch resulting
// in a >10% performance improvement
// If the branch isn't taken then execution proceeds with
// the next exec state as normal, otherwise the br1 state
// takes precedence.

			br_lst |
			br_nxt |
			(s_exec & mop)
			;

	wire sync_nxt = sync_nxt_ca;


	wire exec_nxt = s_sync & ~doBranch;
`ifdef CYCLE_ACCURATE
	wire exec2_nxt = s_exec & (ix|zpndx);
	wire abs0_nxt = s_exec & jmpi;
`endif
	// Don't recognize interrupt during shadow sync_o cycle of taken
	// branch
	wire int_nxt = s_exec & brk;
	wire pul_nxt = s_exec & pul;
	wire rts_nxt = s_exec & rts;
	wire rti_nxt = s_exec & rti;
	wire jsr_nxt = s_exec & jsr;
`ifdef ENH_ISA
	wire wai_nxt = s_exec & wai;
`ifdef CYCLE_ACCURATE
	wire ix_nxt = s_exec2 & (ix|zi);
`else
	wire ix_nxt = s_exec & (ix|zi);
`endif
	wire iy_nxt = s_exec & (iy|sriy);
	wire jmpi_nxt = s_abs1 & (jmpi|jmpix);
`else
`ifdef CYCLE_ACCURATE
	wire ix_nxt = s_exec2 & ix;
`else
	wire ix_nxt = s_exec & ix;
`endif
	wire iy_nxt = s_exec & iy;
	wire jmpi_nxt = s_abs1 & jmpi;
`endif
`ifdef CYCLE_ACCURATE
	wire abs_nxt =
				(s_exec & absxy & ~jmpi) |
				s_abs0;
`else
	wire abs_nxt = s_exec & absxy;
`endif
	wire wr1_nxt = 
				s_jsr2 |
				(upd_lst & mem_op) |
				(s_ix2 & staxy) |
				(s_iy2 & staxy) |
`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
				(s_abs1 & staxyz) |
				(s_exec & (((zp|dsp) & staxyz) | psh)) |
				(s_exec2 & zpndx & staxyz)
				;
`else
				(s_abs1 & staxy) |
				(s_exec & ((zp & staxy) | psh)) |
				(s_exec2 & zpndx & staxy)
				;
`endif
`else
`ifdef ENH_ISA
				(s_abs1 & staxyz) |
				(s_exec & (((zpxy|dsp) & staxyz) | psh));
`else
				(s_abs1 & staxy) |
				(s_exec & ((zpxy & staxy) | psh));
`endif
`endif

`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
	wire df_nxt = ~staxyz & (
				s_ix2 | s_iy2 |
				(s_abs1 & ~(jmp | jmpi | jmpix)) |
				(s_exec & (zp|dsp))|
				(s_exec2 & zpndx)
				);
`else
	wire df_nxt = ~staxy & (
				s_ix2 | s_iy2 |
				(s_abs1 & ~(jmp | jmpi)) |
				(s_exec & zp) |
				(s_exec2 & zpndx)
				);
`endif
`else
`ifdef ENH_ISA
	wire df_nxt = ~staxyz & (
				s_ix2 | s_iy2 |
				(s_abs1 & ~(jmp | jmpi | jmpix)) |
				(s_exec & (zpxy|dsp)));
`else
	wire df_nxt = ~staxy & (
				s_ix2 | s_iy2 |
				(s_abs1 & ~(jmp | jmpi)) |
				(s_exec & zpxy));
`endif
`endif

	// Advance bus controls
	assign ird_nxt_o = sync_nxt | exec_nxt | abs_nxt | jsr_nxt |
		br_nxt
`ifdef ENH_ISA
		| (s_br1 & brl)
`endif
		;

	assign we_nxt_o =
		int_nxt | s_int1 | s_int2 |
		s_jsr1 | s_jsr2 |
		wr1_nxt;

`ifdef CYCLE_ACCURATE
	assign cyc_nxt_o = ~(s_rts2 | s_rts3 | s_rti3 | s_pul2 | exec2_nxt | wr2_nxt | (upd_nxt & ~sync_nxt) | (doBranch & delayBr) );
`else
	assign cyc_nxt_o = ~(s_rts2 | (upd_nxt & ~sync_nxt) );
`endif


	always @(posedge clk_i) begin
		// put our states in a known condition - none selected
		if (rst_i) begin
			s_reset <= 1;
			s_reset1 <= 0; s_reset2 <= 0; s_reset3 <= 0;
		end
		else if (creset)
			s_reset <= 1;
		else if (pipe_ce) begin
			// advance states
			// Only a single state should be active at any one time

			// the rst_i state is actually evaluated here rather
			// than at a higher level as it is convenient to do so
			if (s_reset)
				s_reset <= 0;

			s_reset1 <= s_reset;
			s_reset2 <= s_reset1;
			s_reset3 <= s_reset2;
			// insert an extra state for decimal add/subtract when
			// in decimal mode

			// if somehow got to an invalid state rst_i
			// this is really a processor error or perhaps
			// trying to execute an invalid opcode
/*
			s_reset1 <= s_reset | ~(
				s_reset1 |
				s_reset2 |
				s_reset3 |
				s_int1 | s_int2 | s_int3 | s_int4 | s_int5 |
				s_jmpi2 |
				s_exec |
				s_df1 |
				s_upd2 |
				s_wr1 |
				s_ix1 | s_ix2 |
				s_iy1 | s_iy2 |
				s_abs1 |
				s_jmpi1 |
				s_jsr1 | s_jsr2 |
				s_pul1 |
				s_rts1 | s_rts2 | s_rts3 |
				s_rti1 | s_rti2 | s_rti3
				s_sync); */
			// End of state advancement
		end // if (pipe_ce)
		if (s_reset1) begin
			$display("*****************************************");
			$display("*****************************************");
			$display("**** Came out of rst_i ****");
			$display("*****************************************");
			$display("*****************************************");
		end
/*
		$display("states");
		$display("\ts_reset=%b %b%b%b",s_reset,s_reset1,s_reset2,s_reset3);
		$display("\ts_int=%b%b%b%b%b",s_int1,s_int2,s_int3,s_int4,s_int5);
		$display("\ts_exec=%b",s_exec);
		$display("\ts_br=%b", s_br1);
		$display("\ts_df1=%b",s_df1);
		$display("\ts_upd=%b%b", s_upd1,s_upd2);
		$display("\ts_post_write=%b",s_wr1);
		$display("\ts_ix=%b%b",s_ix1,s_ix2);
		$display("\ts_iy=%b%b",s_iy1,s_iy2);
		$display("\ts_abs=%b",s_abs1);
		$display("\ts_jmpi=%b",s_jmpi1,s_jmpi2);
		$display("\ts_jsr=%b%b",s_jsr1,s_jsr2);
		$display("\ts_pul=%b",s_pul1);
		$display("\ts_rts=%b%b%b",s_rts1,s_rts2,s_rts3);
		$display("\ts_rti=%b%b%b",s_rti1,s_rti2,s_rti3);
		$display("\ts_sync=%b",s_sync);
*/
	end	// always


	// First state for any instruction
	always @(posedge clk_i)
		if (rst_i)
			s_sync <= 0;
		else if (pipe_ce)
			s_sync <= sync_nxt;


	// Second state for every instruction
	always @(posedge clk_i)
		if (rst_i) begin
			s_exec <= 0;
`ifdef CYCLE_ACCURATE
			s_exec2 <= 0;
`endif
		end
		else if (pipe_ce) begin
			s_exec <= exec_nxt;
`ifdef CYCLE_ACCURATE
			s_exec2 <= exec2_nxt;
`endif
		end


	// Data fetching states - when information has to be
	// read from memory and not immediate
	always @(posedge clk_i)
		if (rst_i) begin
			s_df1 <= 0;
`ifdef CYCLE_ACCURATE
			s_df2 <= 0;
`endif
		end
		else if (pipe_ce) begin
			s_df1 <= df_nxt;			// latch dat_i[7:0]
`ifdef CYCLE_ACCURATE
			s_df2 <= s_df1 & (absndx & page_cross);
`endif
		end


	// cpu update states
	// flags_o and register updates and other stuff
	always @(posedge clk_i)
		if (rst_i)
			s_upd1 <= 0;
		else if (pipe_ce)
			s_upd1 <= upd_nxt;


`ifdef CYCLE_ACCURATE
	// Extra state for cycle accuracy
	// zp,x or zp,y
	always @(posedge clk_i)
		if (rst_i) begin
			s_ext1 <= 0;
			s_ext2 <= 0;
		end
		else if (pipe_ce) begin
			s_ext1 <= ext_nxt;
			s_ext2 <= s_ext1 & mem_op & absndx;
		end
`endif


	// op adr_o : op adr_o,x : op adr_o,y
	// absolute address modes incl. indexed
	always @(posedge clk_i)
		if (rst_i) begin
`ifdef CYCLE_ACCURATE
			s_abs0 <= 0;
`endif
			s_abs1 <= 0;
		end
		else if (pipe_ce) begin
`ifdef CYCLE_ACCURATE
			s_abs0 <= abs0_nxt;
`endif
			s_abs1 <= abs_nxt;		// latch ea[15:8]
		end


	// op (zp,x)
	always @(posedge clk_i)
		if (rst_i) begin
			s_ix1 <= 0;
			s_ix2 <= 0;
		end
		else if (pipe_ce) begin
			s_ix1 <= ix_nxt;
			s_ix2 <= s_ix1;
		end


	// op (zp),y
	always @(posedge clk_i)
		if (rst_i) begin
			s_iy1 <= 0;
			s_iy2 <= 0;
		end
		else if (pipe_ce) begin
			s_iy1 <= iy_nxt;    // put incremented zp address on bus
			s_iy2 <= s_iy1;
		end


	// Bcc
	// Add an extra state to obtain cycle accuracy with the original 6502
	// when crossing a page boundary
	always @(posedge clk_i)
		if (rst_i) begin
			s_br1 <= 0;
			s_br2 <= 0;
		end
		else if (pipe_ce) begin
			s_br1 <= br_nxt;
`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
			s_br2 <= (s_br1 & brl) | (doBranch & delayBr);
`else
			s_br2 <= doBranch & delayBr;
`endif
`else
`ifdef ENH_ISA
			s_br2 <= s_br1 & brl;
`else
			s_br2 <= 1'b0;
`endif
`endif
		end


	// JMP (adr_o)
	always @(posedge clk_i)
		if (rst_i) begin
			s_jmpi1 <= 0;
			s_jmpi2 <= 0;
		end
		else if (pipe_ce) begin
			s_jmpi1 <= jmpi_nxt;
			s_jmpi2 <= s_jmpi1;
		end
		

	// JSR instruction
	always @(posedge clk_i)
		if (rst_i) begin
			s_jsr1 <= 0;
			s_jsr2 <= 0;
		end
		else if (pipe_ce) begin
//			s_jsr0					// latch ea[7:0]
			s_jsr1 <= jsr_nxt;		// fetch ea[15:8]
			s_jsr2 <= s_jsr1;		// stack pc[15:8]
//			s_jsr3 <= s_jsr2;		// stack pc[7:0]
		end


	// RTS instruction
	always @(posedge clk_i)
		if (rst_i) begin
			s_rts1 <= 0;
			s_rts2 <= 0;
			s_rts3 <= 0;
`ifdef CYCLE_ACCURATE
			s_rts4 <= 0;
`endif
		end
		else if (pipe_ce) begin
			s_rts1 <= rts_nxt;		// pop pc[7:0]
			s_rts2 <= s_rts1;		// pop pc[15:8]
			s_rts3 <= s_rts2;		// inc. pc
`ifdef CYCLE_ACCURATE
			s_rts4 <= s_rts3;
`endif
		end


	// RTI instruction
	always @(posedge clk_i)
		if (rst_i) begin
			s_rti1 <= 0;					
			s_rti2 <= 0;					
			s_rti3 <= 0;
`ifdef CYCLE_ACCURATE					
			s_rti4 <= 0;
`endif
		end
		else if (pipe_ce) begin
			s_rti1 <= rti_nxt;		// pop sr
			s_rti2 <= s_rti1;		// pop pc[7:0]
			s_rti3 <= s_rti2;		// pop pc[15:8]
`ifdef CYCLE_ACCURATE
			s_rti4 <= s_rti3;
`endif
		end


	// Interrupts
	always @(posedge clk_i)
		if (rst_i) begin
			s_int1 <= 0;
			s_int2 <= 0;
			s_int3 <= 0;
			s_int4 <= 0;
			s_int5 <= 0;
		end
		else if (pipe_ce) begin
			s_int1 <= int_nxt;      // push pc[15:8]
			s_int2 <= s_int1;		// push pc[7:0]
			s_int3 <= s_int2;       // push sr; put vec adr_o on bus
			s_int4 <= s_int3;       // fetch vec[7:0]
			s_int5 <= s_int4;       // fetch vec[15:8]
		end


	// This is a post-write state needed for bus turnaround
	// Switch the address bus back to pc after a write.
	always @(posedge clk_i)
		if (rst_i) begin
			s_wr1 <= 0;
`ifdef CYCLE_ACCURATE
			s_wr2 <= 0;
`endif
		end
		else if (pipe_ce) begin
			s_wr1 <= wr1_nxt;
`ifdef CYCLE_ACCURATE
			s_wr2 <= wr2_nxt;
`endif
		end

`ifdef ENH_ISA
	// WAI
	// Wait for an external signal
	always @(posedge clk_i)
		if (rst_i)
			s_wai1 <= 0;
		else if (pipe_ce)
			s_wai1 <= wai_nxt|(s_wai1 & ~sig_i);
`endif


	// PLA PLX PLY PLP PLD
    // pull information from stack
	always @(posedge clk_i)
		if (rst_i) begin
			s_pul1 <= 0;
`ifdef CYCLE_ACCURATE
			s_pul2 <= 0;
`endif
		end
		else if (pipe_ce) begin
            s_pul1 <= pul_nxt;
`ifdef CYCLE_ACCURATE
            s_pul2 <= s_pul1;
`endif
		end


	// decimal mode support delay
	// without these states decimal mode would slow the whole
	// cpu down considerably
	always @(posedge clk_i)
		if (rst_i)
			s_dec1 <= 0;
		else if (pipe_ce)
			s_dec1 <= upddec_nxt;


	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// Handle memory lock signal
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	assign lock_nxt_o = df_nxt & mem_op & ~sync_nxt;
	always @(posedge clk_i)
		if (rst_i)
			lock_o <= 0;
		else
			lock_o <= lock_nxt_o;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// Select between A, X, Y registers, or memory data
	// Some other functional units handle the A, X, Y
	// registers in a uniform fashion; so some hardware can be
	// saved by using mux.
	// This is really mainly just a register read port.
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	reg [DBW:1] axy_reg;
	always @(a_reg, x, y, stx, sty, mem_op,
		tya, txa, txs,
`ifdef ENH_ISA
		txy, tyx, phx, phy,
`endif
//`ifdef ENH_ISA
		phx, phy,
//`endif
		cpx, cpy,
		inx, dex, iny, dey, dil)
	begin
`ifdef ENH_ISA
		if (inx|dex|stx|txa|txs|cpx|txy|phx)
`else
		if (inx|dex|stx|txa|txs|cpx|phx)
//		if (inx|dex|stx|txa|txs|cpx)
`endif
			axy_reg <= x;
`ifdef ENH_ISA
		else if (iny|dey|sty|tya|cpy|tyx|phy)
`else
		else if (iny|dey|sty|tya|cpy|phy)
//		else if (iny|dey|sty|tya|cpy)
`endif
			axy_reg <= y;
		else if (mem_op)
			axy_reg <= dil;
		else
			axy_reg <= a_reg;
	end

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// Select between X, Y, Z registers for memory addressing.
	// Really just a second read port on the X,Y registers.
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	reg [DBW:1] xyz_reg;
`ifdef CYCLE_ACCURATE
	always @(x or y or absx or absy or zpx or zpy or 
		s_iy2 or ix or s_abs0 or s_abs1 or s_exec or s_exec2)
	begin
		if (((s_abs1|s_abs0) & absx)|((s_exec|s_exec2) & (zpx|ix)))
			xyz_reg <= x;
		 else if (((s_abs0|s_abs1) & absy)|((s_exec|s_exec2) & zpy)|s_iy2)
			xyz_reg <= y;
		else
			xyz_reg <= 0;
	end
`else
	always @(x or y or absx or absy or zpx or zpy or 
		s_iy2 or ix or s_abs1 or s_exec)
	begin
		if ((s_abs1 & absx)|(s_exec & (zpx|ix)))
			xyz_reg <= x;
		else if ((s_abs1 &absy)|(s_exec & zpy)|s_iy2)
			xyz_reg <= y;
		else
			xyz_reg <= 0;
	end
`endif


	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// incrementer / decrementer
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
`ifdef ENH_ISA
	wire [DBW:1] axy_addo = dex|dey|dec|dea ? axy_reg - 1 : axy_reg + 1;
`else
	wire [DBW:1] axy_addo = dex|dey|dec ? axy_reg - 1 : axy_reg + 1;
`endif

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	// Add to stack pointer register
	// +1 for pulls
	// -1 for pushes
	// +disp for displacement addressing
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	wire stk_psh = int_nxt | s_int1 | s_int2 | s_jsr1 | s_jsr2 | (s_exec & psh);
	wire stk_pul = ((s_exec & (pul|rts|rti)) | s_rts1|s_rti1|s_rti2);
`ifdef ENH_ISA
	wire stk_op = stk_psh|stk_pul|(s_exec&(dsp|sriy));
`else
	wire stk_op = stk_psh|stk_pul;
`endif
	wire [DMSB:0] sp_addo;
	spAdder #(DBW) spa0(.op({stk_psh,stk_pul}), .sp(sp), .disp(din), .o(sp_addo) );

	//------------------------------------------------------------
	// datapath processing
	//------------------------------------------------------------

	// ADC SBC
	wire [DMSB:0] addsubOut;
	wire addsubC;	
	wire addsubV;
	wire [DMSB:0] daddsubOut;
	wire daddsubC;	
	addsubUnit asu0(.clk(clk_i), .rdy(pipe_ce), .op(sbc), .dec(df), .ci(cf), .a(a_reg), .b(dil), .o(addsubOut), .co(addsubC), .v(addsubV), .do(daddsubOut), .dco(daddsubC) );

	// Compares
	// CMP CPX CPY
	wire [DBW:1] cmpOut;
	wire cmpC;
	cmpUnit #(DBW) cu0(.sz(1'b1), .a(axy_reg),.b(dil),.o(cmpOut),.co(cmpC) );

	// Logical operations
	// ORA AND EOR BIT
	// Force "and" operation for bit #
	// bit otherwise has correct pattern
	wire [7:0] logicOut;
`ifdef ENH_ISA
	logicUnit #(DBW) lu0(.op(logicOp|bit_i|tsb|trb), .a(a_reg), .b(dil), .o(logicOut) );
`else
	logicUnit #(DBW) lu0(.op(logicOp), .a(a_reg), .b(dil), .o(logicOut) );
`endif

	// Shifts
	// ASL ROL LSR ROR
	wire [7:0] shiftOut;
	wire shiftC;
	shiftUnit #(8) su0(.sz(1'b1), .op(shiftOp), .ci(cf), .a(axy_reg), .o(shiftOut), .co(shiftC) );

`ifdef ENH_ISA
	reg [7:0] trb_out;
	always @(trb or a_reg or dil)
	begin
		if (trb)
			trb_out <= a_reg & ~dil;
		else
			trb_out <= a_reg | dil;
	end
`endif

	// datapath result mux
`ifdef DECMD
	assign res = (adc|sbc)&~df ? addsubOut : 'bz;
	assign res = (adc|sbc)&df ? daddsubOut : 'bz;
`else
	assign res = adc|sbc ? addsubOut : 'bz;
`endif
	assign res = cmp|cpx|cpy ? cmpOut : 'bz;
	assign res = dShift ? shiftOut : 'bz;
	assign res = s_pul1 ? din : 'bz;
	assign res = ldx|ldy|lda ? dil : 'bz;
`ifdef ENH_ISA
	assign res = dLogic|bit|trb|tsb ? logicOut : 'bz;
	assign res = inx|dex|iny|dey|inc|dec|ina|dea ? axy_addo : 'bz;
	assign res = tay|tax|txa|txs|txy|tyx|tya|tas|staxy|pha|phx|phy ? axy_reg : 'bz;
	assign res = tsx|tsa ? sp : 'bz;
	assign res = tda ? dp : 'bz;
`else
	assign res = dLogic|bit ? logicOut : 'bz;
	assign res = inx|dex|iny|dey|inc|dec ? axy_addo : 'bz;
	assign res = tay|tax|txa|txs|tya|staxy|pha|phx|phy ? axy_reg : 'bz;
	assign res = tsx ? sp : 'bz;
`endif
	wire resz = res==0;
	wire resn = res[DMSB];

	//-------------------------------------------------------------
	// Memory related hardware
	//-------------------------------------------------------------

	// Determine exception vector address
	wire [AMSB:0] vec;
`ifdef ENH_ISA
	vecUnit #(ABW) vecu0(.ef(ef), .abort(1'b0), .int(s_int3), .fnmi(fnmi), .firq(firq), .fbrk(fbrk), .o(vec) );
`else
	vecUnit #(ABW) vecu0(.ef(1'b1), .abort(1'b0), .int(s_int3), .fnmi(fnmi), .firq(firq), .fbrk(fbrk), .o(vec) );
`endif


	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// memory address multiplexing control
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

	wire asel_vec = rst_i | s_reset | s_reset1 | s_int3;

	// zero page modes
`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
	wire asel_zp = (s_exec & (zp | zi | iy)) | s_exec2;
`else
	wire asel_zp = (s_exec & (zp | iy)) | s_exec2;
`endif
`else
`ifdef ENH_ISA
	wire asel_zp = s_exec & (zpxy | ix | zi | iy);
`else
	wire asel_zp = s_exec & (zpxy | ix | iy);
`endif
`endif

	wire asel_abs = s_reset3 | s_int5 | s_rts2 | s_jmpi2 | s_rti3 | s_iy2 | s_ix2 | s_abs1;

	// a = pc + 1/0/tmp
	wire asel_pcao =
		(s_sync | (s_exec & (imm|mop|absxy|jsr|brn)) |
		s_rts3 |
`ifdef CYCLE_ACCURATE
		s_rts4 |
		s_rti4 |
		s_pul2 |
		exec2_nxt |
		s_wr2 |
		s_abs0 |
		((s_df1|s_df2|upd_lst) & (ldy|cpx|cpy|ldx|bit|acc)) |
`else
		((s_df1|upd_lst) & (ldy|cpx|cpy|ldx|bit|acc)) |
`endif
		s_br1 |
		s_br2 |
		s_pul1 | s_wr1
		);

`ifdef CYCLE_ACCURATE
	wire asel_aoadder = s_reset2 | s_int4 | s_jmpi1 | s_ix1 | s_iy1 | ((s_df1|s_df2|s_dec1|upd_lst|s_upd1) & mem_op);
`else
	wire asel_aoadder = s_reset2 | s_int4 | s_jmpi1 | s_ix1 | s_iy1 | ((s_df1|s_dec1|upd_lst|s_upd1) & mem_op);
`endif

	wire asel_sph = stk_op;
	wire asel_sp = stk_psh;
`ifdef ENH_ISA
	wire asel_spaddo = stk_pul|(s_exec&(dsp|sriy));
`else
	wire asel_spaddo = stk_pul;
`endif

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// memory address adders
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

	// determine when to increment the pc
`ifdef CYCLE_ACCURATE
`ifdef ENH_ISA
	wire inc_pc = (exec_nxt & ~any_int) | ((s_exec & ~(nmi_ff2|irq_ff)) & (absxy | jsr | brn|imm | zp | iy | brk)) | s_rts3|(s_abs1 & ~(jmp|jmpi|jmpix)) | (s_br1 & brl) | s_exec2;
`else
	wire inc_pc = (exec_nxt & ~any_int) | ((s_exec & ~(nmi_ff2|irq_ff)) & (absxy | jsr | brn|imm | zp | iy | brk)) | s_rts3|(s_abs1 & ~(jmp|jmpi)) | s_exec2;
`endif
`else
`ifdef ENH_ISA
	wire inc_pc = (exec_nxt & ~any_int) | ((s_exec & ~(nmi_ff2|irq_ff)) & (absxy | jsr | brn|imm | zpxy | ix | iy | brk)) | s_rts3|(s_abs1 & ~(jmp|jmpi|jmpix)) | (s_br1 & brl) ;
`else
	wire inc_pc = (exec_nxt & ~any_int) | ((s_exec & ~(nmi_ff2|irq_ff)) & (absxy | jsr | brn|imm | zpxy | ix | iy | brk)) | s_rts3|(s_abs1 & ~(jmp|jmpi));
`endif
`endif


	wire [AMSB:0] pcao;
	pcAdder #(ABW) pca0(.op({doBranch, inc_pc}), .pc(pc), .disp(tmp), .o(pcao) );

	// watch precedence on "~" ! need the 15'b0
`ifdef CYCLE_ACCURATE
	wire [AMSB:0] aoadder = adr_o + {15'b0,~((s_df1|s_df2|s_dec1|upd_lst|s_upd1) & mem_op)};
`else
	wire [AMSB:0] aoadder = adr_o + {15'b0,~((s_df1|s_dec1|upd_lst|s_upd1) & mem_op)};
`endif

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
	// memory address multiplexer (6 to 1)
	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

	assign adr_nxt_o = asel_vec ? vec : 16'bz;					// a = vector
`ifdef ENH_ISA
	assign adr_nxt_o = asel_zp ? {dp,din + xyz_reg} : 16'bz;		// zp : zp,x : zp,y : (zp,x) : (zp),y : (zp)  // all zp modes
`else
	assign adr_nxt_o = asel_zp ? {8'h00,din + xyz_reg} : 16'bz;		// zp : zp,x : zp,y : (zp,x) : (zp),y : (zp)  // all zp modes
`endif
	assign adr_nxt_o = asel_abs ? {{din,tmp[7:0]}+xyz_reg} : 16'bz;	// abs : abs,x : abs,y : (zp),y	// a = tmp
	assign adr_nxt_o = asel_pcao ? pcao : 16'bz;
	assign adr_nxt_o = asel_aoadder ? aoadder : 16'bz;			// a = a + 1/0
	assign adr_nxt_o[15:8] = asel_sph ? 8'd01 : 8'bz;
	assign adr_nxt_o[7:0] = asel_sp ? sp : 8'bz;
	assign adr_nxt_o[7:0] = asel_spaddo ? sp_addo : 8'bz;


	//-------------------------------------------------------------
	//-------------------------------------------------------------
`ifdef CYCLE_ACCURATE
	assign delayBr = (pc[AMSB:8] != pcao[AMSB:8]) && taken;
`endif


`ifdef CYCLE_ACCURATE
	wire [8:0] tmp2 = tmp[7:0] + xyz_reg;
	always @(posedge clk_i)
		if (rst_i)
			page_cross <= 0;
		else if (pipe_ce) begin
			if (s_abs1|s_iy2)
				page_cross <= tmp2[8];
		end
`endif

	//-------------------------------------------------------------
	//-------------------------------------------------------------
	// latch incoming immediate data
	always @(posedge clk_i)
		if (rst_i)
			dil <= 8'b0;
		else begin
			if (pipe_ce) begin
				if ((s_exec & imm)|s_df1)
					dil <= din;
			end
		end


	// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
	// pc / a manipulation
	// -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
	always @(s_reset3 or s_rts2 or s_rts3 or s_rti3 or s_int5 or
		s_exec or s_jmpi2 or s_abs1 or brk or
		pcao or 
		jmp or jsr or s_sync or any_int or 
		brn or s_br1 or s_jsr1 or s_jsr2 or imm or zpxy or
		ix or iy or absxy or jmpi or pc or din or tmp or ir or
`ifdef ENH_ISA
		jmpix or 
`endif
`ifdef CYCLE_ACCURATE
		zp or
		s_exec2 or
`endif
		adr_nxt_o or br_nxt or jsr_nxt or s_br2)
	begin
		if (
			s_rts2 | s_rts3 |
			s_rti3 | s_int5 |
			s_reset3 | s_jmpi2 |
			(s_abs1 & jmp) |
			s_sync |
			s_br1 |
			s_br2 |
			br_nxt |
			jsr_nxt
			)
			pc_nxt <= adr_nxt_o;
		else if (s_jsr2)
			pc_nxt <= tmp;
		else if (
`ifdef CYCLE_ACCURATE
			(s_exec & (imm | zp | iy | absxy | brk)) |
			s_exec2 |
`else
			(s_exec & (imm | zpxy | ix | iy | absxy | brk)) |
`endif
`ifdef ENH_ISA
			(s_abs1 & ~(jmp|jmpi|jmpix)) )
`else
			(s_abs1 & ~(jmp|jmpi)) )
`endif
			pc_nxt <= pcao;
		else
			pc_nxt <= pc;
	end

	always @(posedge clk_i)
		if (pipe_ce) begin
			adr_o <= adr_nxt_o;
			pc <= pc_nxt;
		end


`ifdef ENH_ISA
	always @(posedge clk_i)
		if (rst_i)
			dp <= 0;
		else if (pipe_ce) begin
			if (s_exec&tad)
				dp <= res;
		end
`endif


	// tmp manipulation
	always @(posedge clk_i)
		if (rst_i)
			tmp <= 0;
		else if (pipe_ce) begin
			if (s_reset2 | s_int4 |
				s_rts1 |
				s_rti2 |
				s_jmpi1 |
				s_ix1 | s_iy1 |
				(s_exec & absxy) |
				jsr_nxt
				)
				tmp <= din;
			if (s_jsr1)
				tmp[15:8] <= din;
			// reload low order disp during ext_br
			if (s_exec & brn)
				tmp <= {{8{din[7]}},din};
		end


	// Bus
	// rw manipulation - - - - - - - - - - - - - - - - - - - - - -

	// WISHBONE compatible bus master state machine
`ifdef WISHBONE

	reg bs;
	reg pce;
	delay1 #(8) u3(.clk(clk_i), .ce(bs==`S_WAIT_ACK&&ack_i), .i(dat_i), .o(din) );

	always @(posedge clk_i)
		if (rst_i) begin
			ird_o <= 0;
			soc_o <= 0;
			cyc_o <= 0;
			stb_o <= 0;
			we_o <= 0;
			pipe_ce <= 0;
			bs <= `S_PIPE;
		end
		else begin
			soc_o <= 0;
			case (bs)
			`S_PIPE:
				begin
					ird_o <= ird_nxt_o;
					soc_o <= cyc_nxt_o;
					cyc_o <= cyc_nxt_o;
					stb_o <= cyc_nxt_o;
					we_o  <= we_nxt_o;
					if (cyc_nxt_o) begin
						pipe_ce <= 0;
						bs  <= `S_WAIT_ACK;
					end
					else
						pipe_ce <= 1;
				end
			`S_WAIT_ACK:
				if (ack_i) begin
					ird_o <= 0;
					soc_o <= 0;
					cyc_o <= lock_nxt_o;
					stb_o <= 0;
					we_o  <= 0;
					pipe_ce <= 1;
					bs 	  <= `S_PIPE;
				end
			endcase
		end

	// Use the following for a slightly faster bus interface as it
	// eliminates the need to negate cyc_o between bus cycles
	// In this case ack_i acts like a ready input
`else

	assign pipe_ce = ack_i;
	assign din = dat_i;

	always @(posedge clk_i)
		if (rst_i) begin
			ird_o <= 0;
			soc_o <= 0;
			cyc_o <= 0;
			stb_o <= 0;
			we_o <= 0;
		end
		else begin
			soc_o <= 0;
			if (pipe_ce|~cyc_o) begin
				ird_o <= ird_nxt_o;
				soc_o <= cyc_nxt_o;
				cyc_o <= cyc_nxt_o;
				stb_o <= cyc_nxt_o;
				we_o  <= we_nxt_o;
			end
		end
`endif

	// dat_o manipulation - - - - - - - - - - - - - - - - - - - - -
	// Place pc on bus for interrupt, or subroutine call
	assign dat_nxt_o = int_nxt|s_jsr1 ? pc[15:8] : 'bz;
	assign dat_nxt_o = s_int1| s_jsr2 ? pc[ 7:0] : 'bz;
`ifdef ENH_ISA
	assign dat_nxt_o = stz ? 8'h00 : 'bz;
	assign dat_nxt_o = trb|tsb ? trb_out : 'bz;
	assign dat_nxt_o = staxy|pha|phx|phy|mem_op ? res : 'bz;
`else
	assign dat_nxt_o = staxy|pha|mem_op ? res : 'bz;
`endif
	assign dat_nxt_o = (s_exec & php) | s_int2 ? sr_reg : 'bz;

	always @(posedge clk_i)
		if (rst_i)
			dat_o <= 8'b0;
		else if (pipe_ce)
			dat_o <= dat_nxt_o;


	// Load instruction register - - - - - - - - - - - - - - - - -
	always @(posedge clk_i)
		if (rst_i)
			ir <= `NOP;
		else if (pipe_ce & exec_nxt) begin
			if (any_int)
				ir <= `BRK;
			else
				ir <= din;
		end

	// synchronization ff
	// helps avoid meta-stability and allows nmi_i to be an
	// asynchronous input.
	always @(posedge clk_i)
		if (rst_i)
			nmi1 <= 0;
		else
			nmi1 <= nmi_i;

	wire nmi_edge1;
	edge_det ed0(.rst(rst_i), .clk(clk_i), .ce(1'b1), .i(nmi_i), .pe(nmi_edge1), .ne() );
	
	always @(posedge clk_i)
		if (rst_i)
			nmi_ff <= 0;
		// clear nmi_i when servicing triggered
		else if (s_int4)
			nmi_ff <= 0;
		else if (nmi_edge1)
			nmi_ff <= 1;

	always @(posedge clk_i)
		if (rst_i)
			irq_ff <= 0;
		else if (pipe_ce & exec_nxt)
			irq_ff <= irq_i & ~im;
		else if (s_int4)
			irq_ff <= 0;

	always @(posedge clk_i)
		if (rst_i)
			nmi_ff2 <= 0;
		else if (pipe_ce & exec_nxt)
			nmi_ff2 <= nmi_ff;
		else if (s_int4)
			nmi_ff2 <= 0;


	// Evaluate br condition - - - - - - - - - - - - - - - - -
	br_eval u5 (
		.cond(cond),
		.nf(nf),
		.vf(vf),
		.cf(cf),
		.zf(zf),
`ifdef ENH_ISA
		.bra(bra),
		.brl(brl),
`else
		.bra(1'b0),
		.brl(1'b0),
`endif
		.takb(takb)
	);

	// The following is a mini-disassembler provided for
	// simulation output.
	// synthesis translate_off
	always @(posedge clk_i)
		if (pipe_ce) begin
			if (s_exec)	begin
				if (brn) begin
`ifdef ENH_ISA
					if (brl) $display("BRL ");
					else if (bra) $display("BRA ");
					else
`endif
					case (cond)
					`BPL:	$display("BPL ");
					`BMI: 	$display("BMI ");
					`BVC:	$display("BVC ");
					`BVS: 	$display("BVS ");
`ifdef ENH_ISA
					`BCC:	$display("BCC ");
`else
					`BCC:	$display("BCC ");
`endif
					`BCS: 	$display("BCS ");
					`BNE:	$display("BNE ");
					`BEQ: 	$display("BEQ ");
					endcase
				end
				case (1'b1)
				nop:	$display("NOP ");
				cld:	$display("CLD ");
				cli:	$display("CLI ");
				clv:	$display("CLV ");
				clc:	$display("CLC ");
				sed:	$display("SED ");
				sei:	$display("SEI ");
				sec:	$display("SEC ");
				brk:	$display("BRK ");
				rts:	$display("RTS ");
				rti:	$display("RTI ");
				pha:	$display("PHA ");
				php:	$display("PHP ");
				pla:	$display("PLA ");
				plp:	$display("PLP ");
	`ifdef ENH_ISA
				wai:	$display("WAI ");
				stp_o:	$display("STP ");
				phx:	$display("PHX ");
				phy:	$display("PHY ");
				plx:	$display("PLX ");
				ply:	$display("PLY ");
				ina:	$display("INA ");
				dea:	$display("DEA ");
				txy:	$display("TXY ");
				tyx:	$display("TYX ");
				tsa:	$display("TSA ");
				tas:	$display("TAS ");
				stz:	$display("STZ ");
				trb:	$display("TRB ");
				tsb:	$display("TSB ");
	`endif
				inx:	$display("INX ");
				iny:	$display("INY ");
				dex:	$display("DEX ");
				dey:	$display("DEY ");
				txa:	$display("TXA ");
				txs:	$display("TXS ");
				tya:	$display("TYA ");
				tax:	$display("TAX ");
				tay:	$display("TAY ");
				ror:	$display("ROR ");
				lsr:	$display("LSR ");
				asl:	$display("ASL ");
				rol:	$display("ROL ");			
				jsr:	$write("JSR abs");
				jmp:	$write("JMP abs");
				jmpi:	$display("JMP (abs)");
				lda:	$write("LDA ");
				ldx:	$write("LDX ");
				ldy:	$write("LDY ");
				sta:	$write("STA ");
				stx:	$write("STX ");
				sty:	$write("STY ");
				cmp:	$write("CMP ");
				cpx:	$write("CPX ");
				cpy:	$write("CPY ");
				adc:	$write("ADC ");
				sbc:	$write("SBC ");
				andd:	$write("AND ");
				ora:	$write("ORA ");
				eor:	$write("EOR ");
				bit:	$write("BIT ");						
				dec:	$write("DEC ");
				inc:	$write("INC ");
				endcase
				if (imm)
					$display("#imm ");
				if (zp)
					$display("zp ");
				if (zpx)
					$display("zp,x ");
				if (zpy)
					$display("zp,y ");
				if (ix)
					$display("(zp,x) ");
				if (iy)
					$display("(zp),y ");
				if (abs)
					$display("abs ");
				if (absx)
					$display("abs,x ");
				if (absy)
					$display("abs,y ");
`ifdef ENH_ISA
				if (zi)
					$display("(zp) ");
				if (dsp)
					$display("d,sp ");
				if (sriy)
					$display("(d,s),y ");
`endif
			end
		end
	// synthesis translate_on



	// A,X,Y,SP Register loading -  -  -  -  -  -  -  -  -  -  -  -  -

	wire load_a =
`ifdef ENH_ISA
		(s_exec & (tya|txa|shiftAcc|tsa|ina|dea)) |
`else
		(s_exec & (tya|txa|shiftAcc)) |
`endif
		(s_pul1 & pla) |
		(upd_lst & acc & ~cmp)
		;

	wire load_x = 
`ifdef ENH_ISA
		(s_exec & (inx|dex|tax|tsx|tyx)) |
`else
		(s_exec & (inx|dex|tax|tsx)) |
`endif
		(s_pul1 & plx) |
		(upd_lst & ldx)
		;

	wire load_y =
`ifdef ENH_ISA
		(s_exec & (iny|dey|tay|txy)) |
`else
		(s_exec & (iny|dey|tay)) |
`endif
		(s_pul1 & ply) |
		(upd_lst & ldy)
		;

	wire load_sp =
`ifdef ENH_ISA
		s_exec & (tas|txs)
`else
		s_exec & txs
`endif
		;
	wire incdec_sp = 
		(s_exec & (psh|pul|rts|rti)) |
		int_nxt | s_int1 | s_int2 |
		s_rti1 | s_rti2 |
		s_jsr1 | s_jsr2 |
		s_rts1
		;

	always @(posedge clk_i)
		if (pipe_ce) begin
			if (load_a)
				a_reg <= res;
		end

	always @(posedge clk_i)
		if (pipe_ce) begin
			if (load_x)
				x <= res;
		end

	always @(posedge clk_i)
		if (pipe_ce) begin
			if (load_y)
				y <= res;
		end

	always @(posedge clk_i)
		if (pipe_ce) begin
			if (incdec_sp)
				sp <= sp_addo;
			else if (load_sp)
				sp <= res;
		end


	// SR flags_o updating - - - - - - - - - - - - - - - - - - - - - 

	setIntType u4 (
		.rst(rst_i),
		.clk(clk_i),
		.pipe_ce(pipe_ce),
		.s_int4(s_int4),
		.s_sync(s_sync),
		.s_exec(s_exec),
		.brk(brk),
		.any_int(any_int),
		.nmi_ff(nmi_ff),
		.firq(firq),
		.fbrk(fbrk),
		.fnmi(fnmi)
	);


	// SR flags updating - - - - - - - - - - - - - - - - - - - - - 
	always @(posedge clk_i) begin
		if (rst_i) begin
			vf <= 0;
			nf <= 0;
			im <= 1;
			zf <= 0;
			cf <= 0;
			df <= 0;
			bf <= 0;
`ifdef ENH_ISA
			ef <= 1;
`endif
		end
		else if (pipe_ce) begin
		
			if (so_i)
				vf <= 1'b1;

			// NMI / IRQ / BRK ---------------------
			if (s_int2) begin
				bf <= fbrk;
				im <= 1;
			end

			if (s_exec) begin

				taken <= takb;

				case (1'b1)
				inx,dex,tax,tsx,
				iny,dey,tay,
				tya,txa:
						begin
						zf <= resz;
						nf <= resn;
						end
`ifdef DECMD
				cld:	df <= 0;
				sed:	df <= 1;
`endif
				clc:	cf <= 0;
				sec:	cf <= 1;
				cli:	im <= 0;
				sei:	im <= 1;
				clv:	vf <= 0;
				shiftAcc:
						begin
						cf <= shiftC;
						zf <= resz;
						nf <= resn;
						end
`ifdef ENH_ISA
				txy,tyx,
				tda,
				tsa,ina,dea:
						begin
						zf <= resz;
						nf <= resn;
						end
				xce:	begin
						ef <= cf;
						cf <= ef;
						end
`endif
				default: ;
				endcase

			end

			//======================================
			// subsequent opcode states
			//======================================
			
			if ((s_pul1 & plp) | s_rti1) begin
				nf <= din[7];
				vf <= din[6];
				bf <= din[4];	// incompatible!
				df <= din[3];
				im <= din[2];
				zf <= din[1];
				cf <= din[0];
			end
`ifdef ENH_ISA
			if (s_pul1 & (pla|plx|ply)) begin
`else
			if (s_pul1 & pla) begin
`endif
				zf <= resz;
				nf <= resn;
			end

			if (upd_lst) begin

				if (adc|sbc) begin
					vf <= addsubV;
`ifdef DECMD
					cf <= df ? daddsubC : addsubC;
`else
					cf <= addsubC;
`endif
				end

				if (ldy|cpy|ldx|cpx|dLogic|mem_op|cmp|adc|sbc|lda) begin
					nf <= res[7];
					zf <= resz;
				end

				if (shiftMem)
					cf <= shiftC;

				if (bit) begin
					vf <= dil[6];
					nf <= dil[7];
					zf <= resz;
				end

				if (cmp|cpx|cpy)
					cf <= cmpC;
`ifdef ENH_ISA
				if (trb|tsb)
					zf <= resz;
`endif
			end

		end // if (pipe_ce)
	end

endmodule


