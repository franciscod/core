`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2023 00:39:47
// Design Name: 
// Module Name: ir
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


module ir(
    input  [15:0] data,
    input         skip,

    output [3:0] op_code,
    output [2:0] subop_code,
    output [9:0] addr,
    output [7:0] imm,
    output [3:0] sel_ra,
    output [3:0] sel_rb,
    output       shift_logical,
    output [2:0] shift_imm,
    output [3:0] setcc_mask,
    output [3:0] setcc_expected
);
    wire skipeable_bit = data[8];
    wire skipped = (!data[15] && data[14:12] != 3'b111) && (skipeable_bit && skip);
    
    assign op_code = skipped  ? 0 // skipped ins become nop == movr r0 r0
                   : data[15] ? { data[15], 2'b00, data[14] } 
                   :            data[15:12];
    assign subop_code = data[11:9];
    assign addr = data[13:4];
    assign imm = data[11:4];
    assign sel_ra = skipped ? 0 : data[3:0];
    assign sel_rb = skipped ? 0 : data[7:4];
    assign shift_logical = data[7];
    assign shift_imm = data[6:4];
    assign setcc_mask = data[7:4];
    assign setcc_expected = data[3:0];
endmodule
