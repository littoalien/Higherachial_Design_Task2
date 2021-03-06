`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:15:37 PM
// Design Name: 
// Module Name: bcd_to_7seg
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


module bcd_to_7seg
(input [3:0] BCD, output reg [7:0] s);

    always@(BCD) begin
        casex (BCD)
            0:       s = 8'b 10001000;    
            1:       s = 8'b 11101101;    
            2:       s = 8'b 10100010;    
            3:       s = 8'b 10100100;    
            4:       s = 8'b 11000101;    
            5:       s = 8'b 10010100;    
            6:       s = 8'b 10010000;    
            7:       s = 8'b 10101101;    
            8:       s = 8'b 10000000;    
            9:       s = 8'b 10000100;    
            default: s = 8'b 01111111; 
        endcase
    end
endmodule
