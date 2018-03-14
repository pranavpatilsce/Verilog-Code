`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:23:35 PM
// Design Name: 
// Module Name: summation_xor
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


module summation_xor(Cin, Z, X, Summation, Carry);

    input [3:0] Z, X;
    input Cin;
    output [3:0] Summation;
    output Carry;

    assign Summation[0] = Cin ^ X[0];
    assign Summation[1] = Z[0] ^ X[1];
    assign Summation[2] = Z[1] ^ X[2];
    assign Summation[3] = Z[2] ^ X[3];
        
    assign Carry = Z[3];    
endmodule
