`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 16:13:59
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
    parameter WIDTH = 32
)(
    input[WIDTH-1:0] a,b,
    input[3:0] f,
    output reg [WIDTH-1:0] y,
    output reg z    //零标志
);
always@(*)
begin
    case(f)
        4'b0000: y=a+b;
        4'b0001:y = a-b;
        4'b0010: y=a&b;
        4'b0011: y=a|b;
        4'b0100: y=a^b;
        default: y={WIDTH{1'b0}};
    endcase
    if(y==0)
                z =1;
    else 
                z =0;
end

endmodule