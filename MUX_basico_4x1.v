module MUX_basico_4x1(a, b, c, d, s0, s1, f);
	input a, b, c, d, s0, s1;
	output f;
	wire f_basico1;
	wire f_basico2;
	
	MUX_basico_2x1 MUX_basico1(.a(a), .b(b), .s(s1), .f(f_basico1));
	MUX_basico_2x1 MUX_basico2(.a(c), .b(d), .s(s1), .f(f_basico2));
	MUX_basico_2x1 MUX_basico3(.a(f_basico1), .b(f_basico2), .s(s0), .f(f));
	
endmodule