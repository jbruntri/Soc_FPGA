`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2018 06:54:55 PM
// Design Name: 
// Module Name: sync_single_port_ram
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


module sync_single_port_ram
#(
    parameter   ADDR_WIDTH = 3,     // address width
                DATA_WIDTH = 16     // data bits
)
(
    input logic clk,
    input logic write_EN,
    input logic [ADDR_WIDTH-1:0] addr,
    input logic [DATA_WIDTH-1:0] din,
    output logic [DATA_WIDTH-1:0] dout
    );

    logic [DATA_WIDTH-1:0] ram [0:2**ADDR_WIDTH-1];
    logic [DATA_WIDTH-1:0] data_reg;

    always_ff @(posedge clk)
    begin
        if(write_EN)
            ram[addr] <= din;
        
        data_reg <= ram[addr];    
    end
    
    assign dout = data_reg;

endmodule
