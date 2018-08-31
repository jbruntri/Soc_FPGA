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
        output logic [3:0] val3, val2, val1, val0
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
                idle:
                    begin
                        ready = 1'b1;
                        if(start)
                            begin
                                state_next = op;
                                bcd3_next = 0;
                                bcd2_next = 0;
                                bcd1_next = 0;
                                bcd0_next = 0;
                                n_next = 4'b1101; // index
                                p2s_next = bin;
                            end
                    end
                op:
                    begin
                        p2s_next = p2s_reg << 1;
                        
                        bcd0_next = {bcd0_tmp[2:0], p2s_reg[12]};
                        bcd1_next = {bcd1_tmp[2:0], bcd0_reg[3]};
                        bcd2_next = {bcd2_tmp[2:0], bcd1_reg[3]};
                        bcd3_next = {bcd3_tmp[2:0], bcd2_reg[3]};
                        n_next = n_reg - 1;
                            if(n_next == 0)
                                state_next = done;
                    end
                done:
                    begin
                        done_tick = 1'b1;
                        state_next = idle;
                    end
                default: state_next = idle;
            endcase
        end
    assign bcd0_tmp = (bcd0_reg > 4) ? bcd0_reg+3 : bcd0_reg;
    assign bcd1_tmp = (bcd1_reg > 4) ? bcd1_reg+3 : bcd1_reg;
    assign bcd2_tmp = (bcd2_reg > 4) ? bcd2_reg+3 : bcd2_reg;
    assign bcd3_tmp = (bcd3_reg > 4) ? bcd3_reg+3 : bcd3_reg;
    
    assign val0 = bcd0_reg;
    assign val1 = bcd1_reg;
    assign val2 = bcd2_reg;
    assign val3 = bcd3_reg;
                 
endmodule
