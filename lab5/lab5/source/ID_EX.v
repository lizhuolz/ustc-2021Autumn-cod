`timescale 1ns / 1ps

module ID_EX(
input clk,
input rst,
input en,
//if_id
input [31:0] pc_4_ein,
output [31:0] pc_4_eout,
input [31:0] pc_ein,
output [31:0] pc_eout,
//
input [31:0] a_in,
output [31:0] a_out,
input [31:0] b_in,
output [31:0] b_out,
//imm_gen
input [31:0] imm_in,
output [31:0] imm_out,
//
input [4:0] rs1_in,
output [4:0] rs1_out,
input [4:0] rs2_in,
output [4:0] rs2_out,
input [4:0] rd_in,
output [4:0] rd_out,
//
input [6:0] opcode_in,
output [6:0] opcode_out,
//control
input [31:0] ctrl_ein,
output [31:0] ctrl_eout
);

register #(32) reg_pc_4_e(clk,rst,en,pc_4_ein,pc_4_eout);
register #(32) reg_pc_e(clk,rst,en,pc_ein,pc_eout);
register #(32) reg_a(clk,rst,en,a_in,a_out);
register #(32) reg_b(clk,rst,en,b_in,b_out);
register #(32) reg_imm(clk,rst,en,imm_in,imm_out);
register #(5) reg_rs1(clk,rst,en,rs1_in,rs1_out);
register #(5) reg_rs2(clk,rst,en,rs2_in,rs2_out);
register #(5) reg_rd(clk,rst,en,rd_in,rd_out);
register #(7) reg_opcode(clk,rst,en,opcode_in,opcode_out);
register #(32) reg_ctrl(clk,rst,en,ctrl_ein,ctrl_eout);

endmodule