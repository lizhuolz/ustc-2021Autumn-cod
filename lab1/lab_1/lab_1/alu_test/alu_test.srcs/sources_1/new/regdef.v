`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 12:29:44
// Design Name: 
// Module Name: regdef
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


module regdef#(
parameter WIDTH = 6
)(
input clk,
input en,    //1��Ч
input [WIDTH-1:0] data_in,    //����
output reg [WIDTH-1:0] data_out    //���
    );

always@(posedge clk)
begin
    if(!en)
        data_out <= data_out;//?
    else 
        data_out <= data_in;
end
endmodule
