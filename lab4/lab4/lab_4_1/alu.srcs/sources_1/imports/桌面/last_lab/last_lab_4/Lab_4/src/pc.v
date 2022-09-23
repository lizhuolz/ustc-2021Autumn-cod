`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 21:27:55
// Design Name: 
// Module Name: pc
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


module pc#(parameter WIDTH=32)(
    input [WIDTH-1:0]input_data,
    input en,
    input rst,
    input clk,
    output reg [WIDTH-1:0]output_data
    );
    always @(posedge clk or posedge rst) begin
        if(rst)begin
            output_data <= 32'h0x3000;
        end
        else if(en) begin
            output_data <= input_data; 
        end
            
    end
endmodule
