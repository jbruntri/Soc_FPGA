`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2018 11:44:01 AM
// Design Name: 
// Module Name: mod_m_counter
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


module mod_m_counter
#(parameter M=10)
(        
        input logic clk, reset,
        output logic max_tick,
        output logic [$clog2(M)-1:0] q
    );
    
    localparam N = $clog2(M);
    
    logic [N-1:0] r_reg;
    logic [N-1:0] r_next;
    
    always_ff @(posedge clk, posedge reset)
        if (reset)
            r_reg <= 0;
        else
            r_reg <= r_next;
    
    assign r_next = (r_reg == (M-1)) ? 0 : r_reg + 1;
    
    assign q = r_reg;
    assign max_tick = (r_reg == (M-1)) ? 1'b1 : 1'b0;
    
endmodule
