`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 17:12:14
// Design Name: 
// Module Name: mux2
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


module mux2#(
parameter WIDTH = 32
)(
input [WIDTH-1:0] in0,
input [WIDTH-1:0] in1,
input sel,
output [WIDTH-1:0] out
    );
assign out = sel ? in1 : in0;
endmodule
