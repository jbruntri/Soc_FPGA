`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Justin Bui
// 
// Create Date: 08/27/2018 01:25:29 PM
// Design Name: 
// Module Name: hex_to_sseg
// Project Name: Project 1
// Target Devices: NEXYS4 DDR
// Tool Versions: 
// Description: Custom 7 Segment Display for Project 1
// 
// Dependencies: 
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hex_to_sseg(
        input logic [3:0] in,
        input logic dp,         // decimal point
        output logic en,        // enable output
        output logic [7:0] sseg // active low    
    );
    
    always_comb
        begin
            case(in)
                4'h0: sseg[6:0]=7'b1000000; // '0'
                4'h1: sseg[6:0]=7'b1111001; // '1'
                4'h2: sseg[6:0]=7'b0100100; // '2'
                4'h3: sseg[6:0]=7'b0110000; // '3'
                4'h4: sseg[6:0]=7'b0011001; // '4'
                4'h5: sseg[6:0]=7'b0010010; // '5'
                4'h6: sseg[6:0]=7'b0000010; // '6'
                4'h7: sseg[6:0]=7'b1111000; // '7'
                4'h8: sseg[6:0]=7'b0000000; // '8'
                4'h9: sseg[6:0]=7'b0010000; // '9'
                4'ha: sseg[6:0]=7'b0001001; // 'H' - Special Case Letter H for Game Intro
                4'hb: sseg[6:0]=7'b1001111; // 'I'  - Special Case Letter I for Game Intro
                4'hc: sseg[6:0]=7'b0000110; // 'E' - Special Case Letter E for Error - Not an applicable Value
                4'hd: sseg[6:0]=7'b0000110; // 'E' - Special Case Letter E for Error - Not an applicable Value
                4'he: sseg[6:0]=7'b0000110; // 'E' - Special Case Letter E for Error - Not an applicable Value
                default: sseg[6:0]=7'b1111111; // Default Off
            endcase
            sseg[7] = dp;
        end
endmodule
