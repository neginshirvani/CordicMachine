`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:36:01 01/12/2022
// Design Name:   Cordic
// Module Name:   C:/Users/lenovo/Documents/CordicMachine/CordicMachine/Cordic_tb.v
// Project Name:  CordicMachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Cordic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Cordic_tb;

	// Inputs
	reg clk;
	reg [12:0] x_0;
	reg [12:0] y_0;
	reg [12:0] z_0;

	// Outputs
	wire [12:0] x_N;
	wire [12:0] y_N;
	wire [12:0] z_N;

	// Instantiate the Unit Under Test (UUT)
	Cordic uut (
		.clk(clk), 
		.x_0(x_0), 
		.y_0(y_0), 
		.z_0(z_0), 
		.x_N(x_N), 
		.y_N(y_N), 
		.z_N(z_N)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		x_0 = 0;
		y_0 = 0;
		z_0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		x_0 = 1;
		y_0 = 0;
		z_0 = 13'b0111100000000;
        
		// Add stimulus here

	end
		
	always #50 clk = ~clk;
	
endmodule

