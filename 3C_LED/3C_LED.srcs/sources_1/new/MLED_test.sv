`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 11/20/2018 11:13:42 AM
// Design Name: Multi Colored LED Test
// Module Name: MLED Test
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


module MLED_test(
        input logic clk, btnc,
        input logic [15:0] sw,
        output [2:0] rgb_led1, rgb_led2 
    );
    
    MLED led1 (.clk(clk), .red(sw[2]), .green(sw[1]), .blue(sw[0]), .led_out(rgb_led1));
    MLED led2 (.clk(clk), .red(sw[5]), .green(sw[4]), .blue(sw[3]), .led_out(rgb_led2));
endmodule
