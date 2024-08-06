module DecodificadorBin2DecD7S(b0, b1, b2, b3, segmentos);
  // bits do numero
  // b0 b1 b2 b3
  //  ^        ^
  // MSB     LSB
  input b0, b1, b2, b3;
  
  // Cada elemento deste array representa um segmento do
  // digito do display de 7 segmentos
  // Indice 0 = segmento G, 1 = Segmento F
  // e assim sucessivamente ate o 6 (A)
  output [6:0] segmentos;

  wire aPart1, aPart2;
  wire bPart1, bPart2;
  wire dPart1, dPart2, dPart3;
  wire ePart1, ePart2, ePart3;
  wire fPart1, fPart2, fPart3;
  wire gPart1, gPart2;
  
  // Segmento A
  xor Ab1xorb3(aPart1, b1, b3);
  and Aand1(aPart2, ~b0, ~b2);
  and aFinal(segmentos[6], aPart1, aPart2);
  
  // Segmento B
  xor bXor(bPart1, b2, b3);
  and bAnd1(bPart2, ~b0, b1);
  and bFinal(segmentos[5], bPart1, bPart2);
  
  // Segmento C
  and cFinal(segmentos[4], ~b0, ~b1, b2, ~b3);

  // Segmento D
  and Dand1(dPart1, ~b0, ~b1, ~b2, b3);
  and Dand2(dPart2, ~b0, b1, ~b2, ~b3);
  and Dand3(dPart3, ~b0, b1, b2, b3);
  or dFinal(segmentos[3], dPart1, dPart2, dPart3);

  // Segmento E
  and Eand1(ePart1, ~b0, b3);
  and Eand2(ePart2, ~b0, b1, ~b2);
  and Eand3(ePart3, b0, ~b1, ~b2, b3);
  or eFinal(segmentos[2], ePart1, ePart2, ePart3);

  // Segmento F
  and Fand1(fPart1, ~b0, ~b1, b3);
  and Fand2(fPart2, ~b0, ~b1, b2);
  and Fand3(fPart3, ~b0, b2, b3);
  or fFinal(segmentos[1], fPart1, fPart2, fPart3);

  // Segmento G
  and Gand1(gPart1, ~b0, ~b1, ~b2);
  and Gand2(gPart2, ~b0, b1, b2, b3);
  or gFinal(segmentos[0], gPart1, gPart2);

endmodule
