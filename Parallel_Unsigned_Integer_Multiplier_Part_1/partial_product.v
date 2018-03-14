`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:58:15 PM
// Design Name: 
// Module Name: partial_product
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

module partial_product (A, B, Partial_Product);
	input [3:0] A;
	input B;
	
	output [3:0] Partial_Product;
	
	assign Partial_Product[0] = A[0]& B;
	assign Partial_Product[1] = A[1]& B;
	assign Partial_Product[2] = A[2]& B;
	assign Partial_Product[3] = A[3]& B;
	
endmodule

