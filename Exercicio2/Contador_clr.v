module Contador_clr(
							input clk, clr_n,
							output reg[5:0] a
							);
							
reg [5:0] cont;

always @ (posedge clk)
begin
	if(clr_n)
		begin
			a <= cont;
			cont <= cont + 6'd1;
		end
	else
		a <= 6'd0;
end

							
endmodule
