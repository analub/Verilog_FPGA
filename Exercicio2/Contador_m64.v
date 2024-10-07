module Contador_m64(
							input clk, 
							output reg[5:0] a
							);
							
reg [5:0] cont;

always @ (posedge clk)
begin
	a <= cont;
	cont <= cont + 6'd1;

end

							
endmodule
