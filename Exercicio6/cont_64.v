module cont_64(
					input clk, clr_n,
					output reg[5:0] a
					);
							
always @ (posedge clk)
begin
	if(clr_n)
		begin
			a <= a + 6'd1;
		end
	else
		a <= 6'd0;
end

							
endmodule
