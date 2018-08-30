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
        output logic led[0],                // Stimulus LED, LED_0 
        output logic [2:0] rgb_led2,        // Status LED (RGB)
        output logic [7:0] an,              // 7 Segment LED Enable Bits
        output logic [7:0] sseg             // 7 Segment Display Data
    );
    
    // constant declarations
    localparam CLK_MS = 100000;             // Generate 1ms ticks
    localparam GAME_MAX = 1000;             // 1s game time maximum
    assign an[7:4] = 4'b1111;               // Disable Display 2 (4x7seg display #2)
    
    // FSM Declaration
    typedef enum {ready, start, game, err, win, lose} state_type;   // States
    
    // Signal Declaration
    state_type state_reg, state_next;           // Create state register and next state register
    logic [16:0] t_reg, t_next;                 // timer registers - 100000 Cycles = 1 ms
    logic [13:0] ms_reg, ms_next;               // ms counter registers (16.384 second maximum)
    logic [9:0] refl_reg;                       // reflex ms register (1.024 second max)
    logic [13:0] random_reg;                    // Random ms Rregister (16.384 second max)
    logic [3:0] d3, d2, d1, d0;                 // Display Value Registers
    
    // Random Number Placeholder
    
    //Create Display Item;
    disp_hex_mux display (.clk(clk), .reset(1'b0), .val3(d3), .val2(d2),
                          .val1(d1), .val0(d0), .dp_in(4'b0111), .an(an), .sseg(sseg));
                            
    //FSDM State and Data Registers
    always_ff @(posedge clk, posedge btnc) // trigger on clock, clear buttons
        if(btnc) // Clear button is pressed/active, reset state register and clear registers
            begin
                state_reg <= ready;
                t_reg <= 0;
                ms_reg <= 0;
                refl_reg <= 0;
                random_reg <= 0;
            end 
        else
            begin // if clock edge, 
                state_reg <= state_next;
                t_reg <= t_next;
                ms_reg <= ms_next;
            end
    
    //FSMD Next State Logic
    always_comb
        begin
            state_next = state_reg;
            t_next = t_reg;
            ms_next = ms_reg;
            
            case (state_reg)
                ready:                              // Initialization State/Waiting to Start
                    begin
                        rgb_led2 = 3'b001;          // Set RGB LED to Blue for Ready/Start States
                        led[0] = 1'b0;              // Turn off Stimulus LED 
                        if(btnr)                    // If Right Button (Start) is pressed, move to next state
                            state_next = start;
                            //generate random number here
                    end                             // end ready state
                start:                              // Game Start State, Wait for Stop Button or timer to hit random time
                    begin
                        rgb_led2 = 3'b001;          // Set RGB LED to Blue for Ready/Start States
                        led[0] = 1'b0;              // Turn off Stimulus LED
                        if(btnl)                    // Hit stop button before game began
                            begin
                                state_next = err;   // move to error state if stop is pressed prematurely
                            end
                        else if(ms_reg == random_reg)   // Random Time Hit
                            begin
                                state_next = game;      // move to game state if random time is hit
                                ms_next = 0;            // Reset ms timer for reflex measurement
                                led[0] = 1'b1;          // Turn on Stimulus LED
                            end
                        else if(t_reg == CLK_MS)    // 1ms elapsed
                            begin
                                ms_next = ms_reg +1;    
                                t_next = 0;         // clear time register
                            end
                        else                        // increment time register if needed
                            begin
                                t_next = t_reg + 1; // increment time register
                            end
                    end                             // end start state
                game:                               // Game Play state - stimulate and measure response
                    begin
                        rgb_led2 = 3'b000;          // turn off RGB LED for Play Mode
                        if(ms_reg == GAME_MAX)      // if 1.000s has elapsed
                            begin
                                state_next = lose;  // Move to lose state
                            end
                        else if(btnl)                    // Stop Button Pressed
                            begin
                                state_next = win;   // Move to win state
                                refl_reg = ms_reg;  // store ms timer
                            end
                        else if(t_reg == CLK_MS)     // 1ms elapsed
                            begin
                                ms_next = ms_reg+1; // increment ms register
                                t_next = 0;         // clear time register
                            end
                        else
                            begin
                                t_next = t_reg+1;   // increment time register
                            end
                    end
                err:                                // Error State
                    begin
                        rgb_led2 = 3'b011;          // RGB LED to yellow for Error State
                        // Display 9999 on the timer
                        d3 = 4'b1001;
                        d2 = 4'b1001;
                        d1 = 4'b1001;
                        d0 = 4'b1001;
                    end
                win:                                // Win State
                    begin
                        rgb_led2 = 3'b010;          // RGB LED to Green for Win State
                        // Win Code
                    end
                lose:
                    begin
                        rgb_led2 = 3'b100;          // RGB LED to Red for Lose State
                        // Display 1.000 on the timer
                        d3 = 4'b0001;
                        d2 = 4'b0000;
                        d1 = 4'b0000;
                        d0 = 4'b0000;
                    end
                default:
                    state_next = ready;
            endcase
        end
endmodule
