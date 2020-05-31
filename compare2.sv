module comparator2#(parameter N = 10) (input logic[9:0] count, output logic cin);


	assign cin = (count >= 144) && (count < 784);
	
	
	
endmodule