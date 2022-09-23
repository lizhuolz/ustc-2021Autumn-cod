`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 16:12:38
// Design Name: 
// Module Name: ImmGenControl
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


module ImmGenControl(
    input [31:0] instruction,
    output reg [31:0]immediate
    );
    always @(*) begin
        if(instruction[6:0]==7'b0010011)    //addi  
        begin
            immediate = {{20{instruction[31]}},instruction[31:20]};
        end
        if(instruction[6:0]==7'b0000011)    //lw
        begin
            immediate = {{20{instruction[31]}},instruction[31:20]};
        end
        if(instruction[6:0]==7'b0100011)    //sw
        begin
            immediate = {{20{instruction[31]}},instruction[31:25],instruction[11:7]};
        end
        if(instruction[6:0]==7'b1100011)    //beq
        begin
            immediate = {{20{instruction[31]}},instruction[31],instruction[7],instruction[30:25],instruction[11:8]};
        end
        if(instruction[6:0]==7'b1101111)    //jal
        begin
                immediate = {{12{instruction[31]}},instruction[31],instruction[19:12],instruction[30],instruction[30:21]};
        end
         if(instruction[6:0]==7'b0010111)    //auipc
        begin
                immediate = {{1'b0},instruction[31:12],{11{1'b0}}};
        end
    end
endmodule
