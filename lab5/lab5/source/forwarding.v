`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/01 09:48:17
// Design Name: 
// Module Name: forwarding
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
////////


module forwarding(
input [4:0] rs1,
input [4:0] rs2,
input [4:0] rdm,
input [4:0] rdw,
input wbm,
input wbw,

output reg [1:0] forward1,
output reg [1:0] forward2
    );

always @(*)
begin
    if (wbm && rdm && rs1 == rdm)
    begin
        forward1 = 2'b01;
    end
    else if (wbw && rdw && rs1 == rdw)
    begin
        forward1 = 2'b10;
    end
    else
    begin
        forward1 = 2'b00;
    end

    if (wbm && rdm && rs2 == rdm)
    begin
        forward2 = 2'b01;
    end
    else if (wbw && rdw && rs2 == rdw)
    begin
        forward2 = 2'b10;
    end
    else
    begin
        forward2 = 2'b00;
    end
end

endmodule