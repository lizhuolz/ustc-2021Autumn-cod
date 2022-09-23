`timescale 1ns / 1ps

module MEM_WB(
input clk,
input rst,
input en,
//pc
input [31:0] pc_4_win,
output [31:0] pc_4_wout,
//d_mem
input [31:0] y_win,
output [31:0] y_wout,
//
input [31:0] mdr_in,
output [31:0] mdr_out,
//rdw
input [4:0] rdw_in,
output [4:0] rdw_out,
//control
input [31:0] ctrl_win,
output [31:0] ctrl_wout
);

register #(32) reg_pc_4_w(clk,rst,en,pc_4_win,pc_4_wout);
register #(32) reg_ym(clk,rst,en,y_win,y_wout);
register #(32) reg_mdr(clk,rst,en,mdr_in,mdr_out);
register #(5) reg_rdw(clk,rst,en,rdw_in,rdw_out);
register #(32) reg_ctrlw(clk,rst,en,ctrl_win,ctrl_wout);

endmodule