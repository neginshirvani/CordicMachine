`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:45 01/120/2022 
// Design Name: 
// Module Name:    Cordic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Cordic(
	input clk, 
	input [12:0] x_0,
	input [12:0] y_0,
	input [12:0] z_0,
	output [12:0] x_N,
	output [12:0] y_N,
	output [12:0] z_N
);

	wire [12:0] x0, y0, z0;
	wire [12:0] x1, y1, z1;
	wire [12:0] x2, y2, z2;
	wire [12:0] x3, y3, z3;
	wire [12:0] x4, y4, z4;
	wire [12:0] x5, y5, z5;
	wire [12:0] x6, y6, z6;
	wire [12:0] x7, y7, z7;
	wire [12:0] x8, y8, z8;
	wire [12:0] x9, y9, z9;
	//wire [12:0] x10, y10, z10;
	//wire [12:0] x11, y11, z11;
	//wire [12:0] x12, y12, z12;
	//wire [12:0] x13, y13, z13;
	//wire [12:0] x14, y14, z14;
	//wire [12:0] x15, y15, z15;
	//wire [12:0] x16, y16, z16;
	//wire [12:0] x17, y17, z17;
	//wire [12:0] x18, y18, z18;
	//wire [12:0] x19, y19, z19;
	
	
	CordicMachine C1 (.clk(clk), .x_0(x_0), .y_0(y_0), .z_0(z_0), .stage(0), .x_N(x0), .y_N(y0), .z_N(z0));
	CordicMachine C2 (.clk(clk), .x_0(x0), .y_0(y0), .z_0(z0), .stage(1), .x_N(x1), .y_N(y1), .z_N(z1));
	CordicMachine C3 (.clk(clk), .x_0(x1), .y_0(y1), .z_0(z1), .stage(2), .x_N(x2), .y_N(y2), .z_N(z2));
	CordicMachine C4 (.clk(clk), .x_0(x2), .y_0(y2), .z_0(z2), .stage(3), .x_N(x3), .y_N(y3), .z_N(z3));
	CordicMachine C5 (.clk(clk), .x_0(x3), .y_0(y3), .z_0(z3), .stage(4), .x_N(x4), .y_N(y4), .z_N(z4));
	CordicMachine C6 (.clk(clk), .x_0(x4), .y_0(y4), .z_0(z4), .stage(5), .x_N(x5), .y_N(y5), .z_N(z5));
	CordicMachine C7 (.clk(clk), .x_0(x5), .y_0(y5), .z_0(z5), .stage(6), .x_N(x6), .y_N(y6), .z_N(z6));
	CordicMachine C8 (.clk(clk), .x_0(x6), .y_0(y6), .z_0(z6), .stage(7), .x_N(x7), .y_N(y7), .z_N(z7));
	CordicMachine C9 (.clk(clk), .x_0(x7), .y_0(y7), .z_0(z7), .stage(8), .x_N(x8), .y_N(y8), .z_N(z8));
	CordicMachine C10 (.clk(clk), .x_0(x8), .y_0(y8), .z_0(z8), .stage(9), .x_N(x9), .y_N(y9), .z_N(z9));
	//CordicMachine C11 (.clk(clk), .x_0(x9), .y_0(y9), .z_0(z9), .stage(10), .x_N(x10), .y_N(y10), .z_N(z10));
	//CordicMachine C12 (.clk(clk), .x_0(x10), .y_0(y10), .z_0(z10), .stage(11), .x_N(x11), .y_N(y11), .z_N(z11));
	//CordicMachine C13 (.clk(clk), .x_0(x11), .y_0(y11), .z_0(z11), .stage(12), .x_N(x12), .y_N(y12), .z_N(z12));
	//CordicMachine C14 (.clk(clk), .x_0(x12), .y_0(y12), .z_0(z12), .stage(13), .x_N(x13), .y_N(y13), .z_N(z13));
	//CordicMachine C15 (.clk(clk), .x_0(x13), .y_0(y13), .z_0(z13), .stage(14), .x_N(x14), .y_N(y14), .z_N(z14));
	//CordicMachine C16 (.clk(clk), .x_0(x14), .y_0(y14), .z_0(z14), .stage(15), .x_N(x15), .y_N(y15), .z_N(z15));
	//CordicMachine C17 (.clk(clk), .x_0(x15), .y_0(y15), .z_0(z15), .stage(16), .x_N(x16), .y_N(y16), .z_N(z16));
	//CordicMachine C18 (.clk(clk), .x_0(x16), .y_0(y16), .z_0(z16), .stage(17), .x_N(x17), .y_N(y17), .z_N(z17));
	//CordicMachine C19 (.clk(clk), .x_0(x17), .y_0(y17), .z_0(z17), .stage(18), .x_N(x18), .y_N(y18), .z_N(z18));
	//CordicMachine C20 (.clk(clk), .x_0(x18), .y_0(y18), .z_0(z18), .stage(19), .x_N(x19), .y_N(y19), .z_N(z19));
	
	
	assign x_N = x9;
	assign y_N = y9;
	assign z_N = z9;
	 
	


	
endmodule
