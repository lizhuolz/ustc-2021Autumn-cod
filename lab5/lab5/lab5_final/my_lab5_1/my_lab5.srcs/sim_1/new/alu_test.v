`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/05 22:32:08
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


module alu_test(

    );
    reg [31:0] a,b;
    reg [3:0] f;
    wire [31:0] y;
    wire z;
    
    alu alu(a,b,f,y,z);
    initial
    begin
    a = 0;
    b=0;
    f=1;
    #20 $finish;
    end
    
endmodule
