// source geeks for geeks 
module decoder2_to_4(en,a,b,y);
   input en,a,b;
   output reg [3:0]y;
   
   always @(en,a,b)
     begin
       // using condition if statement 
       // implement the 2:4 truth table
       if(en==0)
         begin
           if(a==1'b0 & b==1'b0) 	  y=4'b0001;
           else if(a==1'b0 & b==1'b1) y=4'b0010;
           else if(a==1'b1 & b==1'b0) y=4'b0100;
           else if(a==1 & b==1) 		  y=4'b1000;
           else 							  y=4'bxxxx;
         end
       else
        y=4'b0000;
     end
endmodule
