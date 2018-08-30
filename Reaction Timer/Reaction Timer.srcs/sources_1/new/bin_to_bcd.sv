`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University   
// Engineer: Justin Bui
// 
// Create Date: 08/30/2018 01:01:13 PM
// Design Name: Binary to BCD Converter
// Module Name: bin_to_bcd
// Project Name: Reaction Timer
// Target Devices: NEXYS4 
// Tool Versions: 
// Description: This module is used to convert raw binary to readable BCD for
//              use with the 7-segment displays
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bin_to_bcd(
        input logic clk, reset,
        input logic start,
        input logic [12:0] bin,
        output logic ready, done_tick,
        output logic val3, val2, val1, val0
    );
    
    // fsm state type
    typedef enum {idle, op, done} state_type;
    
    // signal declaration
    state_type state_reg, state_next;
    logic [12:0] p2s_reg, p2s_next;
    logic [3:0] n_reg, n_next;
    logic [3:0] bcd3_reg, bcd2_reg, bcd1_reg, bcd0_reg;
    logic [3:0] bcd3_next, bcd2_next, bcd1_next, bcd0_next;
    logic [3:0] bcd3_tmp, bcd2_tmp, bcd1_tmp, bcd0_tmp;     
    
    always_ff @(posedge clk, posedge reset)
        if(reset)
            begin
                state_reg <= idle;
                p2s_reg <= 0;
                bcd3_reg <= 0;
                bcd2_reg <= 0;
                bcd1_reg <= 0;
                bcd0_reg <= 0;
                n_reg <= 0;
            end
        else
            begin
                state_reg <= state_next;
                p2s_reg <= p2s_next;
                bcd3_reg <= bcd3_next;
                bcd2_reg <= bcd2_next;
                bcd1_reg <= bcd1_next;
                bcd0_reg <= bcd0_next;
                n_reg <= n_next;
            end
            
    always_comb
        begin
            state_next = state_reg;
            ready = 1'b0;
            done_tick = 1'b0;
            p2s_next = p2s_reg;
            bcd0_next = bcd0_reg;
            bcd1_next = bcd1_reg;
            bcd2_next = bcd2_reg;
            bcd3_next = bcd3_reg;
            n_next = n_reg;
    
            case (state_reg)
endmodule
