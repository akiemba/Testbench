`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2026 09:14:12 AM
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input[3:0] a, input[3:0] b, input ci, output[3:0] s, output co);
wire cout[3:0];


/* and g0(g[0], a[0], b[0]);
and g1(g[1], a[1], b[1]);
and g2(g[2], a[2], b[2]);
and g3(g[3], a[3], b[3]);

or p0(p[0], a[0], b[0]);
or p1(p[1], a[1], b[1]);
or p2(p[2], a[2], b[2]);
or p3(p[3], a[3], b[3]);


and c1Product(c0ProductWire, p[1], g[0]);
or c1(ci1, g[1], c0ProductWire);
and c2Product(c1ProductWire, p[2], ci1);
or c2(ci2, g[2], c1ProductWire);
and c3Product(c2ProductWire, p[3], ci2);
or c3(ci3, g[3], c2ProductWire);

and pBlock(pBlockWire, p[3], p[2], p[1], p[0]);
*/


FullAdder first_bit_adder(a[0], b[0], ci, s[0], cout[0]);
FullAdder second_bit_adder(a[1], b[1], cout[0], s[1], cout[1]);
FullAdder third_bit_adder(a[2], b[2], cout[1], s[2], cout[2]);
FullAdder fourth_bit_adder(a[3], b[3], cout[2], s[3], cout[3]);

assign co = cout[3];

endmodule
