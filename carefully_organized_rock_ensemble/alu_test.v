`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 08:45:11 PM
// Design Name: 
// Module Name: alu_test
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

module alu_test();
    reg clk, reset, sl;
    reg [2:0] op, simm;
    reg [3:0] exp_flags;
    reg [7:0] a, b, exp_r;

    wire [7:0] r;
    wire [3:0] flags;

    reg [34:0] vectornum, errors;
    reg [34:0] testvector [0:1000];
    alu dut(
        .op(op),
        .a(a),
        .b(b),
        .shift_logical(sl),
        .shift_imm(simm),
        .r(r),
        .flags(flags)
    );

    always 
        #5 clk = ~clk;

    initial begin
        clk = 0;
        $readmemb("testdata_alu.mem", testvector);
        vectornum = 0;
        errors = 0;
        reset = 1; 
        #10; 
        reset = 0;
    end

    always @(posedge clk) begin
        $display ( " %d vectornum loading " , vectornum) ;
        {op, a, b, sl, simm, exp_r, exp_flags} = testvector [vectornum];
    end

    always @(negedge clk) begin
        if (~reset) begin
            if (({r, flags} !== {exp_r, exp_flags})) begin
                $display (" Error:  inputs = %b %b %b %b %b", op, a, b, sl, simm);
                $display ("        outputs = %b %b (expected = %b %b )", r, flags, exp_r, exp_flags) ;
                errors = errors + 1;
            end
            vectornum = vectornum + 1;

            if ( testvector [vectornum] === 'bX) begin
                $display ( " %d test completed with %d errors " , vectornum, errors ) ;
                $finish ;
            end
        end
     end
endmodule