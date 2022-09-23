`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 16:22:17
// Design Name: 
// Module Name: program_counter
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

module program_counter#(
parameter WIDTH = 32
)(
input clk,
input rst,
input en,
input [WIDTH-1:0] in,
output reg [WIDTH-1:0] out
    );


always @(posedge clk, posedge rst)
begin
    
    if(rst)
    begin
        out<={WIDTH{1'b0}};
    end
    else if(en)
    begin
        out <= in;
    end
end

endmodule