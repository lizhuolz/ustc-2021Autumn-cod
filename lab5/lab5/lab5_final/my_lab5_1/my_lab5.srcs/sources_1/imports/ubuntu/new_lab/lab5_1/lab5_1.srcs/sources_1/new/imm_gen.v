`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 17:11:38
// Design Name: 
// Module Name: imm_gen
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


module imm_gen(
input [31:0] instr,
output reg [31:0] imm
    );
parameter [6:0] LW   = 7'b0000011;
parameter [6:0] ADDI = 7'b0010011;
parameter [6:0] SW   = 7'b0100011;
parameter [6:0] ADD  = 7'b0110011;
parameter [6:0] BEQ  = 7'b1100011;
parameter [6:0] JAL  = 7'b1101111;

always@(*)
begin
    case(instr[6:0])
    LW: begin imm = {{20{instr[31]}},instr[31:20]}; end
    ADDI: begin imm = {{20{instr[31]}},instr[31:20]}; end
    SW: begin imm = {{20{instr[31]}},instr[31:25],instr[11:7]}; end
    BEQ: begin imm = {{20{instr[31]}},instr[31],instr[7],instr[30:25],instr[11:8]}; end  
    JAL: begin imm = {{12{instr[31]}},instr[31],instr[19:12],instr[20],instr[30:21]}; end
    default: begin imm = 32'h00000000; end
    endcase
end
endmodule