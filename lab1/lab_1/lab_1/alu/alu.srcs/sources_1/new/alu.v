`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/30 19:18:27
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


module alu#(
    parameter WIDTH = 32,
    parameter A_ADD=3'b000,
    parameter A_SUB=3'b001,
    parameter A_AND=3'b010,
    parameter A_OR=3'b011,
    parameter A_XOR=3'b100
)(
    input[WIDTH-1:0] a,b,
    input[2:0] f,
    output reg [WIDTH-1:0] y,
    output reg z 
    );

always@(*)
begin
    case(f)
        A_ADD: y=a+b;
        A_SUB: y=a-b;
        A_AND: y=a&b;
        A_OR: y=a|b;
        A_XOR: y=a^b;
        default: y=0;
    endcase
    if(!y)
        z=1;
    else 
        z=0;
end

endmodule
