`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Baylor University
// Engineer: Keith Schubert/Justin Bui
// 
// Create Date: 08/31/2018 12:45:50 PM
// Design Name: LFSR Fibonacci 168 pseudorandom generator
// Module Name: LFSR_fib168pi
// Project Name: Reaction Timer
// Target Devices: NEXYS 4
// Tool Versions: 
// Description: Generates a random number based on the 168bit LFSR Fibonacci
//              pseudorandom generator code, using pi as part of the seed
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Written by Dr. Schubert, modifed to grab 4 bits
// 
//////////////////////////////////////////////////////////////////////////////////

module LFSR_fib168pi(
  input logic clk,
  input logic reset,
  input logic [27:0] seed,
  output logic [3:0] r
);
  localparam key1=28'b1100100100001111110110101010;
  localparam key2=28'b0010001000010110100011000010;
  localparam key3=28'b0011010011000100110001100110;
  localparam key4=28'b0010100010111000000011011100;
  logic [167:0] state, next_state;
  logic polynomial;

  assign polynomial = state[167]^state[165]^state[152]^state[151];
  assign next_state = {state[166:0],polynomial};

  always_ff @(posedge(clk), posedge(reset))
    if(reset)

          state <= {seed,~seed,key1^seed,key2^seed,key3^seed,key4^seed};
        else
          state <= next_state;

    assign r = state[113:110];  // grab 4 bits 
endmodule