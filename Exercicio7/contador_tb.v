`timescale 10ns/10ps

module contador_tb ();

reg clk, clr_n;
reg [5:0] valor;
reg [1:0] operacao;
wire[5:0] out;

initial
begin
	clk = 1'b0;
	operacao = 2'b00;
	#20 clr_n = 1'b1;
	#20 valor = 6'b100011;
	#40 operacao = 01;
	#80 operacao = 10;
	#110 operacao = 11;
	#160 operacao = 2'b00;

end

//#40 operacao = 01;
//#40 operacao = 01;
//#30 operacao = 10;
//#30 operacao = 11;

always 
#5 clk = ~clk;

Contador DUT
				(
				.clk(clk), 
				.clr_n(clr_n),
				.valor(valor),
				.cont(out),
				.operacao(operacao)
				);

endmodule
