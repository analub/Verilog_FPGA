module mulSomador(
						input [1:0] A,B,
						output [6:0] Y, Yab,
						output [6:0] Z
						);
						
wire [3:0] mA, mB, mAB;
						
multiplicador ins_MultA(
								.in_M(A),
								.in_N(A),
								.out(mA)
								);
							
							
multiplicador ins_MultB(
								.in_M(B),
								.in_N(B),
								.out(mB)
								);
							
somador inst_Soma1(
						.in_A(mA),
						.in_B(mB),
						.out(Y)
						);
					

multiplicador ins_MultAB(
								.in_M(A),
								.in_N(B),
								.out(mAB)
								);
							
somador inst_Soma2(
						.in_A(mAB),
						.in_B(mB),
						.out(Yab)
						);
					
somador inst_SomaGeral(
							.in_A(Y),
							.in_B(Yab),
							.out(Z)
							);
								

						
endmodule
