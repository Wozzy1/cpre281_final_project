// source https://esrd2014.blogspot.com/p/8-bit-magnitude-comparator.html
// compares In1 to In2

module comparator7b (In1, In2, Gt, Lt, Eq); 
input [6:0]  In1, In2; 
output	Gt, Lt, Eq; 
reg	Gt, Lt, Eq; 
always @ (In1 or In2) 
  begin 
    Gt <= ( In1 > In2 )? 1'b1 : 1'b0; 
    Lt <= ( In1 < In2 )? 1'b1 : 1'b0; 
    Eq <= ( In1 == In2)? 1'b1 : 1'b0; 
  end
endmodule