`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 15:19:08
// Design Name: 
// Module Name: cpu
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


module cpu(
input clk, 
input rst,

//IO_BUS
output [7:0] io_addr,      //led和seg的地址
output [31:0] io_dout,     //输出led和seg的数据
output io_we,                 //输出led和seg数据时的使能信号
input [31:0] io_din,        //来自sw的输入数据

//Debug_BUS
input [7:0] m_rf_addr,   //存储器(MEM)或寄存器堆(RF)的调试读口地址
output [31:0] rf_data,    //从RF读取的数据
output [31:0] m_data,    //从MEM读取的数据

//PC/IF/ID 流水段寄存器
output [31:0] pc,
output [31:0] pcd,
output [31:0] ir,
output [31:0] pcin,

//#ID/EX 流水段寄存器
output [31:0] pce,
output [31:0] a,
output [31:0] b,
output [31:0] imm,
output [4:0] rd,
output [31:0] ctrl,

//#EX/MEM 流水段寄存器
output [31:0] y,
output [31:0] bm,
output [4:0] rdm,
output [31:0] ctrlm,

//#MEM/WB 流水段寄存器
output [31:0] yw,
output [31:0] mdr,
output [4:0] rdw,
output [31:0] ctrlw
    );

//pc
wire [31:0] pc_4;
wire [31:0] pc_4_d;
wire [31:0] pc_4_e;
wire [31:0] pc_4_m;
wire [31:0] pc_4_w;
wire [31:0] offset;
wire [31:0] pc_target;
wire PCSrc;
//IF
wire fstall;
//i_mem
wire [31:0] instr;
//control
wire [31:0] ctrl_i;
//ID
wire dstall;
wire dflush;
//regfile
wire [31:0] rd1;
wire [31:0] rd2;
wire [31:0] wd;
//imm_gen
wire [31:0] imm_i;
//EX
wire eflush;
wire [6:0] opcode;
//ALU
wire [31:0] alu_a;
wire [31:0] alu_b;
wire [31:0] alu_result;
wire [31:0] alu_i;
wire zero;
//forwarding
wire [4:0] rs1;
wire [4:0] rs2;
wire [1:0] forward1;
wire [1:0] forward2;
//MEM
//d_mem
wire [31:0] data;
wire [31:0] mdr_i;
//WB
//IO_Bus
assign io_addr = y[7:0];    //io_addr = alu_out[7:0]
assign io_we = y[10] & ctrlm[12];   //io_we = alu_out[10] & mem_wr
assign io_dout = bm;    //io_dout = rd1
assign PCSrc = ctrl[9] | (ctrl[8] & zero); //pcsrc = jal | (branch & zero);

//IF
program_counter #(32)program_counter(
.clk(clk),
.rst(rst),
.en(~fstall),
.in(pcin),
.out(pc)
);
add #(32) add_pc_4(
.a(pc),
.b(32'h4),
.y(pc_4)
);
mux2 #(32) mux_pc(
.in0(pc_4),
.in1(pc_target),
.sel(PCSrc),
.out(pcin)
);
//I_mem
mem_inst mem_inst0(
.a(pc[9:2]),
.spo(instr)
);
//IF_ID
IF_ID IF_ID(
.clk(clk),
.rst(rst | dflush),
.en(~dstall),
.pc_4_din(pc_4),
.pc_4_dout(pc_4_d),
.pc_din(pc),
.pc_dout(pcd),
.instr_din(instr),
.instr_dout(ir)
);
//ID
control control(
.opcode(ir[6:0]),   //
.ctrl(ctrl_i)
);
regfile #(32,5,32)regfile(
.clk(clk),
.ra0(ir[19:15]),
.rd0(rd1),
.ra1(ir[24:20]),
.rd1(rd2),
.ra2(m_rf_addr[4:0]),
.rd2(rf_data),
.wa(rdw),
.we(ctrlw[18]),
.wd(wd)
);
imm_gen imm_gen(
.instr(ir),
.imm(imm_i)
);
//ID_EX
ID_EX ID_EX(
.clk(clk),
.rst(rst | eflush),
.en(1'b1),
.pc_4_ein(pc_4_d),
.pc_4_eout(pc_4_e),
.pc_ein(pcd),
.pc_eout(pce),
.a_in(rd1),
.a_out(a),
.b_in(rd2),
.b_out(b),
.imm_in(imm_i),
.imm_out(imm),
.rs1_in(ir[19:15]),
.rs1_out(rs1),
.rs2_in(ir[24:20]),
.rs2_out(rs2),
.rd_in(ir[11:7]),
.rd_out(rd),
.opcode_in(ir[6:0]),
.opcode_out(opcode),
.ctrl_ein(ctrl_i),
.ctrl_eout(ctrl)
);
//forward
forwarding forwarding(
.rs1(rs1),
.rs2(rs2),
.rdm(rdm),
.rdw(rdw),
.wbm(ctrlm[18]),
.wbw(ctrlw[18]),
.forward1(forward1),
.forward2(forward2)
);
//hazard
hazard hazard(
.PCSrc(PCSrc),
.rs1(ir[19:15]),    //
.rs2(ir[24:20]),
.opcode(opcode),
.rd(rd),
.m_rd(ctrl[13]),
.wbm(ctrlm[18]),
.wbw(ctrlw[18]),
.fstall(fstall),
.dstall(dstall),
.dflush(dflush),
.eflush(eflush)
);
//EX
shift_left #(32)shift_left(
.in(imm),
.out(offset)
);
add #(32) add_pc(
.a(pce),
.b(offset),
.y(pc_target)
);
//
mux3 #(32) mux_a(
.in0(a),
.in1(y),
.in2(wd),
.sel(forward1),
.out(alu_a)
);
mux3 #(32) mux_b(
.in0(b),
.in1(y),
.in2(wd),
.sel(forward2),
.out(alu_i)
);
mux2 #(32) mux_alu(
.in0(alu_i),
.in1(imm),
.sel(ctrl[4]),
.out(alu_b)
);
alu #(32) alu(
.a(alu_a),
.b(alu_b),
.f(ctrl[3:0]),
.y(alu_result),
.z(zero)
);
//EX_MEM
EX_MEM EX_MEM(
.clk(clk),
.rst(rst),
.en(1'b1),
.pc_4_min(pc_4_e),
.pc_4_mout(pc_4_m),
.y_in(alu_result),
.y_out(y),
.bm_in(alu_i),
.bm_out(bm),
.rdm_in(rd),
.rdm_out(rdm),
.ctrl_min(ctrl),
.ctrl_mout(ctrlm)
);
//D_MEM
mem_data mem_data0(
.a(y[9:2]),
.d(bm),
.dpra(m_rf_addr),
.clk(clk),
.we(ctrlm[12]),
.spo(data),
.dpo(m_data)
);

mux2 #(32)mux_io(
.in0(data),
.in1(io_din),
.sel(y[10]),
.out(mdr_i)
);
//MEM_WB
MEM_WB MEM_WB(
.clk(clk),
.rst(rst),
.en(1'b1),
.pc_4_win(pc_4_m),
.pc_4_wout(pc_4_w),
.y_win(y),
.y_wout(yw),
.mdr_in(mdr_i),
.mdr_out(mdr),
.rdw_in(rdm),
.rdw_out(rdw),
.ctrl_win(ctrlm),
.ctrl_wout(ctrlw)
);
//WB
mux3 #(32) mux_wb(
.in0(yw),
.in1(mdr),
.in2(pc),
.sel(ctrlw[17:16]),
.out(wd)
);

endmodule