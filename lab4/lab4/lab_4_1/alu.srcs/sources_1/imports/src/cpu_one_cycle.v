`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/04 11:00:02
// Design Name: 
// Module Name: cpu_one_cycle
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


module SglCirCPU(
    input run,  //sw6
    input step, //button
    input valid,//sw5
    input [4:0]in,//sw4-0
    input rst,  //sw7
    input clk,  //clk100mhz
    output [1:0]check, //led6-5
    output [4:0] out0,    //led4-0
    output [2:0] an,     //8个数码管
    output [3:0] seg,
    output ready          //led7
    );
    wire clk_cpu,io_we;
    wire[7:0]io_addr,m_rf_addr;
    wire[31:0]io_dout,io_din,rf_data,m_data,pc;

pdu_1cycle pdu_1cycle(
  .clk(clk),
  .rst(rst),

  //选择CPU工作方式;
  .run(run), 
  .step(step),
  .clk_cpu(clk_cpu),

  //输入switch的端口
  .valid(valid),
  .in(in),

  //输出led和seg的端口 
  .check(check),  //led6-5:查看类型
  .out0(out0),    //led4-0
  .an(an),     //8个数码管
  .seg(seg),
  .ready(ready),          //led7

  //IO_BUS
  .io_addr(io_addr),
  .io_dout(io_dout),
  .io_we(io_we),
  .io_din(io_din),

  //Debug_BUS
  .m_rf_addr(m_rf_addr),
  .rf_data(rf_data),
  .m_data(m_data),
  .pc(pc)
);

    cpu cpu (
      .clk(clk_cpu), 
      .rst(rst),

      //IO_BUS
      .io_addr(io_addr),      //led和seg的地址
      .io_dout(io_dout),     //输出led和seg的数据
      .io_we(io_we),                 //输出led和seg数据时的使能信号
      .io_din(io_din),          //来自sw的输入数据

      //Debug_BUS
      .m_rf_addr(m_rf_addr),   //存储器(MEM)或寄存器堆(RF)的调试读口地址
      .rf_data(rf_data),    //从RF读取的数据
      .m_data(m_data),    //从MEM读取的数据
      .pc(pc)             //PC的内容
    );
endmodule
