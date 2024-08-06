module MUX_quadruplo_2x1(a, b, s, f);
	input [3:0] a, b;
	input s;
	output [3:0] f;
	
	MUX_basico_2x1 MUX_basico_2x1_0(.a(a[0]), .b(b[0]), .s(s), .f(f[0]));
	MUX_basico_2x1 MUX_basico_2x1_1(.a(a[1]), .b(b[1]), .s(s), .f(f[1]));
	MUX_basico_2x1 MUX_basico_2x1_2(.a(a[2]), .b(b[2]), .s(s), .f(f[2]));
	MUX_basico_2x1 MUX_basico_2x1_3(.a(a[3]), .b(b[3]), .s(s), .f(f[3]));
	
endmodule