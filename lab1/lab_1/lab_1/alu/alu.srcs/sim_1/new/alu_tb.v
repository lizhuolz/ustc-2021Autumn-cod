`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/30 19:56:54
// Design Name: 
// Module Name: alu_tb
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


module alu_tb#(
    parameter WIDTH = 32,
    parameter CYCLE = 10
)(
    );
reg [WIDTH-1:0] a,b;
reg [2:0] f;
wire [WIDTH-1:0]y;
wire z;
reg clk;

alu alu1(.a(a),.b(b),.f(f),.y(y),.z(z));

initial clk = 0;
always #5 clk=~clk;

initial
begin
    a=32'b00000000000000000000000000000011;
    b=32'b00000000000000000000000000000101;
    @(posedge clk);
    #CYCLE f=3'b000;
    #CYCLE f=3'b001;
    #CYCLE f=3'b010;
    #CYCLE f=3'b011;
    #CYCLE f=3'b100;
    #CYCLE f=3'b101;
    #CYCLE f=3'b111;
    #CYCLE $stop;
end 
endmodule
