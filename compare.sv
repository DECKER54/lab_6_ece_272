module comparator1#(parameter N = 10) (input logic[9:0] count, output logic atob);


	assign atob = (count  > 95);
	
endmodule