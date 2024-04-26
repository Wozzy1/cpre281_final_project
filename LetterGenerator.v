module LetterGenerator (Input, Output, A, B, C, D, F);
input [6:0] Input; // the binary input of the percentage
output reg [3:0] Output; // outputs the bits for a letter A-F
output A, B, C, D, F;

assign a_l = 7'b1011010; // 90
assign a_h = 7'b1100011; // 99

assign b_l = 7'b1010000; // 80
assign b_h = 7'b1011001; // 89

assign c_l = 7'b1000110; // 70
assign c_h = 7'b1001111; // 79

assign d_l = 7'b0111100; // 60
assign d_h = 7'b1000101; // 69

assign f_l = 7'b0000000; // 0
assign f_h = 7'b0111011; // 59

//reg inA, inB, inC, inD, inF;

comparator7b comp1(.In1(Input), .In2(a_l), .Gt(Gt), .Lt(Lt), .Eq(Eq));

// assign inA = (Input >= a_l) && (Input <= a_h);
// assign inB = (Input >= b_l) && (Input <= b_h);
// assign inC = (Input >= c_l) && (Input <= c_h);
// assign inD = (Input >= d_l) && (Input <= d_h);
// assign inF = (Input >= f_l) && (Input <= f_h);


always @ (inA, inB, inC, inD, inF)
  begin 
    case({inA, inB, inC, inD, inF})
	  5'b10000: Output = 4'b1010; // output is A
	  5'b01000: Output = 4'b1011; // output is B
	  5'b00100: Output = 4'b1100; // output is C
	  5'b00010: Output = 4'b1101; // output is D
	  5'b00001: Output = 4'b1111; // output is F
	//  default : Output = 4'b1110; // output is E - Error / Empty
	endcase
end

 endmodule