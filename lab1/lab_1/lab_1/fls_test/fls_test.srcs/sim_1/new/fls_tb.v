`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/06 20:39:41
// Design Name: 
// Module Name: fls_tb
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


module fls_tb#(
parameter WIDTH = 7,CYCLE=20
)(
    );
    
reg clk,rst,en;
reg [WIDTH-1:0] d;
wire [WIDTH-1:0] f;

fls #(.WIDTH(7))fls1(.clk(clk),.rst(rst),.en(en),.d(d),.f(f));    

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
    en=0;
    forever 
    begin 
    #30 en = ~en;
    end
end

initial
begin
    d = 0;rst = 1;
    #CYCLE rst = 0;
    #50  d=7'b0000011;   
    #50  d=7'b0000100;  
   
    #500   rst=1;
end

endmodule

