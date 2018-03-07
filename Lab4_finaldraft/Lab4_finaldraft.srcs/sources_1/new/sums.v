`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:06:42 PM
// Design Name: 
// Module Name: sums
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


module sums(input [3:0] p, [3:0] C,
            output [3:0] Y);
            
    assign Y[0] = C[0] ^ p[0];
    assign Y[1] = C[1] ^ p[1];
    assign Y[2] = C[2] ^ p[2];
    assign Y[3] = C[3] ^ p[3];
    
endmodule
