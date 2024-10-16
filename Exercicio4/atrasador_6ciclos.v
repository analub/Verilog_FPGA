module atrasador_6ciclos(input clk,
								input [15:0] in,
								output reg [15:0] out
								);

reg [15:0] a1, a2,a3,a4,a5,a6;

always @ (posedge clk)
begin
		a1 <= in;
		a2 <= a1;
		a3 <= a2;
		a4 <= a3;
		a5 <= a4;
		a6 <= a5;
		out <= a6;
end

endmodule
