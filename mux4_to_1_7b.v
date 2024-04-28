module mux4_to_1_7b(
  input [6:0] a,
  input [6:0] b,
  input [6:0] c,
  input [6:0] d,
  input [1:0] sel,
  output [6:0] out);

  assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);

endmodule