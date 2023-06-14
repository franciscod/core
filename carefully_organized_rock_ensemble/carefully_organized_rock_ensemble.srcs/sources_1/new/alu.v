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
 
    assign r = op == 'b000 ? a&b
             : op == 'b001 ? a|b
             : op == 'b010 ? a^b
             : 'bz;

    assign flags[0] = r == 'b0; // Z
    assign flags[1] = 0; // V
    assign flags[2] = r[7]; // N
    assign flags[3] = 0; // C
    
endmodule
