`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2023 09:49:51 PM
// Design Name: 
// Module Name: plaquita
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


module plaquita(
    input [3:0] sw,
    input [3:0] btn,
    output [3:0] led
    );
    alu dut(
        .op(sw), 
        .a({btn[1:0], 6'b0}), 
        .b({btn[3:2], 6'b0}), 
        .r({led[1:0], 6'b0}),
        .shift_logical(0),
        .shift_imm(0),
        .flags({Z, led[3], Z, led[2]})
    );
    
endmodule
