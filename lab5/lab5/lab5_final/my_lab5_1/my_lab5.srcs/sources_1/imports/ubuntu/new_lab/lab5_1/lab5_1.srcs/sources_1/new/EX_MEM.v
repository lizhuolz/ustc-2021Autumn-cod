`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 22:54:07
// Design Name: 
// Module Name: EX_MEM
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


module EX_MEM(
input clk,
input rst,
input en,
//pc
input [31:0] pc_4_min,
output [31:0] pc_4_mout,
//alu
input [31:0] y_in,
output [31:0] y_out,
//
input [31:0] bm_in,
output [31:0] bm_out,
//
input [4:0] rdm_in,
output [4:0] rdm_out,
//control
input [31:0] ctrl_min,
output [31:0] ctrl_mout
    );

register #(32) reg_pc_4_m(clk,rst,en,pc_4_min,pc_4_mout);
register #(32) reg_y(clk,rst,en,y_in,y_out);
register #(32) reg_bm(clk,rst,en,bm_in,bm_out);
register #(5) reg_rdm(clk,rst,en,rdm_in,rdm_out);
register #(32) reg_ctrlm(clk,rst,en,ctrl_min,ctrl_mout);


endmodule
