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

    output [3:0] op_code,
    output [2:0] subop_code,
    output [9:0] addr,
    output [7:0] imm,
    output [3:0] sel_ra,
    output [3:0] sel_rb,
    output       shift_logical,
    output [2:0] shift_imm,
    output       skip_on_q,
    output       setcc_mask,
    output       setcc_expected
);
    assign opcode = data[15]
        ? { data[15], 2'b00, data[14] }
        : data[15:12];
    assign subop_code = data[11:9];
    assign addr = data[13:4];
    assign imm = data[11:4];
    assign sel_ra = data[7:4];
    assign sel_rb = data[3:0];
    assign shift_logical = data[7];
    assign shift_imm = data[6:4];
    assign skip_on_q = data[8];
    assign setcc_mask = data[7:4];
    assign setcc_expected = data[3:0];
endmodule
