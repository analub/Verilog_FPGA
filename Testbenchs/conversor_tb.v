//escala de tempo
`timescale 1ns/10ps

//modulo testbench
module conversor_tb ();

//variaveis necessárias
reg clk, clr_n, ena_in;
reg [5:0] in;
wire out, ena_out;

//gerando clk
initial
begin
	clk = 1'b0;
	forever
	begin
		#10 clk = ~clk;
	end
end


//instancia do DUT
paraleloserie DUT	(
						.clk(), 
						.clr_n(), 
						.ena_in(),
						.in(),
						.out(), 
						.ena_out()
						);

endmodule
