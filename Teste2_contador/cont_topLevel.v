module cont_topLevel (input clk, input clr_n, 
							output [5:0] out, out2);

Contador inst_cont(
						.clk(clk), 
						.clr_n(clr_n), 
						.out(out),
						.out2(out2)
						);
					
endmodule
