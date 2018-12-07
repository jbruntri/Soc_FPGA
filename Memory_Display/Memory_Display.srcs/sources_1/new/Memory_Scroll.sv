`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2018 07:11:01 PM
// Design Name: 
// Module Name: Memory_Scroll
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


module Memory_Scroll(

    input logic clk,
    input logic btnc, btnr,
    input logic [15:0] sw,
    output logic [2:0] rgb_led1,
    output logic [7:0] an, sseg
    );
    // Timimg variables  
    
    // Data variables
    logic [3:0] data3, data2, data1, data0;

    
    
    // Display variables
    logic [3:0] dsp7, dsp6, dsp5, dsp4, dsp3, dsp2, dsp1, dsp0;     // display values
    logic [3:0] d7_tmp, d6_tmp, d5_tmp, d4_tmp, d3_tmp, d2_tmp, d1_tmp, d0_tmp;
    logic [3:0] scrollCount = 4'b0000;      // scroll counter
    logic timerRST = 1'b0;
    
    // Ram variables 
    logic [15:0] data_r, data_w; 
    
    typedef enum {show, scroll, read} state_type;  
    
    // create display, timer, and memory modules     

    disp_hex_mux display (.clk(clk), .reset(btnr),
                            .val7(dsp7), .val6(dsp6), .val5(dsp5), .val4(dsp4), .val3(dsp3),
                            .val2(dsp2), .val1(dsp1), .val0(dsp0), .dp_in(8'b11111111), .an(an), .sseg(sseg));
                            
//    blk_mem_gen_0 memory(.clka(clk), .addra(address), .dina(data_w), .douta(data_r));
    
    //create stopwatch with dummy data values
    stopwatch timer(.clk(clk), .go(1'b1), .clr(timerRST), .d3(data3), .d2(data2), .d1(data1), .d0(data0));
    
    // create states
    state_type state_reg, state_next;
    
    always_ff @(posedge clk, posedge btnr) // trigger on clock, clear buttons
            if(btnr) // Clear button is pressed/active, reset state register and clear registers
                begin
                    // reset values
                    state_reg <= show;
                    dsp7 <= 4'b0000;
                    dsp6 <= 4'b0000;
                    dsp5 <= 4'b0000;
                    dsp4 <= 4'b0000;
                    dsp3 <= 4'b0000;
                    dsp2 <= 4'b0000;
                    dsp1 <= 4'b0000;
                    dsp0 <= 4'b0000;     
                end 
            else
                begin // if clock edge, store variables
                    state_reg <= state_next;
                    dsp7 <= d7_tmp;
                    dsp6 <= d6_tmp;
                    dsp5 <= d5_tmp;
                    dsp4 <= d4_tmp;
                    dsp3 <= d3_tmp;
                    dsp2 <= d2_tmp;
                    dsp1 <= d1_tmp;
                    dsp0 <= d0_tmp;
                end
    
    always_comb
        begin
            state_next = state_reg;
            d7_tmp = dsp7;
            d6_tmp = dsp6;
            d5_tmp = dsp5;
            d4_tmp = dsp4;
            d3_tmp = dsp3;
            d2_tmp = dsp2;
            d1_tmp = dsp1;
            d0_tmp = dsp0;
            
            case(state_reg)
                show:
                    begin
                       timerRST = 1'b0;         // reset timer low
                       rgb_led1 = 3'b010;       // Green LED normal status 
                       if(btnc)
                        begin
                            state_next = read;
                        end
                       else if(data3 == 4)
                           begin
                               state_next = scroll;
                               timerRST = 1'b1;
                           end
                       
                    end
                scroll:
                    begin
                        rgb_led1 = 3'b100;          // Red LED scroll state
                        scrollCount = scrollCount + 1;
                        // shift values over
                        d6_tmp = dsp7;
                        d5_tmp = dsp6;
                        d4_tmp = dsp5;
                        d3_tmp = dsp4;
                        d2_tmp = dsp3;
                        d1_tmp = dsp2;
                        d0_tmp = dsp1;
                        d7_tmp = 4'b0000;

                        state_next = show;

                    end
                read:
                    begin
                        // load new values from RAM
                        d7_tmp = sw[15:12];
                        d6_tmp = sw[11:8];
                        d5_tmp = sw[7:4];
                        d4_tmp = sw[3:0];
                        state_next = show;
                    end
                default:
                    state_next = show;
           endcase  
        end
    
endmodule
