`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2026 08:11:05 AM
// Design Name: 
// Module Name: alu
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


module alu(input [31:0]A, [31:0]B, [3:0]AluOP, output reg [31:0]Y, reg [0:0]zero);
wire [31:0]addOut;
wire co;
wire [31:0]B_mux;
wire cin_mux;

//sub

assign B_mux = (AluOP == 4'b0010) ? ~B : B;
assign cin_mux = (AluOP == 4'b0010) ? 1'b1 : 1'b0;



 ThirtyTwoBitAdder add(A, B_mux, cin_mux, addOut, co);
 


always @(*) begin
    case(AluOP)
   4'b0000: Y = addOut;
   
   4'b0010: Y = addOut;
   
   4'b0100: Y = A & B;
   4'b0101: Y = A | B;
   4'b0110: Y = A ^ B;
   4'b0111: Y = ~(A | B);
   
   4'b1010: Y = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0;
   default: Y = 32'b0;
    endcase
    
  if(Y == 32'b0)
    zero = 1'b1;
  else
    zero = 1'b0;  
  
end

endmodule
