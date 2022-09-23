`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/06 20:35:55
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
    parameter WIDTH = 6
)(
    input[WIDTH-1:0] a,b,
    input[2:0] f,
    output reg [WIDTH-1:0] y,
    output reg z    //¡„±Í÷æ
    );

always@(*)
begin
    case(f)
        3'b000: y=a+b;
        3'b001: y=a-b;
        3'b010: y=a&b;
        3'b011: y=a|b;
        3'b100: y=a^b;
        default: y=0;
    endcase
    if(!y)
        z=1;
    else 
        z=0;
end

endmodule
