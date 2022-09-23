`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 23:00:03
// Design Name: 
// Module Name: top
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


module top(
input clk,
input rst,
input run,
input step,
input valid,
input [4:0] in,
output [1:0] check,
output [4:0] out0,
output [2:0] an,
output [3:0] seg,
output ready
    );
wire clk_cpu;

//IO_BUS
wire [7:0] io_addr;      //led和seg的地址
wire [31:0] io_dout;     //输出led和seg的数据
wire io_we;                 //输出led和seg数据时的使能信号
wire [31:0] io_din;          //来自sw的输入数据
//Debug_BUS
wire [7:0] m_rf_addr;   //存储器(MEM)或寄存器堆(RF)的调试读口地址
wire [31:0] rf_data;    //从RF读取的数据
wire [31:0] m_data;    //从MEM读取的数据

//增加流水线寄存器调试接口
wire [31:0] pcin, pc, pcd, pce;
wire [31:0] ir, imm, mdr;
wire [31:0] a, b, y, bm, yw;
wire [4:0]  rd, rdm, rdw;
wire [31:0] ctrl, ctrlm, ctrlw;    


//cpu
cpu cpu(
.clk(clk_cpu),
.rst(rst),
.io_addr(io_addr),
.io_dout(io_dout),
.io_we(io_we),
.io_din(io_din),
.m_rf_addr(m_rf_addr),
.rf_data(rf_data),
.m_data(m_data),
.pc(pc),
.pcd(pcd),
.ir(ir),
.pcin(pcin),
.pce(pce),
.a(a),
.b(b),
.imm(imm),
.rd(rd),
.ctrl(ctrl),
.y(y),
.bm(bm),
.rdm(rdm),
.ctrlm(ctrlm),
.yw(yw),
.mdr(mdr),
.rdw(rdw),
.ctrlw(ctrlw)
);
//pdu
pdu pdu(
.clk(clk), 
.rst(rst), 
.run(run), 
.step(step), 
.clk_cpu(clk_cpu), 
.valid(valid), 
.in(in), 
.check(check), 
.out0(out0), 
.an(an), 
.seg(seg), 
.ready(ready), 
.io_addr(io_addr), 
.io_dout(io_dout), 
.io_we(io_we), 
.io_din(io_din), 
.m_rf_addr(m_rf_addr), 
.rf_data(rf_data), 
.m_data(m_data), 
.pcin(pcin),
.pc(pc),
.pcd(pcd),
.pce(pce),
.ir(ir),
.imm(imm),
.mdr(mdr),
.a(a),
.b(b),
.y(y),
.bm(bm),
.yw(yw),
.rd(rd),
.rdm(rdm),
.rdw(rdw),
.ctrl(ctrl),
.ctrlm(ctrlm),
.ctrlw(ctrlw)
);


endmodule

