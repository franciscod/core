`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2023 14:41:10
// Design Name: 
// Module Name: registers_test
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


module registers_test();
    // Input wires
    reg       clk;
    reg       rst;
    reg [3:0] sel_read_a;
    reg [3:0] sel_read_b;
    reg       exchange_a_b;
    reg       en_write_reg;
    reg [3:0] sel_write_reg;
    reg [7:0] data_write_reg;
    reg       en_write_flags;
    reg [7:0] data_write_flags;
    reg       en_write_ip;
    reg [7:0] data_write_ip;
    // Output wires
    wire [7:0] r_read_a, r_read_b, r_flags, r_ip, r_cs, r_ds;
    // Expected values
    reg [7:0] exp_read_a, exp_read_b, exp_flags, exp_ip, exp_cs, exp_ds;

    reg [31:0] vectornum, errors, initialized;
    reg [88:0] testvector [0:1000];
    registers dut(
        .clk(clk),
        .rst(rst),
        .sel_read_a(sel_read_a),
        .sel_read_b(sel_read_b),
        .exchange_a_b(exchange_a_b),
        .en_write_reg(en_write_reg),
        .sel_write_reg(sel_write_reg),
        .data_write_reg(data_write_reg),
        .en_write_flags(en_write_flags),
        .data_write_flags(data_write_flags),
        .en_write_ip(en_write_ip),
        .data_write_ip(data_write_ip),

        .r_read_a(r_read_a),
        .r_read_b(r_read_b),
        .r_flags(r_flags),
        .r_ip(r_ip),
        .r_cs(r_cs),
        .r_ds(r_ds)
    );

    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_registers.mem", testvector);
        clk = 0;
        vectornum = 0;
        errors = 0;
        rst = 1;
        initialized = 0;
        #10; 
        rst = 0;
        initialized = 1;
    end

    always @(posedge clk) begin
        $display("Loaded test %d", vectornum);
        {rst, sel_read_a, sel_read_b, exchange_a_b, en_write_reg, sel_write_reg, data_write_reg, en_write_flags, data_write_flags, en_write_ip, data_write_ip, exp_read_a, exp_read_b, exp_flags, exp_ip, exp_cs, exp_ds} = testvector[vectornum];
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            if (({r_read_a, r_read_b, r_flags, r_ip, r_cs, r_ds} !== {exp_read_a, exp_read_b, exp_flags, exp_ip, exp_cs, exp_ds})) begin
                // This looks ugly because I want the output to be aligned!
                if (rst) begin
                    $display("Reset was requested");
                end
                if (exchange_a_b) begin
                    $display("Exchange was requested");
                end
                $display("Error: write bank[%b] = data=%b (en=%b)", sel_write_reg, data_write_reg,   en_write_reg);
                $display("       write      flags = %b      (en=%b)",          data_write_flags, en_write_flags);
                $display("       write         ip = %b      (en=%b)",          data_write_ip,    en_write_ip);
                $display("       bank[%b] = %b (expected = %b)", sel_read_a, r_read_a, exp_read_a);
                $display("       bank[%b] = %b (expected = %b)", sel_read_b, r_read_b, exp_read_b);
                $display("            flags = %b (expected = %b)",             r_flags,  exp_flags);
                $display("               ip = %b (expected = %b)",             r_ip,     exp_ip);
                $display("               cs = %b (expected = %b)",             r_cs,     exp_cs);
                $display("               ds = %b (expected = %b)",             r_ds,     exp_ds);
                errors = errors + 1;
            end
            vectornum = vectornum + 1;

            if ( testvector [vectornum] === 'bX) begin
                $display("%d test completed with %d errors", vectornum, errors);
                $finish;
            end
        end
     end
endmodule
