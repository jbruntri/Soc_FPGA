`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 08/28/2018 12:52:07 PM
// Design Name: milisecond timer module
// Module Name: ms_timer
// Project Name: Reaction Timer
// Target Devices: NEXYS4
// Tool Versions: 
// Description: Module for milisecond timer, used to measure stimulus response
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ms_timer(
        input logic clk,
        input logic start, stop,
        output logic [3:0] d3, d2, d1, d0
    );
    
    localparam dv = 5000; // 1ms ticks
    logic [22:0] ms_reg;
    logic [22:0] ms_next;
    logic [3:0] d3_reg, d2_reg, d1_reg, d0_reg;
    logic [3:0] d3_next, d2_next, d1_next, d0_next;
    
    always_ff @(posedge clk)
    begin
        ms_reg <= ms_next;
        d3_reg <= d3_reg;
        d2_reg <= d2_next;
        d1_reg <= d1_next;
    end
endmodule
