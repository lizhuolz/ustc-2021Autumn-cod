`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 12:38:09
// Design Name: 
// Module Name: alu
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


module AddModule_32 #(
parameter WIDTH = 32 	//数据宽度
)(
input clk,
input  [WIDTH-1:0] a, b,	//两操作数
// input  [2:0] f,			//操作功能
output  reg [WIDTH-1:0] y_r 	//运算结果
// output  reg z_r 			//零标志
);
    always@(*)begin
        y_r = a+b;
    end

endmodule
