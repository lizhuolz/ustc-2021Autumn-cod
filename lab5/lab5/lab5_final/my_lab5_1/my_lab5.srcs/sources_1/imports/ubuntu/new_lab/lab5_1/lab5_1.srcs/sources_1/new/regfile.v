`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 16:15:01
// Design Name: 
// Module Name: regfile
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


module regfile#(//32x32寄存器堆
parameter DWIDTH = 32,    //数据宽度n
parameter AWIDTH = 5,   //地址宽度n
parameter COUNT = 32     //寄存器个数，2^n
)(
input clk,      //时钟（上升沿有效）
input [AWIDTH-1:0] ra0,    //读端口0地址
output[DWIDTH-1:0] rd0,  //读端口0数据
input [AWIDTH-1:0] ra1,    //读端口1地址
output[DWIDTH-1:0] rd1,  //读端口1数据
input [AWIDTH-1:0] ra2,    //读端口2地址
output[DWIDTH-1:0] rd2,  //读端口2数据
input [AWIDTH-1:0] wa,     //写端口地址
input we,   //写使能，高电平有效
input [DWIDTH-1:0] wd    //写端口数据
    );

reg [DWIDTH-1:0] regfile[0:COUNT-1];

assign rd0 =  we && wa == ra0 ? wd : regfile[ra0];
assign rd1 =  we && wa == ra1 ? wd : regfile[ra1];
assign rd2 =  we && wa == ra2 ? wd : regfile[ra2];

always@(posedge clk)
begin
    regfile[0] <= {DWIDTH{1'b0}};
    if(we)
    begin
        if(wa)
        begin
            regfile[wa]<=wd;
        end
    end
end

endmodule