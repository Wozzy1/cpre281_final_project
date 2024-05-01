module seven_seg_decoder(x3, x2, x1, x0, A, B, C, D, E, F, G);
	input x3, x2, x1, x0;
	output A, B, C, D, E, F, G;
	reg A, B, C, D, E, F, G;
	
	always @(x3 or x2 or x1 or x0)
	begin
		case ({x3, x2, x1, x0})
		
			4'b0000: {A, B, C, D, E, F, G} = 7'b0000001;
			4'b0001: {A, B, C, D, E, F, G} = 7'b1001111;
			4'b0010: {A, B, C, D, E, F, G} = 7'b0010010;
			4'b0011: {A, B, C, D, E, F, G} = 7'b0000110;
			4'b0100: {A, B, C, D, E, F, G} = 7'b1001100;
			4'b0101: {A, B, C, D, E, F, G} = 7'b0100100;
			4'b0110: {A, B, C, D, E, F, G} = 7'b0100000;
			4'b0111: {A, B, C, D, E, F, G} = 7'b0001111;
			4'b1000: {A, B, C, D, E, F, G} = 7'b0000000;
			4'b1001: {A, B, C, D, E, F, G} = 7'b0000100;
			//5'b10000: {A, B, C, D, E, F, G} = 7'b0001000; // A
			//5'b01000: {A, B, C, D, E, F, G} = 7'b1100000; // B
			//5'b00100: {A, B, C, D, E, F, G} = 7'b0110001; // C
			//5'b00010: {A, B, C, D, E, F, G} = 7'b1000010; // D
			//5'b11111: {A, B, C, D, E, F, G} = 7'b0111000; // F
			default : {A, B, C, D, E, F, G} = 7'b1111111; // E

		endcase
	end
endmodule

			