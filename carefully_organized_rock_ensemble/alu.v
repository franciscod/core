`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 08:39:44 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input  [2:0] op,          
    input  [7:0] a,              
    input  [7:0] b,             
    input        shift_logical,  
    input  [2:0] shift_imm,   
      
    output [7:0] r,           
    output [3:0] flags         
);

    wire [8:0] a_plus_b = a + b;
    wire [8:0] a_sub_b = a - b;
    wire [7:0] shift_right = shift_logical
        ? a >> shift_imm
        : $signed($signed(a) >>> shift_imm);
    wire [8:0] shift_left = a << shift_imm;
 
    reg  [7:0] result;

    always @(*) begin
        case (op)
            3'b000: result <= a&b;
            3'b001: result <= a|b;
            3'b010: result <= a^b;
            3'b011: result <= a_plus_b[7:0];
            3'b100: result <= a_sub_b[7:0];
            3'b101: result <= a_sub_b[7:0];
            3'b110: result <= shift_right;
            3'b111: result <= shift_left[7:0];
        endcase
    end

    // FLAGS
    reg  c;
    wire n = result[7];
    reg  v;
    wire z = result == 0;
    always @(*) begin
        case (op)
            3'b000: begin c <= 0;             v <= 0; end
            3'b001: begin c <= 0;             v <= 0; end
            3'b010: begin c <= 0;             v <= 0; end
            3'b011: begin c <= a_plus_b[8];   v <= a[7] == b[7] && a[7] != result[7]; end
            3'b100: begin c <= a_sub_b[8];    v <= a[7] != b[7] && a[7] != result[7]; end
            3'b101: begin c <= a_sub_b[8];    v <= a[7] != b[7] && a[7] != result[7]; end
            3'b110: begin c <= 0;             v <= 0; end
            3'b111: begin c <= shift_left[8]; v <= 0; end
        endcase
    end

    // Use the ALU result unless we are doing comparisons
    assign r = op != 'b101 ? result : a;

    assign flags = ({ c, n, v, z });

endmodule
