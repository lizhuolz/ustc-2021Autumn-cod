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


module alu #(
parameter WIDTH = 32 	//数据宽度
)(
input  [WIDTH-1:0] a, b,	//两操作数
input  [2:0] f,			//操作功能
output  reg [WIDTH-1:0] y_r, 	//运算结果
output  reg z_r 			//零标志
);
    always@(*)begin
        z_r = 0;
        if(f == 3'b000)
        begin
            y_r = a+b;
             if(y_r == 0)begin
                 z_r = 1;
             end
        end
        else if(f == 3'b001)
        begin
             y_r = a-b;
             if(y_r == 0)begin
                 z_r = 1;
             end
        end
        else if(f == 3'b010)
        begin
            y_r = a&b;
             if(y_r == 0)begin
                 z_r = 1;
             end
        end
        else if(f == 3'b011)
        begin
            y_r = a|b;
             if(y_r == 0)begin
                 z_r = 1;
             end
        end
        else if(f == 3'b100)
        begin
             y_r = a^b;
             if(y_r == 0)begin
                 z_r = 1;
             end
        end
        else if(f == 3'b101) // little than
        begin
             y_r = a-b;
             if(y_r [WIDTH-1]== 1)begin
                 z_r = 1;
             end
        end
        else
        begin
            y_r = 0;
            z_r = 1;
        end
    end

endmodule
