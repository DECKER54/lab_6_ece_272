module comparator5#(parameter N = 10) (input logic[9:0] count, output logic cin);


	assign cin = (count >= 35) && (count < 515);
	
	
	
endmodule