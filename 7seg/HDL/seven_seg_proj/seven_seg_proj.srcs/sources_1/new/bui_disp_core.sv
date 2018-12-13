`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2018 09:15:04 AM
// Design Name: 7 Segment Display Core
// Module Name: bui_disp_core
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


module bui_disp_core(
    // Logic Inputs
    input  logic clk,
    input  logic reset,
    // Slot Inputs
    input  logic cs,
    input  logic read,
    input  logic write,
    input  logic [4:0] addr,
    input  logic [31:0] wr_data,
    // Slot Outputs
    output logic [31:0] rd_data,
    // 7 Segment Outputs
    output logic [7:0] an,
    output logic [7:0] sseg
    );
   
   // Internal Registers
   logic [31:0] data_reg2, data_reg1, data_reg0;
   logic write_en, write_d2, write_d1, write_d0;
   // Create Display Unit
   disp_hex_mux disp_unit (.clk(clk), .reset(reset), .val7(data_reg1[31:24]), .val6(data_reg1[23:16]),
                            .val5(data_reg1[15:8]), .val4(data_reg1[7:0]), .val3(data_reg0[31:24]),
                            .val2(data_reg0[23:16]), .val1(data_reg0[15:8]), .val0(data_reg0[7:0]),
                            .dp_in(data_reg2[7:0]), .an(an), .sseg(sseg));
   // always FF setup
   always_ff @(posedge clk, posedge reset)
        if(reset)
            begin
                data_reg2 <= 0;
                data_reg1 <= 0;
                data_reg0 <= 0;
            end
        else
            begin
                if(write_d0)
                    data_reg0 = wr_data;
                if(write_d1)
                    data_reg1 = wr_data;
                if(write_d2)
                    data_reg2 = wr_data;
            end
    // Write Register Controls
    assign write_d0 = write & cs & ~addr[0] & ~addr[1]; // Low 4 disp
    assign write_d1 = write & cs & addr[0] & ~addr[1];  // High 4 disp
    assign write_d2 = write & cs & addr[1];             // Decimal Point     
    // Read Data Register Unused
    assign rd_data = 0;   
endmodule
