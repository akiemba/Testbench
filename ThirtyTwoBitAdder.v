`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2026 09:10:38 AM
// Design Name: 
// Module Name: ThirtyTwoBitAdder
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


module ThirtyTwoBitAdder(input [31:0]a, [31:0]b, input ci, output [31:0]s, output co);
wire [7:0] cout;

FourBitAdder first(a[3:0], b[3:0], ci, s[3:0], cout[0]);
FourBitAdder second(a[7:4], b[7:4], cout[0], s[7:4], cout[1]);
FourBitAdder third(a[11:8], b[11:8], cout[1], s[11:8], cout[2]);
FourBitAdder fourth(a[15:12], b[15:12], cout[2], s[15:12], cout[3]);
FourBitAdder fifth(a[19:16], b[19:16], cout[3], s[19:16], cout[4]);
FourBitAdder sixth(a[23:20], b[23:20], cout[4], s[23:20], cout[5]);
FourBitAdder seventh(a[27:24], b[27:24], cout[5], s[27:24], cout[6]);
FourBitAdder eigth(a[31:28], b[31:28], cout[6], s[31:28], cout[7]);

assign co = cout[7];

endmodule
