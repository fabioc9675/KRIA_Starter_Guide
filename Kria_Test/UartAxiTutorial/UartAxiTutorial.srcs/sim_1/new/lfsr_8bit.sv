`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 00:13:04
// Design Name: 
// Module Name: lfsr_8bit
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


module lfsr_8bit
    (
        input 	clk,
        input 	rst,
        input   clk_en,
        output [7:0] data
    );
    
    logic [8:0] 	lfsr;
    logic [3:0] 	lfsr_feedback;
    assign lfsr_feedback= {lfsr[7],lfsr[5:3]};
   
    always @(posedge clk)
    begin
	   if(rst) begin
           lfsr <= 8'b11111111;
       end
	   else if (clk_en) begin
           lfsr[7:1] <= lfsr[6:0]; 
           lfsr[0] <= ^lfsr_feedback;           
	   end
    end
   
    assign data = lfsr;
    
endmodule
