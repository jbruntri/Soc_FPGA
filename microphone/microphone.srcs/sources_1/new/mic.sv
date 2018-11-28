`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 10:24:06 AM
// Design Name: 
// Module Name: mic
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


module mic(
    //input signals
    input logic clk,
    input logic rst,
    input logic M_DATA,
    //output signals
    output logic M_CLK,
    output logic M_LRSEL,
    output logic [31:0] dout
    );
    
    localparam clk_div = 42;    // 100MHz/2.4MHz ~ 42, 2.4MHz sample rate based on ADMP421 datasheet
    localparam cycle_div = 2400000; // 2.4 Million Cycles per second
    logic [6:0] clk_cnt;        // Clock Counter register
    logic [24:0] cycle_cnt;     // Cycle Counter
    logic [31:0] data_reg;      // 32 bit data register
    logic [31:0] data_reg_next; // Data Register Holding Register
    
    assign M_LRSEL = 0;         // Unused - in a multi-microphone system, this would be set based on mic location
    
    // flip flop 
    always_ff @(posedge clk, posedge rst)
        if(rst)
            begin
                clk_cnt<= 0; // reset clk counter
                data_reg_next <= 0; // reset data count
                cycle_cnt <= 0; // reset cycle counter
            end
        else
            begin
                clk_cnt <= clk_cnt + 1;
                data_reg <= data_reg_next;
            end
    always_comb
        if(clk_cnt == clk_div)
            if(cycle_cnt == cycle_div)
                begin
                    cycle_cnt = 0;
                    data_reg_next = 0;
                end
            else        
                begin
                    clk_cnt = 0;    // reset counter
                    if(M_DATA)    
                        data_reg_next = data_reg_next+1;
                    cycle_cnt = cycle_cnt + 1;          // increment cycle_cnt;
                end
       
    assign dout = data_reg;
endmodule
