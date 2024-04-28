module mux2_to_1_7b(
  input [6:0] a,
  input [6:0] b,
  input sel,
  output [6:0] out);

  assign out = sel ? a : b;

endmodule