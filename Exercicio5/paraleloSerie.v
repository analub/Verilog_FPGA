module paraleloSerie (
							input clk,clr_n,ena_in,
							input [5:0] in,
							output reg out, ena_out = 1'b0
							);
							
reg[2:0] cnt = 3'b0;
reg start = 1'b0;

always @ (posedge clk)
begin
	if (~clr_n)
	begin
		start <= 1'b0;
	end

	else
	begin
		start <= (ena_in == 1'b1)? 1'b1 : start;
		if (start | ena_in) cnt <= (cnt == 3'd5)? 1'd0 : cnt + 3'd1;
		out <= in[cnt];
		ena_out <= ena_in;
	end
end

endmodule
