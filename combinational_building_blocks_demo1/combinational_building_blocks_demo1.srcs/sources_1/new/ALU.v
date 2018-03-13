`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 06:41:50 PM
// Design Name: 
// Module Name: ALU
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

module ALU (m, s1, s0, A, B, out, zero, overflow);

input m, s1, s0;
input [3:0] A, B;
output reg [4:0] out;
output reg zero;
output reg overflow;

always @ (m, s1, s0, A, B)
begin
	if (m == 1'b0)                 //logic operation
		case({s1, s0})
			2'b00: out = ~A;        //bitwise negation
			2'b01: out = A & B;  //bitwise AND
			2'b10: out = A ^ B;   //bitwise XOR
			default: out = A | B;  //bitwise OR
		endcase
	else//arithmetic operation
		case({s1, s0})
			2'b00: out = A - 1;     // decrement
			2'b01: out = A + B;   //addition
			2'b10: out = A - B;   //subtraction
			default: out = A + 1;// increment
		endcase

	if(out == 5'bx0000)
		zero = 1'b1; 
	else
		zero = 1'b0;

    if(m == 1 && s1 == 0 && s0 == 1 && A+B > 5'b01111)
        overflow = 1'b1;
	else if (m == 1 && s1 == 1 && s0 == 1 && A+B+1 > 5'b01111) 
        overflow = 1'b1;
    else 
        overflow = 1'b0;
    
        
end
endmodule

