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
 
    assign r = op == 'b000 ? a&b
             : op == 'b001 ? a|b
             : op == 'b010 ? a^b
             : op == 'b011 ? a_plus_b[7:0]
             : op == 'b100 ? a_sub_b[7:0]
             : op == 'b101 ? a_sub_b[7:0]
             : 'bz;

    wire c = op == 'b011 ? a_plus_b[8]
           : op == 'b100 ? a_sub_b[8]
           : op == 'b101 ? a_sub_b[8]
           : 0;
    wire n = r[7];
    wire v = op == 'b011 ? a[7] == b[7] && a[7] != r[7]
           : op == 'b100 ? a[7] != b[7] && a[7] != r[7]
           : op == 'b101 ? a[7] != b[7] && a[7] != r[7]
           : 0;
    wire z = r == 0;
    assign flags = ({ c, n, v, z });

endmodule
