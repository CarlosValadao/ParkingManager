module DivisorFrequencia (clk, Q18, Q19);
	// clock
	input clk;
	// Respectivas saidas
	// Q18 = 190.734863281 Hz
	// Q19 = 95,367431641  Hz
	output Q18, Q19;

	wire Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17;
	
	FF_JK FF_JK1 (.clk(clk), .J(1), .K(1), .Q(Q1));
	FF_JK FF_JK2 (.clk(Q1), .J(1), .K(1), .Q(Q2));
	FF_JK FF_JK3 (.clk(Q2), .J(1), .K(1), .Q(Q3));
	FF_JK FF_JK4 (.clk(Q3), .J(1), .K(1), .Q(Q4));
	FF_JK FF_JK5 (.clk(Q4), .J(1), .K(1), .Q(Q5));
	FF_JK FF_JK6 (.clk(Q5), .J(1), .K(1), .Q(Q6));
	FF_JK FF_JK7 (.clk(Q6), .J(1), .K(1), .Q(Q7));
	FF_JK FF_JK8 (.clk(Q7), .J(1), .K(1), .Q(Q8));
	FF_JK FF_JK9 (.clk(Q8), .J(1), .K(1), .Q(Q9));
	FF_JK FF_JK10 (.clk(Q9), .J(1), .K(1), .Q(Q10));
	FF_JK FF_JK11 (.clk(Q10), .J(1), .K(1), .Q(Q11));
	FF_JK FF_JK12 (.clk(Q11), .J(1), .K(1), .Q(Q12));
	FF_JK FF_JK13 (.clk(Q12), .J(1), .K(1), .Q(Q13));
	FF_JK FF_JK14 (.clk(Q13), .J(1), .K(1), .Q(Q14));
	FF_JK FF_JK15 (.clk(Q14), .J(1), .K(1), .Q(Q15));
	FF_JK FF_JK16 (.clk(Q15), .J(1), .K(1), .Q(Q16));
	FF_JK FF_JK17 (.clk(Q16), .J(1), .K(1), .Q(Q17));
	FF_JK FF_JK18 (.clk(Q17), .J(1), .K(1), .Q(Q18));
	FF_JK FF_JK19 (.clk(Q18), .J(1), .K(1), .Q(Q19));
	
endmodule
	