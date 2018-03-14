`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:36:03 PM
// Design Name: 
// Module Name: cla_adder
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


module cla_adder(A, B, Cin, Summation, Cout);

    input [3:0] A, B;
    input Cin;
    output Cout;
    output [3:0] Summation;
    
    wire [3:0] X, Y, Carry;
    
    half_adder_4bit one (A, B, X, Y);
    cla_gen two (X, Y, Cin, Carry);
    summation_xor three (Cin, Carry, X, Summation, Cout);
    
endmodule
