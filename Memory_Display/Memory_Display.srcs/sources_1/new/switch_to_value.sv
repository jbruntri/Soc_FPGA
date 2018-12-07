`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Justin Bui 
// 
// Create Date: 09/21/2018 05:58:34 PM
// Design Name: Switch To Value Converter
// Module Name: switch_to_value
// Project Name: 
// Target Devices: Nexys 4
// Tool Versions: 
// Description: This module converts the 16 switch values to 4 hex values
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module val_to_disp(
        input logic clk, rst,
        input logic [15:0] switches,
        output logic [3:0] hex3, hex2, hex1, hex0
    );
    
    logic [15:0] switch_reg;
    logic [3:0] hex3_reg, hex2_reg, hex1_reg, hex0_reg;
    logic [3:0] hex3_tmp, hex2_tmp, hex1_tmp, hex0_tmp;
    
    always_ff @(posedge clk, posedge rst)
        begin
            if(rst)
                begin
                    hex3_tmp <= 0;
                    hex2_tmp <= 0;
                    hex1_tmp <= 0;
                    hex0_tmp <= 0 ;
                end
            else
                begin
                    switch_reg <= switches;
                    hex3_reg <= hex3_tmp;
                    hex2_reg <= hex2_tmp;
                    hex1_reg <= hex1_tmp;
                    hex0_reg <= hex0_tmp;
                end
        end
            
    always_comb
        begin
            hex3_tmp = switch_reg[15:12];
            hex2_tmp = switch_reg[11:8];
            hex1_tmp = switch_reg[7:4];
            hex0_tmp = switch_reg[3:0];
        end
     
     assign hex3 = hex3_reg;
     assign hex2 = hex2_reg;
     assign hex1 = hex1_reg;
     assign hex0 = hex0_reg;
           
endmodule
