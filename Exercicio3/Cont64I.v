module Cont64I
					(input clk, clr_n,
					input [5:0] valor,
					output[5:0] a,b,
					input[1:0]operacao
					);
					
Contador inst_Cont64I(
							.clk(clk), 
							.clr_n(clr_n),
							.valor(valor),
							.cont(a),
							.operacao(operacao)
							);
							
Contador inst_Cont64INV(
							.clk(clk), 
							.clr_n(!clr_n),
							.valor(valor),
							.cont(b),
							.operacao(operacao)
							);
														
endmodule
