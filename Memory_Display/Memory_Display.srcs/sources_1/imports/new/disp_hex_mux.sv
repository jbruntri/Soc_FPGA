`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  
// Engineer: Justin Bui
// 
// Create Date: 08/27/2018 02:03:47 PM
// Design Name: 7 Segment Display Multiplexer
// Module Name: disp_hex_mux
// Project Name: 
// Target Devices: Nexys 4
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.1 - 8 x 7 Segment display Mux
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module disp_hex_mux(
        input logic clk, reset,         // Clock and reset Signals
        input logic [3:0] val7, val6, val5, val4, val3, val2, val1, val0,    
        input logic [7:0] dp_in,        // decimal point signals
        output logic [7:0] an,          // Segment Enable Bits
        output logic [7:0] sseg         // 7 segment display output
    );
    
    // internal signals
    localparam N = 18;  // set LED refresh rate to ~ 800Hz
    logic [N-1:0] q_reg;                // Current State
    logic [N-1:0] q_next;               // Next State
    logic [3:0] val;                    // Digit Value
    logic dp;                           // decimal 
    
    // Counter
    always_ff @(posedge clk, posedge reset)
        if(reset)
            q_reg <= 0;
        else
            q_reg <= q_next;
        
    assign q_next = q_reg + 1;
    // Multiplexing For Display    
    always_comb
        case(q_reg[N-1:N-3])
            3'b000:
                begin
                    an = 8'b11111110;
                    val = val0;
                    dp = dp_in[0];
                end
            3'b001:
                begin
                    an = 8'b11111101;
                    val = val1;
                    dp = dp_in[1];
                end
            3'b010:
                begin
                    an = 8'b11111011;
                    val = val2;
                    dp = dp_in[2];
                end
            3'b011:
                begin
                    an = 8'b11110111;
                    val = val3;
                    dp = dp_in[3];
                end
            3'b100:
                begin
                    an = 8'b11101111;
                    val = val4;
                    dp = dp_in[4];
                end
            3'b101:
                begin
                    an = 8'b11011111;
                    val = val5;
                    dp = dp_in[5];
                end
            3'b110:
                begin
                    an = 8'b10111111;
                    val = val6;
                    dp = dp_in[6];
                end
            default:
                begin
                    an = 8'b01111111;
                    val = val7;
                    dp = dp_in[7];
                end
                    
         endcase
      // Individual 7-Segment Display Values 
      always_comb
            begin
                case(val)
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
                    4'ha: sseg[6:0]=7'b0001000; // 'A' 
                    4'hb: sseg[6:0]=7'b0000011; // 'B' 
                    4'hc: sseg[6:0]=7'b1000110; // 'C' 
                    4'hd: sseg[6:0]=7'b0100001; // 'D' 
                    4'he: sseg[6:0]=7'b0000110; // 'E' 
                    default: sseg[6:0]=7'b0001110; // Default 'F'
                endcase
                sseg[7] = dp;
            end
endmodule
