module bcd_2b (
  input wire a1,
  input wire a0,
  
  output reg [6:0] segments
  );
  

always @ ( * ) 
  begin
    case ({a1,a0})
	   2'b00: segments = 7'b0000001;
	   2'b01: segments = 7'b1001111;
	   2'b10: segments = 7'b0010010;
	   2'b11: segments = 7'b0000110;
	  endcase
  end
endmodule