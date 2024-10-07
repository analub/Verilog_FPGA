module top_Cont64(
						input clk, clr_n, clr_n1,
						output[5:0] out, out1,
						output[6:0] soma);

Contador_clr inst_contador(
									.clk(clk),
									.clr_n(clr_n),
									.a(out)
									);
									
Contador_clr inst_contador1(
									.clk(clk),
									.clr_n(clr_n1),
									.a(out1)
									);
									
//Contador_clr inst_contador1(
//									.clk(clk),
//									.clr_n(!clr_n),
//									.a(out1)
//									);
									
somador_7b inst_soma(
							.in_c1(out),
							.in_c2(out1),
							.out(soma)
						);
						
endmodule
