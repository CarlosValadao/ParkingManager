module MUX_duplo_2x1(a, b, s, f);
	input [1:0] a, b;
	input s;
	output [1:0] f;

	MUX_basico_2x1 MUX_basico_2x1_0(.a(a[0]), .b(b[0]), .s(s), .f(f[0]));
	MUX_basico_2x1 MUX_basico_2x1_1(.a(a[1]), .b(b[1]), .s(s), .f(f[1]));
	
endmodule