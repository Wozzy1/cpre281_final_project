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
// CREATED		"Tue Apr 30 19:56:42 2024"

module main(
	Enable,
	Write,
	Clear,
	Clock,
	Data,
	Select,
	SEG40,
	SEG41,
	SEG42,
	SEG43,
	SEG44,
	SEG45,
	SEG46,
	SEG50,
	SEG51,
	SEG52,
	SEG53,
	SEG54,
	SEG55,
	SEG56,
	SEG60,
	SEG61,
	SEG62,
	SEG63,
	SEG64,
	SEG65,
	SEG66,
	SEG70,
	SEG71,
	SEG72,
	SEG73,
	SEG74,
	SEG75,
	SEG76,
	SEG00,
	SEG01,
	SEG02,
	SEG03,
	SEG04,
	SEG05,
	SEG06,
	SEG10,
	SEG11,
	SEG12,
	SEG13,
	SEG14,
	SEG15,
	SEG16,
	OF,
	TEST_WRITE,
	TEST_ENABLE,
	TEST_CLEAR,
	TEST_SELECT0,
	TEST_SELECT1,
	TEST_BINARY
);


input wire	Enable;
input wire	Write;
input wire	Clear;
input wire	Clock;
input wire	[6:0] Data;
input wire	[1:0] Select;
output wire	SEG40;
output wire	SEG41;
output wire	SEG42;
output wire	SEG43;
output wire	SEG44;
output wire	SEG45;
output wire	SEG46;
output wire	SEG50;
output wire	SEG51;
output wire	SEG52;
output wire	SEG53;
output wire	SEG54;
output wire	SEG55;
output wire	SEG56;
output wire	SEG60;
output wire	SEG61;
output wire	SEG62;
output wire	SEG63;
output wire	SEG64;
output wire	SEG65;
output wire	SEG66;
output wire	SEG70;
output wire	SEG71;
output wire	SEG72;
output wire	SEG73;
output wire	SEG74;
output wire	SEG75;
output wire	SEG76;
output wire	SEG00;
output wire	SEG01;
output wire	SEG02;
output wire	SEG03;
output wire	SEG04;
output wire	SEG05;
output wire	SEG06;
output wire	SEG10;
output wire	SEG11;
output wire	SEG12;
output wire	SEG13;
output wire	SEG14;
output wire	SEG15;
output wire	SEG16;
output wire	OF;
output wire	TEST_WRITE;
output wire	TEST_ENABLE;
output wire	TEST_CLEAR;
output wire	TEST_SELECT0;
output wire	TEST_SELECT1;
output wire	[6:0] TEST_BINARY;

wire	[6:0] SYNTHESIZED_WIRE_0;
wire	[6:0] SYNTHESIZED_WIRE_1;
wire	[6:0] SYNTHESIZED_WIRE_2;
wire	[6:0] SYNTHESIZED_WIRE_3;
wire	[6:0] SYNTHESIZED_WIRE_4;

assign	TEST_WRITE = Write;
assign	TEST_ENABLE = Enable;
assign	TEST_CLEAR = Clear;
assign	TEST_SELECT0 = Select[0];
assign	TEST_SELECT1 = Select[1];
assign	TEST_BINARY = SYNTHESIZED_WIRE_0;
wire	[1:0] GDFX_TEMP_SIGNAL_0;


assign	GDFX_TEMP_SIGNAL_0 = {TEST_SELECT1,TEST_SELECT0};


memoryUnit	b2v_inst(
	.ENABLE(Enable),
	.WRITE(Write),
	.CLEAR(Clear),
	.CLOCK(Clock),
	.LOAD(Data),
	.SELECT(GDFX_TEMP_SIGNAL_0),
	.REGISTER0_OUT(SYNTHESIZED_WIRE_1),
	.REGISTER1_OUT(SYNTHESIZED_WIRE_2),
	.REGISTER2_OUT(SYNTHESIZED_WIRE_3),
	.REGISTER3_OUT(SYNTHESIZED_WIRE_4),
	.SELECTED_REGISTER(SYNTHESIZED_WIRE_0));


binaryDisplay	b2v_inst3(
	.BinaryIn(SYNTHESIZED_WIRE_0),
	.OVERFLOW(OF),
	.TENS0(SEG00),
	.TENS1(SEG01),
	.TENS2(SEG02),
	.TENS3(SEG03),
	.TENS4(SEG04),
	.TENS5(SEG05),
	.TENS6(SEG06),
	.ONES0(SEG10),
	.ONES1(SEG11),
	.ONES2(SEG12),
	.ONES3(SEG13),
	.ONES4(SEG14),
	.ONES5(SEG15),
	.ONES6(SEG16));


seven_seg_decoder_7b	b2v_inst5(
	.score(SYNTHESIZED_WIRE_1),
	.A(SEG40),
	.B(SEG41),
	.C(SEG42),
	.D(SEG43),
	.E(SEG44),
	.F(SEG45),
	.G(SEG46));


seven_seg_decoder_7b	b2v_inst6(
	.score(SYNTHESIZED_WIRE_2),
	.A(SEG50),
	.B(SEG51),
	.C(SEG52),
	.D(SEG53),
	.E(SEG54),
	.F(SEG55),
	.G(SEG56));


seven_seg_decoder_7b	b2v_inst7(
	.score(SYNTHESIZED_WIRE_3),
	.A(SEG60),
	.B(SEG61),
	.C(SEG62),
	.D(SEG63),
	.E(SEG64),
	.F(SEG65),
	.G(SEG66));


seven_seg_decoder_7b	b2v_inst8(
	.score(SYNTHESIZED_WIRE_4),
	.A(SEG70),
	.B(SEG71),
	.C(SEG72),
	.D(SEG73),
	.E(SEG74),
	.F(SEG75),
	.G(SEG76));


endmodule
