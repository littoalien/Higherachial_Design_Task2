`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:12:02 PM
// Design Name: 
// Module Name: Half_Adders
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


module Half_Adders(input [3:0] A, B,
                   output [3:0] p, g);

    half_adder u0 (A[0], B[0], p[0], g[0]); 
    half_adder u1 (A[1], B[1], p[1], g[1]);
    half_adder u2 (A[2], B[2], p[2], g[2]);
    half_adder u3 (A[3], B[3], p[3], g[3]);
    
endmodule
