`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/05 11:10:23
// Design Name: 
// Module Name: sim
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


module SglCirCPU_tb();
    reg clk,rst,run,step,valid;
    reg[4:0] in;
    wire[1:0] check;
    wire[4:0] out0;
    wire[2:0] an;
    wire[3:0] seg;
    wire ready;

    SglCirCPU simulution(run,step,valid,in,rst,clk,check,out0,an,seg,ready);
  
   always
        #2 clk<=~clk;
    always
        #20 step<=~step;
    always
        #3 valid<=~valid;
  initial
    begin
    #0  clk=0;
    #0  run=0;
	#0  step=0;
	#0  rst=1;
	#0  valid=0;
	#0  in=5'b0;
    #1 rst=0;
    #120   $finish;
    end
endmodule

