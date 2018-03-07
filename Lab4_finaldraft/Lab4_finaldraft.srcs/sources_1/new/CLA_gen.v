`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:09:35 PM
// Design Name: 
// Module Name: CLA_gen
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


module CLA_gen(input [3:0] p, g, input cin,
               output [3:0] C, output cout);
   
    assign C[0] = cin;
    assign C[1] = g[0] | p[0] & cin;
    assign C[2] = g[1] | p[1] & (g[0] | p[0] & cin);
    assign C[3] = g[2] | p[2] & (g[1] | p[1] & (g[0] | p[0] & cin));
    assign cout = g[3] | p[3] & (g[2] | p[2] & (g[1] | p[1] & (g[0] | p[0] & cin)));
    
endmodule
