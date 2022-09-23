`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/10 15:29:34
// Design Name: 
// Module Name: SglCirCPU_tb2
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

module SglCirCPU_tb2();
reg clk,rst,run,step,valid;
    reg[4:0] in;
    wire[1:0] check;
    wire[4:0] out0;
    wire[2:0] an;
    wire[3:0] seg;
    wire ready;

    SglCirCPU simulution(run,step,valid,in,rst,clk,check,out0,an,seg,ready);
 initial
    begin
        clk<=0;
        in=11;
        forever 
            #5 clk<=~clk;
    end
    initial
    begin
        rst=1;
        run=0;
        valid=0;
        step=0;
        #5rst=0;
        repeat(6)
        begin
            //valid=1;
            step=1;#22
            //valid=0;
            step=0;
            #51;
        end
        valid=1;#15
        valid=0;#15
        valid=1;#25
        #30
        repeat(10)
        begin
            //valid=1;
            step=1;#22
            //valid=0;
            step=0;
            #51;
        end
        $finish;
    end
endmodule
