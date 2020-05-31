module counter#(parameter N = 10) (input logic clock, input logic reset, output logic[9:0] Q);
					
						
						
		always_ff @(posedge clock, posedge reset)
			if(reset) Q <= 0;
				else Q <= Q+1;
endmodule				