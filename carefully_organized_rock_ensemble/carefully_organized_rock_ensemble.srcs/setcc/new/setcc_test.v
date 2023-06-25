`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2023 18:03:00
// Design Name: 
// Module Name: setcc_test
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


module setcc_test();
    // Input wires
    reg       clk;
    reg       previous_s;
    reg [2:0] op;
    reg [3:0] mask;
    reg [3:0] expected_flags;
    reg [3:0] current_flags;

    // Output wires
    wire s;
    // Expected values
    reg exp_s;

    reg [31:0] vectornum, errors, initialized;
    reg [16:0] test;
    reg [16:0] testvector [0:1000];
    setcc_logic dut(
        .previous_s(previous_s),
        .op(op),
        .mask(mask),
        .expected_flags(expected_flags),
        .current_flags(current_flags),

        .s(s)
    );

    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_setcc.mem", testvector);
        clk = 0;
        vectornum = 0;
        errors = 0;
        initialized = 0;
        #10; 
        initialized = 1;
    end

    always @(posedge clk) begin
        test = testvector[vectornum];
        $display("Loaded test %d", vectornum);
        {previous_s, op, mask, expected_flags, current_flags, exp_s} = testvector[vectornum];
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            if (s !== exp_s) begin
                $display("Error:         s = %b (got %b)", exp_s, s);
                $display("      previous_s = %b", previous_s);
                $display("              op = %b", op);
                $display("            mask = %b", mask);
                $display("  expected_flags = %b", expected_flags);
                $display("   current_flags = %b", current_flags);
                errors = errors + 1;
            end
            vectornum = vectornum + 1;

            if ( testvector [vectornum] === 17'bX) begin
                $display("%d test completed with %d errors", vectornum, errors);
                $finish;
            end
        end
     end
endmodule
