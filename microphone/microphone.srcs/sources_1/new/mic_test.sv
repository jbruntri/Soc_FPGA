`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2018 11:16:31 AM
// Design Name: 
// Module Name: mic_test
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


module mic_test(
        input logic clk,
        input logic reset_n,
        input logic M_DATA,
        
        output logic M_CLK,
        output logic M_LRSEL,
        output logic [2:0] rgb_led1
    );
    
    logic [31:0] data;
    mic microphone (.clk(clk), .rst(reset_n), .M_DATA(M_DATA), .M_CLK(M_CLK), .M_LRSEL(M_LRSEL), .dout(data));
    pwm_basic pwm1 (.clk(clk), .reset(reset_n), .duty(data), .pwm_out(rgb_led1[0]));
    pwm_basic pwm2 (.clk(clk), .reset(reset_n), .duty(32'hFF00F0EA), .pwm_out(rgb_led1[1]));
endmodule
