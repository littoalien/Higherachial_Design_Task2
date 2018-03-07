`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:05:44 PM
// Design Name: 
// Module Name: inferred_adder
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


module inferred_adder(input [3:0] A, B, input cin,    // cin: carry in
                      output [3:0] Y, output cout);   // cout: carry out
    
    assign {cout, Y} = A + B + cin;
    
endmodule

