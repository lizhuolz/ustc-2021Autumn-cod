`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/03 12:19:14
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


module register_file #(parameter WIDTH = 32)(
    input clk,
    input [4:0]ra0,
    output[WIDTH-1:0]rd0,
    input[4:0]ra1,
    output[WIDTH-1:0]rd1,
    input[4:0]wa,
    input we,
    input[WIDTH-1:0]wd,
    input[7:0]ra2,// didn't connect anything
    output[WIDTH-1:0]rd_debug
);

// reg [3:0] regfile[0:7];
reg [WIDTH-1:0] regfile[31:0];

assign rd0 = regfile[ra0],
           rd1 = regfile[ra1];

assign rd_debug = regfile[ra2];


always  @ (posedge  clk) begin
    if (we)  begin
        if(wa == 0)begin
            regfile[wa]<=0;
        end
        else begin
            regfile[wa]  <=  wd;
        end
    end
end

endmodule
