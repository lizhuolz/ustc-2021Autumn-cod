`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 12:38:09
// Design Name: 
// Module Name: alu
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
module ALUcontrol(
    // input [31:25] funct7,
    input [14:12] funct3,   //  there may be a bug 
    input [1:0] ALUop,
    output reg [2:0]ALUout
);
    parameter ADD = 3'b000; 
    parameter SUB = 3'b001; 
    parameter AND = 3'b010; 
    parameter OR = 3'b011;
    parameter XOR = 3'b100;
    parameter LT = 3'b101;
    always @(*) begin
        case (ALUop)
            2'b00:begin
                ALUout = ADD;
            end 
            2'b01:begin
                if (funct3==3'b000)
                ALUout = SUB;
                else if(funct3==3'b100)
                ALUout = LT;
                else
                ALUout = SUB;
            end
            2'b10:begin
                    ALUout = ADD;
            end
            default: ;
        endcase
    end
endmodule