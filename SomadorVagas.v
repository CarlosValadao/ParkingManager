module SomadorVagas (V, S);
	// Vagas do estacionamento
   input [7:0] V;
	
	// Soma de todas as vagas
	output [3:0] S;
	
	wire [3:0] s1, s2, s3, s4, s5, s6;
	wire cout1, cout2, cout3, cout4, cout5, cout6, cout7;
	
	Somador4b somador1 (.S(s1), .Cout(cout1), .A(V[7]), .B(V[6]), .Cin(0));
	Somador4b somador2 (.S(s2), .Cout(cout2), .A(V[5]), .B(s1), .Cin(cout1));
	Somador4b somador3 (.S(s3), .Cout(cout3), .A(V[4]), .B(s2), .Cin(cout2));
	Somador4b somador4 (.S(s4), .Cout(cout4), .A(V[3]), .B(s3), .Cin(cout3));
	Somador4b somador5 (.S(s5), .Cout(cout5), .A(V[2]), .B(s4), .Cin(cout4));
	Somador4b somador6 (.S(s6), .Cout(cout6), .A(V[1]), .B(s5), .Cin(cout5));
	Somador4b somador7 (.S(S), .Cout(cout7), .A(V[0]), .B(s6), .Cin(cout6));
	
endmodule
	