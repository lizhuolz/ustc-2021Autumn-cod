`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/01 12:30:19
// Design Name: 
// Module Name: alu_test
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


module alu_test#(
parameter WIDTH = 6
)(
input en,   //button
input clk,  //
input [1:0] sel,    //sw7~6
input [WIDTH - 1:0] x,  //sw5~0
output z,   
output [WIDTH - 1:0] y
    );
    
wire ef;
wire ea,eb;
wire [2:0] a_f;
wire [WIDTH-1:0] a_a,a_b;

reg [31:0] num;
reg [2:0] cnt;
reg [3:0]hexplay_an;
reg [3:0]hexplay_data;

always @(posedge clk) 
begin
    if(num[20]==1)
    begin
        cnt<=cnt+1;
        num<=0;
    end
    else
        num<=num+1;
end
always @(*)
begin
    case(cnt)
    3'b000: begin hexplay_an<=0;hexplay_data<=5;end
    3'b001: begin hexplay_an<=1;hexplay_data<=9;end
    3'b010: begin hexplay_an<=2;hexplay_data<=0;end
    3'b011: begin hexplay_an<=3;hexplay_data<=3;end
    3'b100: begin hexplay_an<=4;hexplay_data<=1;end
    3'b101: begin hexplay_an<=5;hexplay_data<=8;end
    3'b110: begin hexplay_an<=6;hexplay_data<=2;end
    3'b111: begin hexplay_an<=7;hexplay_data<=6;end
    endcase
end


decoder #(.WIDTH(2))decoder1(.en(en),.sel(sel),.ef(ef),.ea(ea),.eb(eb));

alu #(.WIDTH(6))alu1(.a(a_a),.b(a_b),.f(a_f),.y(y),.z(z));

regdef #(.WIDTH(3))regdef_f(.clk(clk),.en(ef),.data_in(x[2:0]),.data_out(a_f));
regdef #(.WIDTH(6))regdef_a(.clk(clk),.en(ea),.data_in(x),.data_out(a_a));
regdef #(.WIDTH(6))regdef_b(.clk(clk),.en(eb),.data_in(x),.data_out(a_b));

endmodule
