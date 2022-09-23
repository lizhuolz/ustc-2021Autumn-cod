`timescale 1ns / 1ps

module IF_ID(
input clk,
input rst,
input en,
input [31:0] pc_4_din,
output [31:0] pc_4_dout,
input [31:0] pc_din,
output [31:0] pc_dout,
input [31:0] instr_din,
output [31:0] instr_dout
);

register #(32) reg_pc_4_d(clk, rst, en, pc_4_din, pc_4_dout);
register #(32) reg_pcd(clk, rst, en, pc_din, pc_dout);
register #(32) reg_ir(clk, rst, en, instr_din, instr_dout);

endmodule