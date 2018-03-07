`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2018 03:17:30 PM
// Design Name: 
// Module Name: adder_tb
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


module adder_tb;
    
    reg [3:0] tb_A;
    reg [3:0] tb_B;
    reg       tb_cin;
    
    wire [3:0] tb_DUT0_Y;
    wire       tb_DUT0_cout;
    
    wire [3:0] tb_DUT1_Y;
    wire       tb_DUT1_cout;
        
    inferred_adder  DUT0 ( .A(tb_A), .B(tb_B), .cin(tb_cin), .Y(tb_DUT0_Y), .cout(tb_DUT0_cout) );
    CLA_4bit        DUT1 ( .A(tb_A), .B(tb_B), .cin(tb_cin), .Y(tb_DUT1_Y), .cout(tb_DUT1_cout) );
    
    reg [4:0] result_DUT0;
    reg [4:0] result_DUT1;
    reg [4:0] expected;
    integer   failures_DUT0 = 0;
    integer   failures_DUT1 = 0;
    
    initial begin
        for (integer a=0; a<16; a=a+1) begin
            for (integer b=0; b<16; b=b+1) begin
                for (integer i=0; i<2; i=i+1) begin
                
                    tb_A = a; tb_B = b;  tb_cin = i; #10
                    
                    expected = a + b + i;                       // used as reference to compare with DUT0
                    result_DUT0 = {tb_DUT0_cout, tb_DUT0_Y};    // used as reference to compare with DUT1
                    result_DUT1 = {tb_DUT1_cout, tb_DUT1_Y};
                    
                    $display("Inputs - a: %4b(%d), b: %4b(%d), cin: %d", a, a, b, b, i);
                    $display("\tinferred_adder - expected: %5b(%d), result: %5b(%d)",expected, expected, result_DUT0, result_DUT0);
                    if (expected === result_DUT0) begin
                        $display("PASSED");
                    end else begin
                        $display("FAILED");
                        failures_DUT0 = failures_DUT0 + 1;
                    end
                    
                    $display("\tCLA_4bit - expected: %5b(%d), result: %5b(%d)",result_DUT0, result_DUT0, result_DUT1, result_DUT1);
                    if (result_DUT0 === result_DUT1) begin 
                        $display("PASSED\n");
                    end else begin
                        $display("FAILED\n");
                        failures_DUT1 = failures_DUT1 + 1;
                    end
                end
            end
        end
        
        $display("Simulation Finished");
        $display("DUT0(inferred_adder) - total failures: %d", failures_DUT0);
        $display("DUT1(CLA_4bit)       - total failures: %d", failures_DUT1);
        $finish;
    end
    
endmodule

