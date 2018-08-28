`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 08/27/2018 11:17:45 AM
// Design Name: 
// Module Name: stopwatch
// Project Name: Project 1
// Target Devices: 
// Tool Versions: 
// Description: Timer Test Function for Project 1
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stopwatch(
        input logic clk,
        input logic go, clr,
        output logic [3:0] d3, d2, d1, d0
    );
    
    //Declarations
    localparam DVSR = 50000;
    //milisecond registers
    logic [24:0] ms_reg;
    logic [24:0] ms_next;
    
    //decade registers (decaseconds, seconds, deciseconds)
    logic [3:0] d3_reg, d2_reg, d1_reg, d0_reg;
    logic [3:0] d3_next, d2_next, d1_next, d0_next;
    
    //tick
    logic ms_tick;
    
    //register setup
    always_ff @(posedge clk)
    begin
        ms_reg <= ms_next;
        d3_reg <= d3_next;
        d2_reg <= d2_next;
        d1_reg <= d1_next;
        d0_reg <= d0_next;
    end
       
    assign ms_next = ( clr || (ms_reg==DVSR && go)) ? 4'b0 : (go) ? ms_reg + 1: ms_reg;
    assign ms_tick = (ms_reg==DVSR) ? 1'b1 : 1'b0;
    
    always_comb
    begin
        //default: keep the previous state//no change
        d0_next = d0_reg;
        d1_next = d1_reg;
        d2_next = d2_reg;
        d3_next = d3_reg;
        
        // if clear button pressed, reset values
        if(clr)
            begin
                d0_next = 4'b0;
                d1_next = 4'b0;
                d2_next = 4'b0;
                d3_next = 4'b0;    
            end
        else if(ms_tick)
            begin
                if(d0_reg != 9)
                    d0_next = d0_reg + 1; //increment d0
                else
                    begin
                        d0_next = 4'b0; // reset d0 since d0_next = 10
                        if(d1_reg != 9)
                            d1_next = d1_reg + 1; // increment d1 
                            else
                                begin
                                    d1_next =4'b0; // reset d1 since d1_next = 10
                                    if(d2_reg != 9)
                                        d2_next = d2_reg + 1; // increment d2
                                    else
                                        begin
                                            d2_next = 4'b0; // reset d2 since d2_next = 10
                                            if(d3_reg != 9)
                                                d3_next = d3_reg +1;
                                            else
                                                d3_next = 0;
                                        end
                                end
                    end
            end
        
    end
    // output logic
    assign d0 = d0_reg;
    assign d1 = d1_reg;
    assign d2 = d2_reg;
    assign d3 = d3_reg;
    
endmodule
