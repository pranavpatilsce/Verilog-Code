//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 06:09:43 PM
// Design Name: 
// Module Name: RightShifter
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


module RightShifter (Ctrl, D_in, D_out);
    input [2:0] Ctrl;
    input [3:0] D_in; 
    output reg [3:0] D_out;
    //reg I;
    
    always @ (*) //Ctrl, D_in) 
        begin
            if(Ctrl == 0) 
                D_out = {D_in[3], D_in[2], D_in[1], D_in[0]};
            else if(Ctrl == 1) 
                D_out = {D_in[3], D_in[2], D_in[1]};
            else if(Ctrl == 2) 
                D_out = {D_in[3], D_in[2]};
            else if(Ctrl == 3) 
                D_out = {D_in[3]};            
            else if(Ctrl == 4) 
                D_out = {0};
            else if(Ctrl == 5) 
                D_out = {D_in[0], D_in[3], D_in[2], D_in[1]};
            else if(Ctrl == 6) 
                D_out = {D_in[1], D_in[0], D_in[3], D_in[2]};
            else D_out = {D_in[2], D_in[1] , D_in[0], D_in[3]};
        end
    
endmodule
    
/*
        begin
            case (Ctrl)
            3'b000: D_out = D_in; // nothing is changed
            3'b001: D_out = D_in >> 1; // shifts right by 1 bit
            3'b010: D_out = D_in >> 2; // shifts right by 2 bits
            3'b011: D_out = D_in >> 3; // shifts right by 3 bits
            3'b100: D_out = D_in >> 4; // shifts right by 4 bits
            3'b101:
                begin
                I = D_in [0];
                {D_in[0], D_out = (D_in >> 1) + {I, 3'b0}; // D_in[3:1]}
                end     // rotates right by 1
                
    3'b110:
    begin
        I = D_in [0];
        {D_in[0], D_out = (D_in >> 2) + (I, 3'b0)}; // D_in[3:1]}
    end     // rotates right by 2
    
    3'b111:
    begin
    I = D_in [0];
    {D_in[0], D_out = (D_in >> 3) + {I, 3'b0}; // D_in[3:1]}
    end     // rotates right by 3
    
    default: D_out = 4'bz;
    endcase end
endmodule


*/