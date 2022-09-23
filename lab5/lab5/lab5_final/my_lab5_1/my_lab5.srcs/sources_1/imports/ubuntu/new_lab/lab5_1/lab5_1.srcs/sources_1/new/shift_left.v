`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 23:06:54
// Design Name: 
// Module Name: shift_left
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


module shift_left#(
parameter WIDTH = 32
)(
input [WIDTH-1:0] in,
output [WIDTH-1:0] out
    );
assign out = in << 1;
endmodule
