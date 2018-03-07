`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:12:47 PM
// Design Name: 
// Module Name: digit_display
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


module digit_display(input [4:0] A,
                     output [7:0] s1, s0);   // LEDSEL for displaying digits on 7seg

    wire [3:0] a1, a0; // represents A in two digits if A > 9
    
    digit_split u0 (A, a1, a0);
    bcd_to_7seg u1 (a1, s1);
    bcd_to_7seg u2 (a0, s0);
    
endmodule
