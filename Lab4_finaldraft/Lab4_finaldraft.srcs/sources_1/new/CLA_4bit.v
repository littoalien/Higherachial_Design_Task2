`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:04:31 PM
// Design Name: 
// Module Name: CLA_4bit
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


module CLA_4bit (input [3:0] A, B, input cin,
                 output [3:0] Y, output cout);
                            
    wire [3:0] p;
    wire [3:0] g;
    wire [3:0] C;
    
    Half_Adders u0 (A, B, p, g);
    CLA_gen     u1 (p, g, cin, C, cout);
    sums        u2 (p, C, Y);
    
endmodule

