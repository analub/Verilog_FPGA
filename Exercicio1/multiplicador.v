module multiplicador(
							input [1:0] in_M, in_N,
							output wire [3:0] out);

assign out = in_M*in_N;
		
endmodule

//numeros distintos de 2bits