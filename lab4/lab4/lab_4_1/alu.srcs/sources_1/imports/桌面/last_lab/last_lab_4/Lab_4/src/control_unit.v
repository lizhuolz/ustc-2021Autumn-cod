`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 12:49:00
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [6:0] instruction, // aka. op code
    // output reg jal, Branch, reg Imm_gen, reg [1:0]RegSrc, reg MemWrite, reg ALUSrc,reg RegWrite, 
    // remove imm_gen
    output reg jalr,jal, Branch, reg [1:0]RegSrc, reg MemWrite, reg ALUSrc,reg RegWrite, 
    output reg [1:0] ALUop
    );
    always@(*)
    case (instruction)
        7'b0110011://add sub
        begin
            jalr=0;
            jal=0;
            Branch=0;
            RegSrc=2'b00;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=1;
        end
        7'b0010011://addi
        begin
            jalr=0;
            jal=0;
            Branch=0;
            RegSrc=2'b00;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=1;
            RegWrite=1;
        end
        7'b1101111://jal
        begin
            jalr=0;
            jal=1;
            Branch=0;
            RegSrc=2'b10;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=1;
        end
        7'b1100011://beq blt
        begin
            jalr=0;
            jal=0;
            Branch=1;
            RegSrc=2'b00;
            ALUop=2'b01;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=0;
        end
        7'b0000011://lw
        begin
            jalr=0;
            jal=0;
            Branch=0;
            RegSrc=2'b01;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=1;
            RegWrite=1;
        end
        7'b0100011://sw
        begin
            jalr=0;
            jal=0;
            Branch=0;
            RegSrc=2'b00;
            ALUop=2'b00;
            MemWrite=1;
            ALUSrc=1;
            RegWrite=0;
        end
        7'b0010111://auipc
        begin
            jalr=0;
            jal=0;
            Branch=0;
            RegSrc=2'b11;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=0;
            RegWrite=1;
        end
        7'b1100111://jalr
        begin
            jalr=1;
            jal=0;
            Branch=0;
            RegSrc=2'b10;
            ALUop=2'b00;
            MemWrite=0;
            ALUSrc=1;
            RegWrite=1;
        end
        default: ;
    endcase
endmodule
