`timescale 10ns/10ps

module contador_tb ();

reg clk, clr_n;
wire [5:0] out;

initial
begin
	clk = 1'b0;
	clr_n = 1'b0;
	#20 clr_n = 1'b1;
end


always
#5 clk = ~clk;

cont_64 DUT	(
				.clk(clk), 
				.clr_n(clr_n),
				.a(out)
				);

endmodule
