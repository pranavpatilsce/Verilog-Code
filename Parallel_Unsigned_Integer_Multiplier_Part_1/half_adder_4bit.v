`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:18:34 PM
// Design Name: 
// Module Name: half_adder_4bit
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


module half_adder_4bit(A, B, X, Y);

    input [3:0] A, B;
    output [3:0] X, Y;    

    `timescale 1ns / 1ps
    
   half_adder HA0(A[0], B[0], X[0], Y[0]);
   half_adder HA1(A[1], B[1], X[1], Y[1]);
   half_adder HA2(A[2], B[2], X[2], Y[2]);
   half_adder HA3(A[3], B[3], X[3], Y[3]);

endmodule
