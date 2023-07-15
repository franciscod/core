`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2023 21:08:17
// Design Name: 
// Module Name: io
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


module io(
    input        clk,

    input        en_store,
    input  [9:0] addr_store,
    input  [7:0] data_store,

    input        en_load,
    input  [9:0] addr_load,
    output [7:0] data_load,
    
    input  [7:0] io_input,
    output [7:0] io_output,

    output       mem_en_load,
    output       mem_en_store
);
    reg [7:0] load_register;
    reg [7:0] store_register;

    assign data_load = en_load ? (
        addr_load == 'b1111111110 ? load_register :
        addr_load == 'b1111111111 ? store_register
                                  : 'bz
    ) : 'bz;
    assign io_output = store_register;
    assign mem_en_load = en_load && addr_load < 'b1111111110;
    assign mem_en_store = en_store && addr_store < 'b1111111110;

    always @(negedge clk) begin
        load_register <= io_input;

        if (en_store && addr_store == 'b1111111111) begin
            store_register <= data_store;
        end
    end
endmodule
