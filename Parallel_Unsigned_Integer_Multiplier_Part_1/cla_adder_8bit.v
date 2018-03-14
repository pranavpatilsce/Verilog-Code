`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:54:01 PM
// Design Name: 
// Module Name: cla_adder_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cla_adder_8bit(A, B, Cin, Summation, Cout);

	input [7:0] A, B;
	input Cin;
	output Cout;
	output [7:0] Summation;
	wire Carry;
	
	cla_adder one (A[3:0], B[3:0], Cin, Summation[3:0], Carry);
	cla_adder two (A[7:4], B[7:4], Carry, Summation[7:4], Cout);
endmodule	

