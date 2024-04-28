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
// CREATED		"Sun Apr 28 14:30:32 2024"

module memoryUnit(
	CLOCK,
	ENABLE,
	WRITE,
	CLEAR,
	LOAD,
	SELECT,
	REGISTER0_OUT,
	REGISTER1_OUT,
	REGISTER2_OUT,
	REGISTER3_OUT,
	SELECTED_REGISTER
);


input wire	CLOCK;
input wire	ENABLE;
input wire	WRITE;
input wire	CLEAR;
input wire	[6:0] LOAD;
input wire	[1:0] SELECT;
output wire	[6:0] REGISTER0_OUT;
output wire	[6:0] REGISTER1_OUT;
output wire	[6:0] REGISTER2_OUT;
output wire	[6:0] REGISTER3_OUT;
output wire	[6:0] SELECTED_REGISTER;

wire	[3:0] c;
wire	[3:0] l;
wire	[6:0] SYNTHESIZED_WIRE_0;
wire	[6:0] SYNTHESIZED_WIRE_1;
wire	[6:0] SYNTHESIZED_WIRE_2;
wire	[6:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	REGISTER0_OUT = SYNTHESIZED_WIRE_0;
assign	REGISTER1_OUT = SYNTHESIZED_WIRE_1;
assign	REGISTER2_OUT = SYNTHESIZED_WIRE_2;
assign	REGISTER3_OUT = SYNTHESIZED_WIRE_3;



assign	SYNTHESIZED_WIRE_5 = ENABLE & WRITE;

assign	SYNTHESIZED_WIRE_4 = CLEAR & ENABLE;


mux4_to_1_7b	b2v_inst4(
	.a(SYNTHESIZED_WIRE_0),
	.b(SYNTHESIZED_WIRE_1),
	.c(SYNTHESIZED_WIRE_2),
	.d(SYNTHESIZED_WIRE_3),
	.sel(SELECT),
	.out(SELECTED_REGISTER));


decoder2_to_4	b2v_inst7(
	.en(SYNTHESIZED_WIRE_4),
	.a(SELECT[1]),
	.b(SELECT[0]),
	.y(c));


decoder2_to_4	b2v_inst8(
	.en(SYNTHESIZED_WIRE_5),
	.a(SELECT[1]),
	.b(SELECT[0]),
	.y(l));


reg7	b2v_REGISTER0(
	.CLK(CLOCK),
	.clr(l[0]),
	.ld(c[0]),
	.Din(LOAD),
	.Dout(SYNTHESIZED_WIRE_0));


reg7	b2v_REGISTER1(
	.CLK(CLOCK),
	.clr(l[1]),
	.ld(c[1]),
	.Din(LOAD),
	.Dout(SYNTHESIZED_WIRE_1));


reg7	b2v_REGISTER2(
	.CLK(CLOCK),
	.clr(l[2]),
	.ld(c[2]),
	.Din(LOAD),
	.Dout(SYNTHESIZED_WIRE_2));


reg7	b2v_REGISTER3(
	.CLK(CLOCK),
	.clr(l[3]),
	.ld(c[3]),
	.Din(LOAD),
	.Dout(SYNTHESIZED_WIRE_3));


endmodule
