`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/06 20:36:06
// Design Name: 
// Module Name: fls
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


module fls#(
parameter WIDTH = 7
)(
    input clk, 
    input rst,  
    input en,  
    input [WIDTH-1:0] d,
    output [WIDTH-1:0] f
);

reg [WIDTH-1:0] a,b;
reg [WIDTH-1:0] tmp1,tmp2;
reg flag=0; 
reg [2:0] curr_state;
reg [2:0] next_state;

parameter [2:0] ALU_ADD = 3'b000;   
parameter S0=3'b000; 
parameter S1=3'b001;
parameter S2=3'b010;
parameter S3=3'b011;
parameter S4=3'b100;

reg en_r1,en_r2;
wire en_edge;
always@(posedge clk)
	en_r1<=en;
always@(posedge clk)
	en_r2<=en_r1;
assign en_edge = en_r1&(~en_r2);

alu #(.WIDTH(7))alu1(.a(a),.b(b),.f(ALU_ADD),.y(f),.z());

always@(*)
begin
    case(curr_state)
    S0: next_state=S1;
    S1: next_state=S2;
    S2: next_state=S3;
    S3: next_state=S4;
    S4: next_state=S3;
    default: next_state=S0;
    endcase
end

always@(posedge clk)
begin
    if(!en_edge)
        flag<=0;
    else
        flag<=1;
end
always@(posedge clk)
begin
    if(rst)
        curr_state <= S0;   
    else if(!flag)
            if(en_edge)
                curr_state <=next_state;
end

always@(posedge clk)
begin
    if(en_edge&(!flag))
    begin
        case(curr_state)
        S0:begin a=0;b=0;tmp1=0;tmp2=0;end    
        S1:begin a=d;b=0;tmp1=a;end    
        S2:begin a=0;b=d;tmp2=b;end    
        S3:begin a=tmp1;b=tmp2;tmp1=a+b;end    
        S4:begin a=tmp1;b=tmp2;tmp2=a+b;end    
        endcase
    end
end
endmodule
