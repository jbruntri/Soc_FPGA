`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 11/20/2018 12:24:18 AM
// Design Name: Multi Colored LED Core
// Module Name: bui_mled_core
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


module bui_mled_core(
    // general signals
    input logic clk, reset,
    
    // slot interface
    input logic cs,
    input logic read,
    input logic write,
    input logic [4:0] addr,
    input logic [31:0] wr_data,
    output logic [31:0] rd_data,
    
    // LED Ports
    output logic [2:0] mled0, mled1
    );
    
    logic [31:0] data_reg;      // create a data register
    
    // Initialize both rbg LEDS
    MLED led0 (.clk(clk), .red(data_reg[0]), .green(data_reg[1]), 
               .blue(data_reg[2]), .led_out(mled0));
    MLED led1 (.clk(clk), .red(data_reg[3]), .green(data_reg[4]), 
                          .blue(data_reg[5]), .led_out(mled1));
                                         
    always_ff @(posedge clk, posedge reset)
        begin
            if(reset)
                data_reg <= 0;          // clear the data
            else
                data_reg <= wr_data;    // load in new data 
        end
        
    assign rd_data = 0;     // read data currently not used 
endmodule
