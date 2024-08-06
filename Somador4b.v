module Somador4b (S, Cout, A, B, Cin);
   input [3:0] A, B;
	input Cin;
   output [3:0] S;
	output Cout;
   wire T1, T2, T3;

	SomadorCompleto s1b1 (.S(S[0]), .Cout(T1), .A(A[0]), .B(B[0]), .Cin(Cin));
	SomadorCompleto s1b2 (.S(S[1]), .Cout(T2), .A(A[1]), .B(B[1]), .Cin(T1));
	SomadorCompleto s1b3 (.S(S[2]), .Cout(T3), .A(A[2]), .B(B[2]), .Cin(T2));
	SomadorCompleto s1b4 (.S(S[3]), .Cout(Cout), .A(A[3]), .B(B[3]), .Cin(T3));
	
endmodule
