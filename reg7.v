module reg7 (CLK, clr, ld, Din, Dout);
  input CLK;
  input clr; // clear register
  input ld; // load register from Din
  input [6:0] Din; // Data input for load
  output [6:0] Dout;
  reg [6:0] Dout;
  always @(posedge CLK) begin
    if (clr) Dout <= 0;
    else if (ld) Dout <= Din;
  end
endmodule // shiftReg