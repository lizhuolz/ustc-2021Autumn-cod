`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 12:31:47
// Design Name: 
// Module Name: alu_test_tb
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


module alu_test_tb#(
parameter WIDTH = 6
)(
);

reg clk;
reg en;
reg [1:0]sel;
reg [WIDTH-1:0] x;
wire [WIDTH-1:0] y; 
wire z;

alu_test #(.WIDTH(6))alu_test1(.en(en),.clk(clk),.sel(sel),.x(x),.y(y),.z(z));

initial
begin 
    clk = 0;
    forever 
    begin 
    #5 clk = ~clk;
    end
end

initial
begin
    en = 0; x = 0; sel = 0;
    #10 en = 1; x=6'b000000; sel = 2'b01;  // ‰»Îf 
    #10 en = 1; x=6'b000001; sel = 2'b10; // ‰»Îa
    #10 en = 1; x=6'b000001; sel = 2'b11; // ‰»Îb
    #10 en = 0;
end
endmodule
