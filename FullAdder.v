`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2026 09:10:38 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input ci, output s, output co);
wire a_and_b;
wire a_and_ci; 
wire b_and_ci;

 and ab_and(a_and_b, a, b);
 and aci_and(a_and_ci, a, ci);
 and bci_and(b_and_ci, b, ci);
 
 or final_or(co, a_and_b, a_and_ci, b_and_ci);
 
 xor final_xor(s, a, b, ci);  
endmodule