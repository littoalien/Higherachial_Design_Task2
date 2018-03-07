`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:03:27 PM
// Design Name: 
// Module Name: CLA_4bit_fpga
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


module CLA_4bit_fpga
(input [3:0] A, B, input cin, clk100MHz, rst,
 output [7:0] LEDOUT, LEDSEL);
 
    supply1 [7:0] vcc;
    wire          DONT_USE, clk_5KHz;
    wire [7:0]    sA1, sA0,         // LEDSEL for each digit for A, B, Y and cin
                  sB1, sB0, 
                  sY1, sY0, 
                  sCin;
    wire [3:0] Y;
    wire cout;
    
    CLA_4bit    CLA (A, B, cin, Y, cout);
    
    clk_gen     CLK (clk100MHz, rst, DONT_USE, clk_5KHz);
    
    digit_display u0 ({0,A},     sA1, sA0);
    digit_display u1 ({0,B},     sB1, sB0);
    digit_display u2 ({cout, Y}, sY1, sY0);
    bcd_to_7seg   u3 (cin, sCin);
    
    led_mux     LED (clk_5KHz, rst, sA1, sA0, sB1, sB0, sCin, vcc, sY1, sY0, LEDSEL, LEDOUT);

endmodule
