`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 08/27/2018 01:40:50 PM
// Design Name: 
// Module Name: stopwatch_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Stop Watch Test Function
// 
// Dependencies: stopwatch.sv, hex_to_sseg.sv
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stopwatch_test(
        input logic clk,
        input logic btnr, btnc,
        output logic [7:0] an,
        output logic [7:0] sseg
    );
    
    // signal declaration
    logic [3:0] d3, d2, d1, d0;
    assign an[7:4] = 4'b1111;       // Disable Display 2 LEDs
    
    // Create Hex Display Item Display Unit
    disp_hex_mux disp_unit (.clk(clk), .reset(1'b0), .val3(d3), .val2(d2),
                            .val1(d1), .val0(d0), .dp_in(4'b0111), .an(an), .sseg(sseg));
                            
    // Create Stopwatch Timer Unit
    stopwatch timer_unit (.clk(clk), .go(btnr), .clr(btnc),
                          .d3(d3), .d2(d2), .d1(d1), .d0(d0));
    
endmodule
