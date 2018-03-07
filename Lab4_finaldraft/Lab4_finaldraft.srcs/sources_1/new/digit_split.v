`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:13:40 PM
// Design Name: 
// Module Name: digit_split
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


module digit_split(input [4:0] A,
                   output reg [3:0] Y1, Y0);
 
    integer i;
    always@(A) begin
        if (A > 29)      begin   Y1 = 3; Y0 = A - 30; end
        else if (A > 19) begin   Y1 = 2; Y0 = A - 20; end
        else if (A > 9)  begin   Y1 = 1; Y0 = A - 10; end
        else             begin   Y1 = 0; Y0 = A;      end
    end
    
endmodule
