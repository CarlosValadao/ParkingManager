module Inversor8b(A, notA);
	// Array cujo os bits serao negados
	input [7:0] A;
	
	// Array com os bits negados
	output [7:0] notA;

	not notCH7 (notA[7], A[7]); 
	not notCH6 (notA[6], A[6]); 
	not notCH5 (notA[5], A[5]); 
	not notCH4 (notA[4], A[4]); 
	not notCH3 (notA[3], A[3]); 
	not notCH2 (notA[2], A[2]); 
	not notCH1 (notA[1], A[1]); 
	not notCH0 (notA[0], A[0]);
	
endmodule