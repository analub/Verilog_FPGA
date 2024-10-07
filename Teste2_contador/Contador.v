module Contador(
					input clk, input clr_n, 
//					input [5:0] in,
					output reg [5:0] out,
					output [5:0] out2);
					
reg [5:0] cont; 


always @ (posedge clk or negedge clr_n)
begin
//	if (clr_n)
//	begin
//		out <= cont;
//		cont <= cont + 6'd1;
//	end
//	else
//	begin
//		cont <= 6'd0;
//		out <= 6'd0;
//	end

	if (clr_n == 1'b0)
	begin
		cont <= 6'd0;
		out <= 6'd0;
	end
	else 
	begin
		out <= cont;
		cont <= cont + 6'd1;
	end

end

assign out2 = cont;

endmodule
	