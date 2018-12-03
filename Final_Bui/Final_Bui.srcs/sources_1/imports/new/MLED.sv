`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 11/20/2018 11:03:23 AM
// Design Name: Multi Colored LED
// Module Name: MLED
// Project Name: Multicolored LED Control
// Target Devices: Artix A7
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


module MLED(
        input logic clk,
        input logic red, green, blue,
        output logic [2:0] led_out
    );
    
    logic r,g,b;                // register for red, green, blue values
    logic [2:0] led_reg;        // register for LED output
    
    always_ff @(posedge clk)
        begin
            r <= red;
            g <= green;
            b <= blue;
        end
            
    always_comb
        begin
            led_reg[0] = r;
            led_reg[1] = g;
            led_reg[2] = b;
        end
           
    assign led_out = led_reg;
endmodule
