// Copyright (C) 2023  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.1 Build 917 02/14/2023 SC Standard Edition"
// CREATED		"Fri Apr 26 21:55:22 2024"

module letterGeneratorBDF(
	PercentageInput,
	F,
	D,
	C,
	B,
	A,
	LetterOut,
	test
);


input wire	[6:0] PercentageInput;
output wire	F;
output wire	D;
output wire	C;
output wire	B;
output wire	A;
output wire	[3:0] LetterOut;
output wire	[6:0] test;

wire	[6:0] SYNTHESIZED_WIRE_0;
wire	[6:0] SYNTHESIZED_WIRE_1;
wire	[6:0] SYNTHESIZED_WIRE_2;
wire	[6:0] SYNTHESIZED_WIRE_3;
wire	[6:0] SYNTHESIZED_WIRE_4;
wire	[6:0] SYNTHESIZED_WIRE_5;
wire	[6:0] SYNTHESIZED_WIRE_6;
wire	[6:0] SYNTHESIZED_WIRE_7;
wire	[6:0] SYNTHESIZED_WIRE_8;
wire	[6:0] SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;

assign	F = SYNTHESIZED_WIRE_30;
assign	D = SYNTHESIZED_WIRE_29;
assign	C = SYNTHESIZED_WIRE_28;
assign	B = SYNTHESIZED_WIRE_27;
assign	A = SYNTHESIZED_WIRE_26;
assign	test = SYNTHESIZED_WIRE_8;




comparator7b	b2v_comp1(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_0),
	.Gt(SYNTHESIZED_WIRE_32),
	
	.Eq(SYNTHESIZED_WIRE_31));


comparator7b	b2v_comp11(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_1),
	.Gt(SYNTHESIZED_WIRE_38),
	
	.Eq(SYNTHESIZED_WIRE_37));


comparator7b	b2v_comp12(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_2),
	
	.Lt(SYNTHESIZED_WIRE_36),
	.Eq(SYNTHESIZED_WIRE_35));


comparator7b	b2v_comp2(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_3),
	
	.Lt(SYNTHESIZED_WIRE_25),
	.Eq(SYNTHESIZED_WIRE_24));


comparator7b	b2v_comp3(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_4),
	
	.Lt(SYNTHESIZED_WIRE_40),
	.Eq(SYNTHESIZED_WIRE_39));


comparator7b	b2v_comp4(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_5),
	.Gt(SYNTHESIZED_WIRE_42),
	
	.Eq(SYNTHESIZED_WIRE_41));


comparator7b	b2v_comp5(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_6),
	
	.Lt(SYNTHESIZED_WIRE_15),
	.Eq(SYNTHESIZED_WIRE_14));


comparator7b	b2v_comp6(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_7),
	.Gt(SYNTHESIZED_WIRE_17),
	
	.Eq(SYNTHESIZED_WIRE_16));


comparator7b	b2v_comp7(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_8),
	
	.Lt(SYNTHESIZED_WIRE_21),
	.Eq(SYNTHESIZED_WIRE_20));


comparator7b	b2v_comp8(
	.In1(PercentageInput),
	.In2(SYNTHESIZED_WIRE_9),
	.Gt(SYNTHESIZED_WIRE_23),
	
	.Eq(SYNTHESIZED_WIRE_22));


lpm_constant_0	b2v_CONST0(
	.result(SYNTHESIZED_WIRE_9));


lpm_constant_1	b2v_CONST59(
	.result(SYNTHESIZED_WIRE_8));


lpm_constant_2	b2v_CONST60(
	.result(SYNTHESIZED_WIRE_7));


lpm_constant_3	b2v_CONST69(
	.result(SYNTHESIZED_WIRE_6));


lpm_constant_4	b2v_CONST70(
	.result(SYNTHESIZED_WIRE_5));


lpm_constant_5	b2v_CONST79(
	.result(SYNTHESIZED_WIRE_4));


lpm_constant_6	b2v_CONST80(
	.result(SYNTHESIZED_WIRE_1));


lpm_constant_7	b2v_CONST89(
	.result(SYNTHESIZED_WIRE_2));


lpm_constant_8	b2v_CONST90(
	.result(SYNTHESIZED_WIRE_0));


lpm_constant_9	b2v_CONST99(
	.result(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_26 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_24 | SYNTHESIZED_WIRE_25;


letterGate	b2v_inst20(
	.inA(SYNTHESIZED_WIRE_26),
	.inB(SYNTHESIZED_WIRE_27),
	.inC(SYNTHESIZED_WIRE_28),
	.inD(SYNTHESIZED_WIRE_29),
	.inF(SYNTHESIZED_WIRE_30),
	.out(LetterOut));

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_31 | SYNTHESIZED_WIRE_32;

assign	SYNTHESIZED_WIRE_27 = SYNTHESIZED_WIRE_33 & SYNTHESIZED_WIRE_34;

assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_35 | SYNTHESIZED_WIRE_36;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_37 | SYNTHESIZED_WIRE_38;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_39 | SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_41 | SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_43 & SYNTHESIZED_WIRE_44;


endmodule

module lpm_constant_0(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_1(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_2(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_3(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_4(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_5(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_6(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_7(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_8(result);
/* synthesis black_box */

output [6:0] result;

endmodule

module lpm_constant_9(result);
/* synthesis black_box */

output [6:0] result;

endmodule
