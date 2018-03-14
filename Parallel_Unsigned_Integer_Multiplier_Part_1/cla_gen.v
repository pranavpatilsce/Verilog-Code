`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 05:20:48 PM
// Design Name: 
// Module Name: cla_gen
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


module cla_gen(X, Y, Cin, Z);

    input [3:0] X, Y;
    input Cin;
    output wire [3:0] Z;
    
    assign Z[0] = Y[0] | (X[0] & Cin);
    assign Z[1] = Y[1] | (X[1] & (Y[0] | (X[0] & Cin)));    
    assign Z[2] = Y[2] | (X[2] & (Y[1] | (X[1] & (Y[0] | (X[0] & Cin)))));
    assign Z[3] = Y[3] | (X[3] & (Y[2] | (X[2] & (Y[1] | (X[1] & (Y[0] | (X[0] & Cin)))))));
    
endmodule
