`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 15:44:18
// Design Name: 
// Module Name: control
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


module control(
input [6:0] opcode,
output [31:0] ctrl
    );

parameter [6:0] LW   = 7'b0000011;
parameter [6:0] ADDI = 7'b0010011;
parameter [6:0] SW   = 7'b0100011;
parameter [6:0] ADD  = 7'b0110011;
parameter [6:0] BEQ  = 7'b1100011;
parameter [6:0] JAL  = 7'b1101111;

reg [1:0] forward1;
reg [1:0] forward2;
reg rf_wr;
reg [1:0]wb_sel;
reg m_rd;
reg m_wr;
reg jal;
reg br;
reg a_sel;
reg b_sel;
reg [3:0] alu_op;

assign ctrl = {6'b0, forward1, 2'b0, forward2, 1'b0, rf_wr, wb_sel, 2'b0, m_rd, m_wr, 2'b0, jal, br, 2'b0, a_sel, b_sel, alu_op};

always @(*) 
begin
    case(opcode)
    LW:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b1;
        wb_sel = 2'b01;
        m_rd   = 1'b1;
        m_wr   = 1'b0;
        jal    = 1'b0;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b1;
        alu_op = 4'b0000;
    end
    ADDI:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b1;
        wb_sel = 2'b00;
        m_rd   = 1'b0;
        m_wr   = 1'b0;
        jal    = 1'b0;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b1;
        alu_op = 4'b0000;
    end
    SW:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b0;
        wb_sel = 2'b00;
        m_rd   = 1'b0;
        m_wr   = 1'b1;
        jal    = 1'b0;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b1;
        alu_op = 4'b0000;
    end
    ADD:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b1;
        wb_sel = 2'b00;
        m_rd   = 1'b0;
        m_wr   = 1'b0;
        jal    = 1'b0;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b0;
        alu_op = 4'b0000;
    end
    BEQ:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b0;
        wb_sel = 2'b00;
        m_rd   = 1'b1;
        m_wr   = 1'b0;
        jal    = 1'b0;
        br     = 1'b1;
        a_sel  = 1'b0;
        b_sel  = 1'b0;
        alu_op = 4'b0001;
    end    
    JAL:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b1;
        wb_sel = 2'b10;
        m_rd   = 1'b1;
        m_wr   = 1'b0;
        jal    = 1'b1;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b0;
        alu_op = 4'b0000;
    end    
    default:
    begin
        forward1  = 2'b00;
        forward2  = 2'b00;
        rf_wr  = 1'b0;
        wb_sel = 2'b00;
        m_rd   = 1'b0;
        m_wr   = 1'b0;
        jal    = 1'b0;
        br     = 1'b0;
        a_sel  = 1'b0;
        b_sel  = 1'b0;
        alu_op = 4'b0000;
    end
    endcase
end

endmodule