// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Mon Dec 02 15:16:27 2019"

module Lab_6(
	Clock,
	Reset,
	Blue,
	Green,
	Red,
	Hsync,
	Vsync,
	Blueout,
	Greenout,
	Redout
);


input wire	Clock;
input wire	Reset;
input wire	[3:0] Blue;
input wire	[3:0] Green;
input wire	[3:0] Red;
output wire	Hsync;
output wire	Vsync;
output wire	[3:0] Blueout;
output wire	[3:0] Greenout;
output wire	[3:0] Redout;

wire	SYNTHESIZED_WIRE_0;
wire	[9:0] SYNTHESIZED_WIRE_19;
reg	TFF_inst16;
wire	SYNTHESIZED_WIRE_2;
wire	[9:0] SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_21;
wire	[0:3] SYNTHESIZED_WIRE_11;
reg	TFF_inst;
wire	SYNTHESIZED_WIRE_12;
wire	[0:3] SYNTHESIZED_WIRE_14;
wire	[0:3] SYNTHESIZED_WIRE_16;

assign	Hsync = SYNTHESIZED_WIRE_9;
assign	SYNTHESIZED_WIRE_0 = 1;
assign	SYNTHESIZED_WIRE_8 = 1;
assign	SYNTHESIZED_WIRE_11 = 0;
assign	SYNTHESIZED_WIRE_14 = 0;
assign	SYNTHESIZED_WIRE_16 = 0;




always@(posedge Clock or negedge Reset)
begin
if (!Reset)
	begin
	TFF_inst <= 0;
	end
else
	TFF_inst <= TFF_inst ^ SYNTHESIZED_WIRE_0;
end



comparator3	b2v_inst10(
	.count(SYNTHESIZED_WIRE_19),
	.dtoa(SYNTHESIZED_WIRE_12));
	defparam	b2v_inst10.N = 10;


counter	b2v_inst11(
	.clock(TFF_inst16),
	.reset(SYNTHESIZED_WIRE_2),
	.Q(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst11.N = 10;


comparator4	b2v_inst12(
	.count(SYNTHESIZED_WIRE_20),
	.atob(Vsync));
	defparam	b2v_inst12.N = 10;


comparator5	b2v_inst13(
	.count(SYNTHESIZED_WIRE_20),
	.cin(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst13.N = 10;


comparator6	b2v_inst14(
	.count(SYNTHESIZED_WIRE_20),
	.dtoa(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst14.N = 10;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;


always@(posedge SYNTHESIZED_WIRE_9)
begin
	TFF_inst16 <= TFF_inst16 ^ SYNTHESIZED_WIRE_8;
end



busmux_0	b2v_inst18(
	.sel(SYNTHESIZED_WIRE_21),
	.dataa(SYNTHESIZED_WIRE_11),
	.datab(Green),
	.result(Greenout));


counter	b2v_inst2(
	.clock(TFF_inst),
	.reset(SYNTHESIZED_WIRE_12),
	.Q(SYNTHESIZED_WIRE_19));
	defparam	b2v_inst2.N = 10;


busmux_1	b2v_inst20(
	.sel(SYNTHESIZED_WIRE_21),
	.dataa(SYNTHESIZED_WIRE_14),
	.datab(Red),
	.result(Redout));


busmux_2	b2v_inst21(
	.sel(SYNTHESIZED_WIRE_21),
	.dataa(SYNTHESIZED_WIRE_16),
	.datab(Blue),
	.result(Blueout));


comparator2	b2v_inst4(
	.count(SYNTHESIZED_WIRE_19),
	.cin(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst4.N = 10;


comparator1	b2v_inst5(
	.count(SYNTHESIZED_WIRE_19),
	.atob(SYNTHESIZED_WIRE_9));
	defparam	b2v_inst5.N = 10;





endmodule

module busmux_0(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [3:0] dataa;
input [3:0] datab;
output [3:0] result;

endmodule

module busmux_1(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [3:0] dataa;
input [3:0] datab;
output [3:0] result;

endmodule

module busmux_2(sel,dataa,datab,result);
/* synthesis black_box */

input sel;
input [3:0] dataa;
input [3:0] datab;
output [3:0] result;

endmodule
