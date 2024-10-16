module Contador
					(input clk, clr_n,
					input [5:0] valor,
					output reg [5:0] cont,
					input[1:0]operacao
					);
					
initial
begin
	cont = 1'd0;
end

					
always @(posedge clk)
begin
		if(!clr_n)
			cont = 6'd0;
		else
			begin
					case(operacao)
						2'b00: cont = cont + 6'd1;
						2'b01: cont = cont - 6'd1;
						2'b10: cont = valor;
						default: cont = cont;
					endcase	 
			end
			
end

endmodule
