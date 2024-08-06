module MUX_7b_4x1(a, b, c, d, s0, s1, f);
	input [6:0] a, b, c, d;
	input s0, s1;
	output [6:0] f;
	
	MUX_basico_4x1 MUX_basico_4x1_0(.a(a[0]), .b(b[0]), .c(c[0]), .d(d[0]), .s0(s0), .s1(s1), .f(f[0]));
	MUX_basico_4x1 MUX_basico_4x1_1(.a(a[1]), .b(b[1]), .c(c[1]), .d(d[1]), .s0(s0), .s1(s1), .f(f[1]));
	MUX_basico_4x1 MUX_basico_4x1_2(.a(a[2]), .b(b[2]), .c(c[2]), .d(d[2]), .s0(s0), .s1(s1), .f(f[2]));
	MUX_basico_4x1 MUX_basico_4x1_3(.a(a[3]), .b(b[3]), .c(c[3]), .d(d[3]), .s0(s0), .s1(s1), .f(f[3]));
	MUX_basico_4x1 MUX_basico_4x1_4(.a(a[4]), .b(b[4]), .c(c[4]), .d(d[4]), .s0(s0), .s1(s1), .f(f[4]));
	MUX_basico_4x1 MUX_basico_4x1_5(.a(a[5]), .b(b[5]), .c(c[5]), .d(d[5]), .s0(s0), .s1(s1), .f(f[5]));
	MUX_basico_4x1 MUX_basico_4x1_6(.a(a[6]), .b(b[6]), .c(c[6]), .d(d[6]), .s0(s0), .s1(s1), .f(f[6]));
endmodule