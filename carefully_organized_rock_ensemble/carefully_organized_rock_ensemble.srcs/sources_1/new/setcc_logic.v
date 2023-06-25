`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 17:23:27
// Design Name: 
// Module Name: setcc_logic
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


module setcc_logic(
    input previous_s,
    input [2:0] op,
    input [3:0] mask,
    input [3:0] expected_flags,
    input [3:0] current_flags,

    output s
);
    wire flags_comparison = (mask & ~(expected_flags ^ current_flags)) == mask;
    assign s = op == 3'b000 ? 0                                // ZERO
             : op == 3'b001 ? ~(previous_s | flags_comparison) // NOR
             : op == 3'b010 ? previous_s ^ flags_comparison    // XOR
             : op == 3'b011 ? ~(previous_s & flags_comparison) // NAND
             : op == 3'b100 ? previous_s & flags_comparison    // AND
             : op == 3'b101 ? previous_s == flags_comparison   // XNOR
             : op == 3'b110 ? previous_s | flags_comparison    // OR
             : op == 3'b111 ? 1                                // ONE
             : 'bX;
endmodule
