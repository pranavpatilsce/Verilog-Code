`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 06:03:21 PM
// Design Name: 
// Module Name: multiply
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


module multiply(input [3:0] A, B, output [7:0] Multiplied_Product);

	wire [3:0] Partial_Product_One, Partial_Product_Two, Partial_Product_Three, Partial_Product_Four; 
	wire [7:0] Summation_One, Summation_Two;
	wire carryout1, carryout2, carryout3;
	
	partial_product one (A[3:0], B[0], Partial_Product_One);
	partial_product two (A[3:0], B[1], Partial_Product_Two);
	partial_product three (A[3:0], B[2], Partial_Product_Three);
	partial_product four (A[3:0], B[3], Partial_Product_Four);
    
	cla_adder_8bit Step_A ({4'b0, Partial_Product_One}, {3'b0, Partial_Product_Two, 1'b0}, 1'b0, Summation_One, carryout1);
	
	cla_adder_8bit Step_B ({2'b0, Partial_Product_Three, 2'b0}, {1'b0, Partial_Product_Four, 3'b0}, 1'b0, Summation_Two, carryout2);

	cla_adder_8bit Step_C (Summation_One, Summation_Two, 1'b0, Multiplied_Product, carryout3);
	
endmodule
