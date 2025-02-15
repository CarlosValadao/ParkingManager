module FF_JK (clk, J, K, Q);
	input clk, J, K;
	output reg Q;
	
	initial begin
	Q = 1'b0;
	end
	
	always @ (negedge clk) begin
		case ({J,K})
			2'b00: Q <= Q;
			2'b01: Q <= 0;
			2'b10: Q <= 1;
			2'b11: Q <= ~Q;
		endcase
	end
	
endmodule
	