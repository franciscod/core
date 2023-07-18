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

    reg s_result;
    always @(*) begin
        case (op)
            3'b000: s_result <= 0;                                // ZERO
            3'b001: s_result <= ~(previous_s | flags_comparison); // NOR
            3'b010: s_result <= previous_s ^ flags_comparison;    // XOR
            3'b011: s_result <= ~(previous_s & flags_comparison); // NAND
            3'b100: s_result <= previous_s & flags_comparison;    // AND
            3'b101: s_result <= previous_s == flags_comparison;   // XNOR
            3'b110: s_result <= previous_s | flags_comparison;    // OR
            3'b111: s_result <= 1;                                // ONE
        endcase
    end
    assign s = s_result;
endmodule
