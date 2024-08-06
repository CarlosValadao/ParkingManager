module MUX_basico_2x1 (a, b, s, f);
	input a, b, s;
	output f;
	
	wire w1, w2, w3;
	
	not not1 (w1, s);
	and and1 (w2, b, s);
	and and2 (w3, a, w1);
	or or1 (f, w2, w3);
	
endmodule