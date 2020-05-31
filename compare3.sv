module comparator3#(parameter N = 10) (input logic[9:0] count, output logic dtoa);


	assign dtoa = (count  > 799);
	
endmodule