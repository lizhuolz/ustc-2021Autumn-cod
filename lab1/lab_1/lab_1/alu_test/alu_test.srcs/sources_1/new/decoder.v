`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 12:29:04
// Design Name: 
// Module Name: decoder
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


module decoder#(
parameter WIDTH = 2
)(
input en,
input [WIDTH-1:0] sel,
output reg ef,
output reg ea,
output reg eb
);

always@(*)
begin
    if(!en)
    begin
       ef = 0; ea = 0; eb = 0;
    end
    else
        case(sel)
            2'b10: begin ef=1; ea=0; eb=0; end  //1ѡ��ef
            2'b00: begin ef=0; ea=1; eb=0; end  //2ѡ��ea
            2'b01: begin ef=0; ea=0; eb=1; end  //3ѡ��eb
            default: begin ef=0; ea=0; eb=0; end    //0��Ч
        endcase
end
endmodule
