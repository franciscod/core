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
    reg clk, reset;
    reg a, b, op, exp_r;
    wire r;
    reg [31:0] vectornum, errors;
    reg [31:0] testvector [0:1000];
    alu dut(
        .a(a), 
        .b(b), 
        .op(op), 
        .r(r)
    );
    
    always @(*)
    begin
        clk = 1; 
        #5; 
        clk = 0; 
        #5; // periodo 10ns
    end
    
    initial
    begin
        $readmemb("alu_test_data.mem", testvector ) ;
        vectornum = 0;
        errors = 0;
        reset = 1; 
        #25; 
        reset = 0;
    end
    
    always @(posedge clk)
        {a, b, op, exp_r} = testvector [vectornum];
    
    always @(negedge clk)
    begin
        if (~reset)
        begin
            if (r !== exp_r)
            begin
                $display (" Error:  inputs = %b", {a,b,op});
                $display ("        outputs = %b (expected = %b)", r, exp_r ) ;
                errors = errors + 1;
            end
            vectornum = vectornum + 1;
            if ( testvector [vectornum] === 3'bx)
            begin
                $display ( " %d test completed with %d errors " , vectornum, errors ) ;
                $finish ;
            end
        end
     end

endmodule