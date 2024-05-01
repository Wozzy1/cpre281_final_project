module seven_seg_decoder_7b(score, A, B, C, D, E, F, G);
	input [6:0] score;
	//input en, clear;
	//input en;
	output A, B, C, D, E, F, G;
	reg A, B, C, D, E, F, G;
	
	// if clear == 1 then 7'b11111111
	// if enable then continue
	
	
	always @(*)
	begin
		//if (en)
		begin
			//if (clear == 0) begin
			if (score >= 90 && score <=99)
				{A, B, C, D, E, F, G} = 7'b0001000; // A
			else if (score >= 80 && score <= 89)
				{A, B, C, D, E, F, G} = 7'b1100000; // B
			else if (score >= 70 && score <= 79)
				{A, B, C, D, E, F, G} = 7'b0110001; // C
			else if (score >= 60 && score <= 69)
				{A, B, C, D, E, F, G} = 7'b1000010; // D
			else if (score >= 1 && score <= 59)
				{A, B, C, D, E, F, G} = 7'b0111000; // F
			else
				{A, B, C, D, E, F, G} = 7'b0110000; // E
			//end
			//else
			//	{A, B, C, D, E, F, G} = 7'b1111111; // blank
		end
	end
endmodule

			