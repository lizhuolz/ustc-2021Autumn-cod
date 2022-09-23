`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 15:31:54
// Design Name: 
// Module Name: mux2_1
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


module mux2_1 #(parameter WIDTH = 32) (
    input [WIDTH - 1 : 0] a, b,     
    input  sel, 
    output [WIDTH - 1 : 0] o ); 
  
  assign o  = sel ? b : a; 
  
endmodule
