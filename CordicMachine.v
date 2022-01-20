`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:29 01/19/2022 
// Design Name: 
// Module Name:    CordicMachine 
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
module CordicMachine(
	input clk,
	input [12:0] x_0,
	input [12:0] y_0,
	input [12:0] z_0,
	input [31:0] stage,
	output reg [12:0] x_N,
	output reg [12:0] y_N,
	output reg [12:0] z_N
	 
);
	
	reg [12:0] arctan [12:0];
	
	
	initial begin
	arctan[0] = 13'b0101101000000;
	arctan[1] = 13'b0011010100100;
	arctan[2] = 13'b0001110000010;
	arctan[3] = 13'b0000111001000;
	arctan[4] = 13'b0000011100100;
	arctan[5] = 13'b0000001110010;
	arctan[6] = 13'b0000000111001;
	arctan[7] = 13'b0000000011100;
	arctan[8] = 13'b0000000001110;
	arctan[9] = 13'b0000000000111;
	arctan[10] = 13'b0000000000011;
	arctan[11] = 13'b0000000000001;
	arctan[12] = 13'b0000000000000;
	//arctan[13] = 21'b000000_000000;
	//arctan[14] = 21'b000000_000000;
	//arctan[15] = 21'b000000_000000;
	//arctan[16] = 21'b000000_000000;
	//arctan[17] = 21'b000000_000000;
	//arctan[18] = 21'b000000_000000;
	//arctan[19] = 21'b000000_000000;
	//arctan[20] = 21'b000000_000000;
	end
	
	always @(posedge clk) begin
		
		if (stage != 10) begin
			x_N <= z_0 ? x_0 + (y_0 >>> stage) : x_0 - (y_0 >>> stage);
			y_N <= z_0 ? y_0 + (x_0 >>> stage) : y_0 - (x_0 >>> stage);
			z_N <= z_0 ? z_0 + arctan[stage] : z_0 - arctan[stage];
		end
		
		
		
	end

endmodule
