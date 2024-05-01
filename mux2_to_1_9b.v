module mux2_to_1_9b(
  input [8:0] a,
  input [8:0] b,
  input sel,
  output [8:0] out);

  assign out = sel ? a : b;

endmodule