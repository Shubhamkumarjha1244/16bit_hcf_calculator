`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 19:09:01
// Design Name: 
// Module Name: HCF_calculator
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


module HCF_calculator(clk,num1,num2,out);
input clk;
input[15:0] num1;
input[15:0] num2;
output reg [15:0] out;
reg[15:0] num1_reg,num2_reg;

    initial
    begin
    num1_reg=num1;
    num2_reg=num2;
    end
    
    
    
    always @(posedge clk)
        if(num1_reg!=16'b0000000000000000 & num2_reg!=16'b0000000000000000 & num1_reg>num2_reg)
                num1_reg=num1_reg%num2_reg;
        else 
            if(num1_reg!=16'b0000000000000000 & num2_reg!=16'b0000000000000000 & num2_reg>num1_reg)
                num2_reg=num2_reg%num1_reg;
                
     always @(posedge clk)
            if(num1_reg==16'b0000000000000000)
                    out=num2_reg;
            else
                if(num2_reg==16'b0000000000000000)
                    out=num1_reg;
    
    endmodule
