`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2018 10:47:49 AM
// Design Name: 
// Module Name: and_or
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


    module and2
    (input [1:0] in, output out);    
        assign out = in[1] & in[0]; 
    endmodule 
    
    module or2 
    (input [1:0] in, output out);    
        assign out = in[1] | in[0]; 
    endmodule 
    
    module and_or
    (input [3:0] in, output out);    
        wire [1:0] sig;    
        
        and2 A1 (in[3:2], sig[1]);    
        and2 A2 (in[1:0], sig[0]);    
        or2  O1 (sig, out); 
    endmodule 
