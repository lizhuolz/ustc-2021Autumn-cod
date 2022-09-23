`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 23:09:19
// Design Name: 
// Module Name: register
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


module register#(
parameter WIDTH = 32
)(
input clk, rst, en,
input [WIDTH - 1:0] in,
output reg [WIDTH - 1:0] out
);

//always @(*)
//begin
    //out<=in;
//end

always @(posedge clk)
begin
    //out <= {WIDTH{1'b0}};
    if (rst)
    begin
        out <= {WIDTH{1'b0}};
    end
    else if (en)
    begin
        out <= in;
    end
end

endmodule
