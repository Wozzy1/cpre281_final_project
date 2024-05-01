// parametric Verilog implementation of the double dabble binary to BCD converter
// for the complete project, see
// https://github.com/AmeerAbdelhadi/Binary-to-BCD-Converter

module bcd_7b
 //#( parameter                W =  7)  // input width
  ( input      [7-1      :0] bin   ,  // binary
    output reg [7+(7-4)/3:0] bcd   ); // bcd {...,thousands,hundreds,tens,ones}

  integer i,j;

  always @(bin) begin
    for(i = 0; i <= 7+(7-4)/3; i = i+1) bcd[i] = 0;     // initialize with zeros
    bcd[7-1:0] = bin;                                   // initialize with input vector
    for(i = 0; i <= 7-4; i = i+1)                       // iterate on structure depth
      for(j = 0; j <= i/3; j = j+1)                     // iterate on structure width
        if (bcd[7-i+4*j -: 4] > 4)                      // if > 4
          bcd[7-i+4*j -: 4] = bcd[7-i+4*j -: 4] + 4'd3; // add 3
  end

endmodule
