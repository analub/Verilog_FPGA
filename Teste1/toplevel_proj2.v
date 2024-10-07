module toplevel_proj2(	
						    input [23:0] in,
							 input clear,
							 input ena_in,
							 output [23:0] out,
							 output [23:0] out2,
							 output ena_out,
							 output ena_out2
							 );

//proj1 inst1(
//			   .ena_in(ena_in),
//				.clr_n(clear),
//			   .in(in),
//			   .out(out),
//			   .ena_out(ena_out)
//			   ); 
				
proj1 inst1(in, clear, ena_in, out, ena_out); 
				
proj1 inst2(
			   .clr_n(clear),
			   .ena_in(ena_in),
			   .in(in),
			   .out(out2),
			   .ena_out(ena_out2)
			   ); 
		
endmodule 