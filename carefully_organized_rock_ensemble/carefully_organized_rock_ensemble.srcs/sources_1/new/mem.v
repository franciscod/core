`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2023 06:05:10 PM
// Design Name: 
// Module Name: mem
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


module mem(
    input        clk,
    
    input        en_store,
    input  [9:0] addr_store,
    input  [7:0] data_store,

    input        en_load,
    input  [9:0] addr_load,
    output [7:0] data_load
    
    );
    
    reg [7:0] words [0:1023];
    
    assign data_load = en_load ? words[addr_load] : 'bz;

    
    always @(negedge clk) begin        
        // Store word as requested
        if (en_store) begin
            words[addr_store] <= data_store;
        end
        
        // TODO: io ports
    end
    
endmodule
