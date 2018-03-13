`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2018 08:20:15 PM
// Design Name: 
// Module Name: priority_encoder_tb
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

//`timescale 1ns / 1ps


module ENC8_3_tb;

integer N;   
reg [7:0] stimuli;
wire[2:0] X;
wire[2:0] Y;
wire[2:0] Z;
wire validX, validY, validZ;

FOR_ENC8_3 DUT1 (stimuli, X, validX);
CASEX_ENC8_3 DUT2 (stimuli, Y, validY);
IF_ENC8_3 DUT3 (stimuli, Z, validZ);

  initial begin
    for(N = 0; N < 256; N = N + 1)
    begin
        stimuli = N; #2;
        if(stimuli[7])
            begin
                if(X!=7) $display("Error, 7 X"); 
                if(Y!=7) $display("Error, 7 Y");
                if(Z!=7) $display("Error, 7 Z");
            end
        else if(stimuli[6])
            begin
                if(X!=6) $display("Error, 6 X"); 
                if(Y!=6) $display("Error, 6 Y");
                if(Z!=6) $display("Error, 6 Z");
            end
        else if(stimuli[5])
            begin
                if(X!=5) $display("Error, 5 X"); 
                if(Y!=5) $display("Error, 5 Y");
                if(Z!=5) $display("Error, 5 Z");
            end
        else if(stimuli[4])
            begin
                if(X!=4) $display("Error, 4 X"); 
                if(Y!=4) $display("Error, 4 Y");
                if(Z!=4) $display("Error, 4 Z");
            end
        else if (stimuli[3])
            begin
                if(X!=3) $display("Error, 3 X"); 
                if(Y!=3) $display("Error, 3 Y");
                if(Z!=3) $display("Error, 3 Z");
            end
        else if (stimuli[2])
            begin
                if(X!=2) $display("Error, 2 X"); 
                if(Y!=2) $display("Error, 2 Y");
                if(Z!=2) $display("Error, 2 Z");
            end
        else if (stimuli[1])
            begin
                if(X!=1) $display("Error, 1 X"); 
                if(Y!=1) $display("Error, 1 Y");
                if(Z!=1) $display("Error, 1 Z");
            end
        else if (stimuli[0])
            begin
                if(X!=0) $display("Error, 0 X"); 
                if(Y!=0) $display("Error, 0 Y");
                if(Z!=0) $display("Error, 0 Z");
            end
        else if (stimuli==0)
            begin
                if(validX) $display("Error of X"); 
                if(validY) $display("Error of Y");
                if(validZ) $display("Error of Z");
            end                                    
    end
    $finish;
  end
endmodule