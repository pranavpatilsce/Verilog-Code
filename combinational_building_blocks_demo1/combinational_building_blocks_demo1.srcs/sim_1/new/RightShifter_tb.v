`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 06:22:41 PM
// Design Name: 
// Module Name: RightShifter_tb
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


module RightShifter_tb;

    reg [2:0] Ctrl;
    reg [3:0] D_in;
    wire [3:0] D_out;
    reg [7:0] control;
    
    integer N =0;
    integer I =0;

    initial begin
    
    for(N =0; N<8; N=N+1)
        
        begin
            Ctrl = N;        
            for(I=0; I<16; I=I+1)
                begin
                    
                    D_in = I;
                    
                    #5
                    
                    case(Ctrl)
                        0: if(D_in != D_out)        $display("CTRL =0");    
                        1: if(D_in == 4'b0)         $display("CTRL =1");
                        2: if(D_in == 4'b00)        $display("CTRL =2");
                        3: if(D_in == 4'b000)       $display("CTRL =3");
                        4: if(D_in == 4'b0000)      $display("CTRL =4");
                        5: if(D_in == D_in[0])        $display("CTRL =5");
                        6: if(D_in == D_in[1])        $display("CTRL =6");
                        7: if(D_in == D_in[2])        $display("CTRL =7");
                    endcase
                    
                end
        end
    $finish;
    end
endmodule
    /*
    D_in = 3'b000;
    #20;
    D_in = 3'b001;
    #20;
    D_in = 3'b010;
    #20;
    D_in = 3'b011; 
    #20;
    D_in = 3'b100; 
    #20;
    D_in = 3'b101; 
    #20;
    D_in = 3'b110; 
    #20;
    D_in = 3'b111;
    #20;
    
    $display("Simulation Finished",);
    $finish;
    
    end

endmodule // main
*/