module letterGate(inA, inB, inC, inD, inF, out);
input inA, inB, inC, inD, inF;
output reg [3:0] out;
always @ (inA, inB, inC, inD, inF)
  begin 
    case({inA, inB, inC, inD, inF})
	  5'b10000: out = 4'b1010; // out is A
	  5'b01000: out = 4'b1011; // out is B
	  5'b00100: out = 4'b1100; // out is C
	  5'b00010: out = 4'b1101; // out is D
	  5'b00001: out = 4'b1111; // out is F
	  default : out = 4'b1110; // out is E - Error / Empty
	endcase
end
endmodule