module FSM(
  input wire Clock,
  input wire Reset,
  input wire W,
  
  output wire Address0,
  output wire Address1//,
  //output wire Status
  );

localparam STATE_0 = 2'b00,
		   STATE_1 = 2'b01,
		   STATE_2 = 2'b10,
		   STATE_3 = 2'b11;

reg [1:0] CurrentState;
reg [1:0] NextState;

assign Address1 = (CurrentState == STATE_2) | (CurrentState == STATE_3);
assign Address0 = (CurrentState == STATE_1) | (CurrentState == STATE_3);

/*
always @ ( * )
  begin
    Status = 2'b00;
	 case (CurrentState)
	    STATE_0:
		   begin
			  Status <= 2'b00;
			end
	    STATE_1:
		   begin
			  Status <= 2'b01;
			end			
	    STATE_2:
		   begin
			  Status <= 2'b10;
			end
	    STATE_3:
		   begin
			  Status <= 2'b11;
			end
	endcase
end
*/

always@ ( posedge Clock ) 
  begin
    if ( Reset == 0) CurrentState <= STATE_0;
    else if ( W == 0) CurrentState <= NextState;
  end

always @ ( * )
  begin
    NextState = CurrentState;
	case (CurrentState)
      STATE_0:
	    begin
		  NextState = STATE_1;
		end
	  STATE_1: 
	    begin
		  NextState = STATE_2;
		end
	  STATE_2: 
	    begin
		  NextState = STATE_3;
		end
	  STATE_3: 
	    begin
		  NextState = STATE_0;
		end	
	endcase
  end
endmodule