`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2023 14:40:37
// Design Name: 
// Module Name: registers
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


module registers(
    input        clk,
    input        rst,
    input  [3:0] sel_read_a,
    input  [3:0] sel_read_b,
    input        exchange_a_b,
    input        en_write_reg,
    input  [3:0] sel_write_reg,
    input  [7:0] data_write_reg,
    input        en_write_flags,
    input  [7:0] data_write_flags,
    input        en_write_ip,
    input  [7:0] data_write_ip,

    output [7:0] r_read_a,
    output [7:0] r_read_b,
    output [7:0] r_flags,
    output [7:0] r_ip,
    output [7:0] r_cs,
    output [7:0] r_ds
);
    reg [7:0] bank [0:15];

    reg [7:0] read_a;
    reg [7:0] read_b;
    always @(*) begin
        case (sel_read_a)
            4'b0000: read_a <= 'b0000_0000;
            4'b0001: read_a <= bank[1];
            4'b0010: read_a <= bank[2];
            4'b0011: read_a <= bank[3];
            4'b0100: read_a <= bank[4];
            4'b0101: read_a <= bank[5];
            4'b0110: read_a <= bank[6];
            4'b0111: read_a <= bank[7];
            4'b1000: read_a <= bank[8];
            4'b1001: read_a <= bank[9] + 1;
            4'b1010: read_a <= bank[10];
            4'b1011: read_a <= bank[11];
            4'b1100: read_a <= bank[12];
            4'b1101: read_a <= bank[13];
            4'b1110: read_a <= bank[14];
            4'b1111: read_a <= 'b1111_1111;
        endcase
        case (sel_read_b)
            4'b0000: read_b <= 'b0000_0000;
            4'b0001: read_b <= bank[1];
            4'b0010: read_b <= bank[2];
            4'b0011: read_b <= bank[3];
            4'b0100: read_b <= bank[4];
            4'b0101: read_b <= bank[5];
            4'b0110: read_b <= bank[6];
            4'b0111: read_b <= bank[7];
            4'b1000: read_b <= bank[8];
            4'b1001: read_b <= bank[9] + 1;
            4'b1010: read_b <= bank[10];
            4'b1011: read_b <= bank[11];
            4'b1100: read_b <= bank[12];
            4'b1101: read_b <= bank[13];
            4'b1110: read_b <= bank[14];
            4'b1111: read_b <= 'b1111_1111;
        endcase
    end

    assign r_read_a = read_a;
    assign r_read_b = read_b;

    assign r_flags = bank[ 8];
    assign r_ip    = bank[ 9];
    assign r_cs    = bank[12];
    assign r_ds    = bank[13];

    wire should_write_flags = en_write_flags
                              & (!en_write_reg | sel_write_reg != 8)
                              & (!exchange_a_b | (sel_read_a != 8 & sel_read_b != 8));
    wire should_write_ip = en_write_ip
                           & (!en_write_reg | sel_write_reg != 9)
                           & (!exchange_a_b | (sel_read_a != 9 & sel_read_b != 9));

    always @(negedge clk) begin
        // Write register as requested
        if (en_write_reg) begin
            bank[sel_write_reg] <= data_write_reg;
        // Exchange registers if requested
        end else if (exchange_a_b) begin
            bank[sel_read_a] <= read_b;
            bank[sel_read_b] <= read_a;
        end
        // Update flags unless a register was requested
        if (should_write_flags) begin
            bank[8] <= data_write_flags;
        end
        // Update ip unless a register write was requested
        if (should_write_ip) begin
            bank[9] <= data_write_ip;
        end
        if (rst) begin
            bank[ 0] <= 0;
            bank[ 1] <= 0;
            bank[ 2] <= 0;
            bank[ 3] <= 0;
            bank[ 4] <= 0;
            bank[ 5] <= 0;
            bank[ 6] <= 0;
            bank[ 7] <= 0;
            bank[ 8] <= 0;
            bank[ 9] <= 0;
            bank[10] <= 0;
            bank[11] <= 0;
            bank[12] <= 0;
            bank[13] <= 0;
            bank[14] <= 0;
            bank[15] <= 0;
        end
    end
endmodule
