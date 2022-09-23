`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 21:26:34
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


module  cpu (
  input clk, 
  input rst,

  //IO_BUS
  output [7:0] io_addr,      //led和seg的地址
  output [31:0] io_dout,     //输出led和seg的数据
  output io_we,                 //输出led和seg数据时的使能信号
  input [31:0] io_din,          //来自sw的输入数据

  //Debug_BUS
  input [7:0] m_rf_addr,   //存储器(MEM)或寄存器堆(RF)的调试读口地址
  output [31:0] rf_data,    //从RF读取的数据
  output [31:0] m_data,    //从MEM读取的数据
  output [31:0] pc             //PC的内容
);
  wire [31:0] PC_in, PC_out, PC_plus_4_new,PC_plus_4, PC_NotJump, WriteData, MemData, MDR; // PC_plus_4=PC+4； PC_out 当前地址 PC_in 下一个指令 
  wire zf, RegWrite, ALUSrc, PC_en, RegDst, Jump, Branch, MemRead, MemtoReg, MemWrite,ALU_zero; 
  wire [31:0] ReadData1_Data_Memory,ShiftLeft_Output,ShiftLeft_plus_pc,MUX_3_1_out_DataMemory,MUXout_DataMemory;
  wire [31:0] INS,ImmgenControl_Output,JumpAddr, BranchAddr, ALU_result, ReadData1, ReadData2, ALUsrcB, Imm,ReadData3; // INS 指令 wire [4:0] WriteReg; wire [2:0] ALUop;
  wire[1:0]ALUop;
  wire[2:0]ALUfunc;
  wire jal,jalr;
  wire Imm_gen;
  wire [1:0]RegSrc;
  assign PC_plus_4_new = pc + 32'd4;
  // wire MemWrite;
  // wire ALUSrc;
  // wire RegWrite;
  assign io_we = MemWrite&&(~ALU_result[10]);
  pc PC(
    .input_data(PC_in), 
    .en(1), 
    .rst(rst), 
    .clk(clk), 
    .output_data(pc) 
  );
  
  dist_mem_gen_0 instruction_memory(
    .a(pc[9:2]), 
    .spo(INS)
  );
  
  dist_mem_gen_1 Data_Memory( 
    .a(ALU_result[9:2]), 
    .d(ReadData2), 
    .dpra(m_rf_addr[7:0]),  //second address
    .dpo(m_data[31:0]),     //ReadData2    
    .clk(clk), 
    .we(MemWrite&&(~ALU_result[10])), 
    .spo(ReadData1_Data_Memory) //ReadData1
  );
  assign io_dout = ReadData2;

  control_unit control(
    .instruction(INS[6:0]), // aka. op code
    .jal(jal), 
    .jalr(jalr),
    .Branch(Branch), 
    // .Imm_gen(Imm_gen), 
    .RegSrc(RegSrc), 
    .MemWrite(MemWrite), 
    .ALUSrc(ALUSrc),
    .RegWrite(RegWrite), 
    .ALUop(ALUop)
    );
  register_file Register(
    .clk(clk),
    .ra0(INS[19:15]),
    .rd0(ReadData1),
    .ra1(INS[24:20]),
    .rd1(ReadData2),
    .wa(INS[11:7]),
    .we(RegWrite),
    .wd(MUX_3_1_out_DataMemory),//here comes the bug 15:52
    .ra2(m_rf_addr[7:0]),
    .rd_debug(rf_data[31:0])
  );

  mux2_1 MUX_Register(
    .a(ReadData2),
    .b(ImmgenControl_Output),
    .sel(ALUSrc),
    .o(ALUsrcB)    
  );

  alu alu(
    .a(ReadData1),
    .b(ALUsrcB),
    .f(ALUfunc),
    .y_r(ALU_result),
    .z_r(ALU_zero)
  );
  ALUcontrol ALUcontrol(
    .funct3(INS[14:12]),
    .ALUop(ALUop),
    .ALUout(ALUfunc)
  );
  ImmGenControl ImmGenControl(
    .instruction(INS),
    .immediate(ImmgenControl_Output)
  );
  mux2_1 MUX_2_1_DataMemory(
    .a(ReadData1_Data_Memory),
    .b(io_din[31:0]),
    .sel(ALU_result[10]),
    .o(MUXout_DataMemory)    
  );
  assign io_addr[7:0] = ALU_result[7:0];
  mux4_1 MUX_4_1_DataMemory(
    .d(ShiftLeft_plus_pc),//3
    .c(PC_plus_4), // 2?
    .b(MUXout_DataMemory), //1?
    .a(ALU_result),   // 0?     
    .sel(RegSrc), 
    .o(MUX_3_1_out_DataMemory)
  ); // may cause a bug here
  AddModule_32 pc_adder(
    .a(32'd4),  
    .b(pc),	//两操作数
    .y_r(PC_plus_4) 	//运算结果
  );
  ShiftLeft1 ShiftLeft1(
    .immediate(ImmgenControl_Output),
    .immediate_out(ShiftLeft_Output)
  );
  AddModule_32 ShiftLeft_adder(
    .clk(clk),
    .a(ShiftLeft_Output),  
    .b(pc),	//两操作数
    .y_r(ShiftLeft_plus_pc) 	//运算结果
  );
  mux4_1 MUX_3_1_ShiftLeft(
    .a(PC_plus_4_new),
    .b(ShiftLeft_plus_pc),
    .c(ALU_result),
    .d(32'b0),
    .sel({jalr,{jal||(Branch && ALU_zero)}}), // notice the logic computing here may cause a bug. remember to check out
    .o(PC_in)    
  );
endmodule
