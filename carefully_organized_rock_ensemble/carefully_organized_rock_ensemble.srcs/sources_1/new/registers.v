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

    assign r_read_a = sel_read_a ==  0 ? 'b0000_0000
                    : sel_read_a ==  9 ? bank[9] + 1
                    : sel_read_a == 15 ? 'b1111_1111
                    : bank[sel_read_a];
    assign r_read_b = sel_read_b ==  0 ? 'b0000_0000
                    : sel_read_b ==  9 ? bank[9] + 1
                    : sel_read_b == 15 ? 'b1111_1111
                    : bank[sel_read_b];
    assign r_flags = bank[ 8];
    assign r_ip    = bank[ 9];
    assign r_cs    = bank[12];
    assign r_ds    = bank[13];

    wire eflags_write_requested = (en_write_reg && sel_write_reg == 8)
                               || (~en_write_reg && exchange_a_b && (sel_read_a == 8 || sel_read_b == 8));
    wire ip_write_requested = (en_write_reg && sel_write_reg == 9)
                           || (~en_write_reg && exchange_a_b && (sel_read_a == 9 || sel_read_b == 9));

    always @(negedge clk) begin
        // If no reset was requested just do normal operation
        if (rst == 0) begin
            // Write register as requested
            if (en_write_reg) begin
                bank[sel_write_reg] <= data_write_reg;
            end
            if (~en_write_reg && exchange_a_b) begin
                bank[sel_read_a] <= r_read_b;
                bank[sel_read_b] <= r_read_a;
            end
            // Update flags unless a register was requested
            if (en_write_flags && !eflags_write_requested) begin
                bank[8] <= data_write_flags;
            end
            // Update ip unless a register write was requested
            if (en_write_ip && !ip_write_requested) begin
                bank[9] <= data_write_ip;
            end
        end
        // Otherwise put the register bank in a well-known state
        else begin
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
