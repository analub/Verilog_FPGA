`timescale 10ns/10ps

module conversor_tb ();

reg clk = 1'b0;
reg clr_n,ena_in;
reg [5:0] in;
wire out, ena_out;

//initial 
//begin
//	clk = 1'b0;
//	forever 
//	begin
//		#20 clk = ~clk;
//	end
//end

always 
#5 clk = ~clk;

initial
begin
	repeat(2000)
	begin
		#10 ena_in = 1'b0;
		#50 begin
				ena_in = 1'b1;
				in = $random;
			 end
	end

end

initial
begin
	clr_n = 1'b0;
	#10 clr_n=1'b1;
end

 paraleloSerie DUT (
							.clk(clk),
							.clr_n(clr_n),
							.ena_in(ena_in),
							.in(in),
							.out(out),
							.ena_out(ena_out)
						  );
									

endmodule
