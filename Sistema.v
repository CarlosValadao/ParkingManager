module Sistema (vagasEstacionamento, CLK, digitoD7S, numeroD7S, pontoD7S, colunaMatrizLEDS, linhaMatrizLEDS, linhaMatrizLEDSOff);
	// Vagas do estacionamento
	input [7:0] vagasEstacionamento;
	
	// Clock
	input CLK;
	
	// Digitos do display de 7 segmentos (D7S)
	output [3:0] digitoD7S;
	
	// O numero, decodificado, que sera mostrado no respectivo digito do display
	// Cada indice desse array representa um segmento do D7S
	output [6:0] numeroD7S;
	
	output pontoD7S;
	
	output [1:0] colunaMatrizLEDS;
	output [3:0] linhaMatrizLEDS;
	output [2:0] linhaMatrizLEDSOff;
	
	// Frequencias do divisor de frequencia
	// S1 = 190.734863281 Hz
	// S2 = 95,367431641 Hz
	wire S1, S2;
	
	// Vagas do estacionamento com os bits invertidos
	wire [7:0] notVagasEstacionamento;
	
	// Total de vagas ocupadas e livres, do estacionamento
	wire [3:0] totalVagasOcupadas, totalVagasLivres;
	
	// Numero decodificado, de binario para decimal, do total de vagas
	// livres e ocupadas, respectivamente, do estacionamento
	// Cada indice destes arrays representa um segmento do D7S
	wire [6:0] numeroOcupadasD7S, numeroLivresD7S;
	
	Inversor8b InversorVagas (.A(vagasEstacionamento), .notA(notVagasEstacionamento));
	
	DivisorFrequencia DivisorFreq (.clk(CLK), .Q18(S1), .Q19(S2));
	
	SomadorVagas SomadorVagasOcupadas (.V(vagasEstacionamento), .S(totalVagasOcupadas));
	SomadorVagas SomadorVagasLivres (.V(notVagasEstacionamento), .S(totalVagasLivres));
	
	// Decodifica a quantidade de vagas ocupadas, de binario para decimal
	DecodificadorBin2DecD7S DecodificadorVagasOcupadas (.b0(totalVagasOcupadas[3]), .b1(totalVagasOcupadas[2]), .b2(totalVagasOcupadas[1]), .b3(totalVagasOcupadas[0]), .segmentos(numeroOcupadasD7S));
	
	// Decodifica a quantidade de vagas livres, de binario para decimal
	DecodificadorBin2DecD7S DecodificadorVagasLivres (.b0(totalVagasLivres[3]), .b1(totalVagasLivres[2]), .b2(totalVagasLivres[1]), .b3(totalVagasLivres[0]), .segmentos(numeroLivresD7S));
	
	// Seleciona qual digito do display esta ligado
	MUX_quadruplo_4x1 MuxDigitoD7S(.a(4'b0111), .b(4'b1011), .c(4'b1101), .d(4'b1110), .s0(S2), .s1(S1), .f(digitoD7S));
	
	// Seleciona qual numero decodificado sera mostrado no display anteriormente ligado
	MUX_7b_4x1 MuxNumeroDecodificadoD7S(.a(7'b0110000), .b(numeroLivresD7S), .c(7'b0111000), .d(numeroOcupadasD7S), .s0(S2), .s1(S1), .f(numeroD7S));
	
	// Selecina qual coluna esta ligada
	MUX_duplo_2x1 MuxColunaMatrizLEDS(.a(2'b10), .b(2'b01), .s(S2), .f(colunaMatrizLEDS));
	
	// Seleciona qual linha da coluna, anteriormente selecionada, esta ligada
	MUX_quadruplo_2x1 MuxLinhaMatrizLEDS(.a({notVagasEstacionamento[7],notVagasEstacionamento[5],notVagasEstacionamento[3], notVagasEstacionamento[1]}), .b({notVagasEstacionamento[6],notVagasEstacionamento[4],notVagasEstacionamento[2], notVagasEstacionamento[0]}), .s(S2), .f(linhaMatrizLEDS));
		
	// Desliga as linhas 4, 5 e 6 da matriz de LEDS
	assign linhaMatrizLEDSOff = 3'b111;
	
	// Desliga o ponto do display de 7 segmentos
	assign pontoD7S = 1'b1;

endmodule
