`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 08/30/2018 11:03:19 AM
// Design Name: Reaction Timer
// Module Name: Reaction_Timer
// Project Name: Reaction Timer
// Target Devices: NEXYS4
// Tool Versions: 
// Description: Core code for the reaction timer Project
// 
// Dependencies: disp_hex_mux
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Reflex Timer Measure response to a stimulus (up to 1s),
//                      Stimulus (indicated by LED0) is randomly generated 2-15s after
//                      the "game" is started.
// 
//////////////////////////////////////////////////////////////////////////////////


module Reaction_Timer(
        input logic clk,                    // Clock 
        input logic btnc, btnr, btnl,       // Buttons: Center - Clear, Right - Start, Left - Stop
        output logic stim,                // Stimulus LED, LED_0 
        output logic [2:0] rgb_led2,        // Status LED (RGB)
        output logic [7:0] an,              // 7 Segment LED Enable Bits
        output logic [7:0] sseg             // 7 Segment Display Data
    );
    
    // constant declarations
    assign an[7:4] = 4'b1111;               // Disable Display 2 (4x7seg display #2)
    
    // FSM Declaration
    typedef enum {ready, start, game, err, win, lose} state_type;   // States
    
    // Signal Declaration
    state_type state_reg, state_next;           // Create State Register and Next State Register
    logic [3:0] random_timer_reg;               // Random seconds Register (16.384 second max)
    logic [3:0] random_number_reg;              // Random Number Generator Register
    logic [3:0] d3_reg, d2_reg, d1_reg, d0_reg; // Display Data Registers
    logic [3:0] d3_tmp, d2_tmp, d1_tmp, d0_tmp; // Temporary Display Data Registers
    logic [3:0] t3_reg, t2_reg, t1_reg, t0_reg; // Timer BCD Registers (used with stop watch)
    logic run=1;                                  // Run Clock Bit
    logic timer_clr=0;                            // Clear Timer Bit
    // Random Number Placeholder
    
    //Create Display Item;
    disp_hex_mux display (.clk(clk), .reset(1'b0), .val3(d3_reg), .val2(d2_reg),
                          .val1(d1_reg), .val0(d0_reg), .dp_in(4'b1111), .an(an), .sseg(sseg));
    //create timer
    stopwatch timer (.clk(clk), .go(run), .clr(timer_clr), .d3(t3_reg), .d2(t2_reg), .d1(t1_reg), .d0(t0_reg));
    
    //create LFSR pseudorandom generator
    LFSR_fib168pi rangen (.clk(clk), .reset(1'b0), .seed(314159), .r(random_number_register));
            
    //FSDM State and Data Registers
    always_ff @(posedge clk, posedge btnc) // trigger on clock, clear buttons
        if(btnc) // Clear button is pressed/active, reset state register and clear registers
            begin
                // reset values
                state_reg <= ready;
                random_timer_reg <= 2;              // default value of 2 seconds, changed when game is started
                d3_reg <= 0;
                d2_reg <= 0;
                d1_reg <= 0;
                d0_reg <= 0;                
            end 
        else
            begin // if clock edge, save states and data
                state_reg <= state_next;
                d3_reg <= d3_tmp;
                d2_reg <= d2_tmp;
                d1_reg <= d1_tmp;
                d0_reg <= d0_tmp;
            end
    
    //FSMD Next State Logic
    always_comb
        begin
            state_next = state_reg;
                  
            case (state_reg)
                ready:                              // Initialization State/Waiting to Start
                    begin
                        rgb_led2 = 3'b001;          // Set RGB LED to Blue for Ready/Start States
                        stim = 1'b0;                // Turn off Stimulus LED
                        run = 1'b0;                 // stop timer
                        timer_clr = 1'b1;           // clear timer 
                        
                        // Display HI for greeting
                        d3_tmp = 4'hA;              // Display H
                        d2_tmp = 4'hB;              // Display I
                        d1_tmp = 4'h0;
                        d0_tmp = 4'h0;

                        // Check for Start Button
                        if(btnr)
                            begin
                                // Set the random time interval, if random numbe <2, set it to 2seconds       
                                random_timer_reg = (random_number_reg<2) ? 2 : random_number_reg;   // Store the random time;
                                state_next = start; // Move to start state
                            end
                    end                             // end ready state
                
                start:                              // Game Start State, Wait for Stop Button or timer to hit random time
                    begin
                        timer_clr = 1'b0;           // Set timer clear low (lets the timer values run)
                        run = 1'b1;                 // Start Timer
                        rgb_led2 = 3'b001;          // Set RGB LED to Blue for Ready/Start States
                        stim = 1'b0;                // Turn off Stimulus LED
                        
                        // Display 0's - Clear Display
                        d3_tmp = 1'b0;
                        d2_tmp = 1'b0;
                        d1_tmp = 1'b0;
                        d0_tmp = 1'b0;
                        
                        // Check for "false start"
                        if(btnl)                    // Hit stop button before game began
                            begin
                                state_next = err;   // move to error state if stop is pressed prematurely
                            end
                        // check for game start
                        else if(t3_reg == random_timer_reg)   // Random Time Hit
                            begin
                                state_next = game;      // move to game state if random time is hit
                                timer_clr = 1'b1;       // reset timer counter (pulse)
                            end
                    end                             // end start state
                
                game:                               // Game Play state - stimulate and measure response
                    begin
                        timer_clr = 1'b0;           // Ensure timer clear is low
                        run = 1'b1;                 // Ensure timer is running
                        stim = 1'b1;                // Ensure stimulus LED is enabled
                        rgb_led2 = 3'b000;          // turn off RGB LED for Play Mode   
                        
                        // Display Timer
                        d3_tmp = t3_reg;
                        d2_tmp = t2_reg;
                        d1_tmp = t1_reg;
                        d0_tmp = t0_reg;
                        
                        if(t3_reg == 1)      // if 1.000s has elapsed
                            begin
                                state_next = lose;  // Move to lose state
                                run = 1'b0;         // stop timer
                            end
                        
                        else if(btnl)                    // Stop Button Pressed
                            begin
                                state_next = win;   // Move to win state
                                run = 1'b0;         // stop timer
                            end
                    end
                    
                err:                                // Error State
                    begin
                        rgb_led2 = 3'b110;          // RGB LED to yellow for Error State
                        run = 1'b0;                 // disable timer
                        timer_clr = 1'b0;           // clear timer
                        // Display 9999 on the timer for error
                        d3_tmp = 4'h9;
                        d2_tmp = 4'h9;
                        d1_tmp = 4'h9;
                        d0_tmp = 4'h9;
                    end                             // End Error STate
                    
                win:                                // Win State
                    begin
                        rgb_led2 = 3'b010;          // RGB LED to Green for Win State
                        // Copy Timer Data into Data Registers
                        d3_tmp = t3_reg;
                        d2_tmp = t2_reg;
                        d1_tmp = t1_reg;
                        d0_tmp = t0_reg;
                    end                             // End Win State
                    
                lose:
                    begin
                        rgb_led2 = 3'b100;          // RGB LED to Red for Lose State
                        // Display 1.000 on the timer
                        d3_tmp=4'h1;
                        d2_tmp=4'h0;
                        d1_tmp=4'h0;
                        d0_tmp=4'h0;
                    end                             // End Lose State
                    
                default:
                    state_next = ready;             // Default to ready state
            endcase
        end
endmodule
