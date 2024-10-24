`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 19:37:05
// Design Name: 
// Module Name: HCF_calculator_tb
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


module HCF_calculator_tb();
reg clk=0;
reg[15:0] num1;
reg[15:0] num2;
wire[15:0] out;
HCF_calculator dut(clk,num1,num2,out);

initial
    begin
    num1=598;
    num2=874;
    end
       
 always
    #5 clk=~clk;
        
endmodule
