`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 15:33:32
// Design Name: 
// Module Name: mux3_1
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

module mux4_1 #(parameter WIDTH = 32) (
    input [WIDTH - 1 : 0] a, b, c, d, 
    input  [1:0]sel, 
    output  reg [WIDTH - 1 : 0] o); // may cause a bug here 
    
    always @(*) begin
        case (sel)
            2'b00: o = a;
            2'b01: o = b;
            2'b10: o = c;
            2'b10: o = d;
        endcase
    end
  
endmodule
