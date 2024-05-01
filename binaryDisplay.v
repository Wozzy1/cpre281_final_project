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
// CREATED		"Tue Apr 30 20:06:36 2024"

module binaryDisplay(
	BinaryIn,
	OVERFLOW,
	TENS0,
	TENS1,
	TENS2,
	TENS3,
	TENS4,
	TENS5,
	TENS6,
	ONES0,
	ONES1,
	ONES2,
	ONES3,
	ONES4,
	ONES5,
	ONES6,
	TEST_OUTPUT,
	TEST_RESULT
);


input wire	[6:0] BinaryIn;
output wire	OVERFLOW;
output wire	TENS0;
output wire	TENS1;
output wire	TENS2;
output wire	TENS3;
output wire	TENS4;
output wire	TENS5;
output wire	TENS6;
output wire	ONES0;
output wire	ONES1;
output wire	ONES2;
output wire	ONES3;
output wire	ONES4;
output wire	ONES5;
output wire	ONES6;
output wire	[8:0] TEST_OUTPUT;
output wire	[8:0] TEST_RESULT;

wire	[8:0] c;
wire	[8:0] OUT;
wire	[8:0] RESULT;





bcd_7b	b2v_inst(
	.bin(BinaryIn),
	.bcd(OUT));



mux2_to_1_9b	b2v_inst7(
	.sel(OUT[8]),
	.a(c),
	.b(OUT),
	.out(RESULT));


seven_seg_decoder	b2v_ones(
	.x3(RESULT[3]),
	.x2(RESULT[2]),
	.x1(RESULT[1]),
	.x0(RESULT[0]),
	.A(ONES0),
	.B(ONES1),
	.C(ONES2),
	.D(ONES3),
	.E(ONES4),
	.F(ONES5),
	.G(ONES6));


seven_seg_decoder	b2v_tens(
	.x3(RESULT[7]),
	.x2(RESULT[6]),
	.x1(RESULT[5]),
	.x0(RESULT[4]),
	.A(TENS0),
	.B(TENS1),
	.C(TENS2),
	.D(TENS3),
	.E(TENS4),
	.F(TENS5),
	.G(TENS6));

assign	OVERFLOW = RESULT[8];
assign	TEST_OUTPUT = OUT;
assign	TEST_RESULT = RESULT;
assign	c[1] = 1;
assign	c[2] = 1;
assign	c[3] = 1;
assign	c[4] = 1;
assign	c[5] = 1;
assign	c[6] = 1;
assign	c[7] = 1;
assign	c[8] = 1;
assign	c[0] = 1;

endmodule
