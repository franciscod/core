`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2023 08:44:20 PM
// Design Name: 
// Module Name: core_test
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


module core_test(); 
    
    reg         clk;
    reg         rst;
    
    reg  [15:0] instruction;
    reg  [ 7:0] data_in;
    
    wire        en_store;
    wire        en_load;
    wire [ 7:0] data_out;
    wire [ 9:0] addr;
    wire [ 8:0] ip;
    
    reg         exp_en_store;
    reg         exp_en_load;
    reg  [ 7:0] exp_data_out;
    reg  [ 9:0] exp_addr;
    reg  [ 8:0] exp_ip;
    
    core dut(
        .clk(clk),
        .rst(rst),
        .instruction(instruction),
        .mem_load(data_in),
        
        .mem_en_store(en_store),    
        .mem_en_load(en_load),
        .mem_store(data_out),
        .mem_addr(addr),
        .instruction_addr(ip)
    );
    
    reg [31:0] vectornum, errors, initialized, fail;
    reg [53:0] testvector [0:1000];
    reg [53:0] testword;
   
    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_core.mem", testvector);
        clk = 0;
        vectornum = 0;
        errors = 0;
        initialized = 0;
        #10; 
        initialized = 1;
    end

    always @(posedge clk) begin
        $display("Loaded test %d", vectornum);
        testword = testvector[vectornum];
        {rst, exp_ip, instruction, exp_en_store, exp_en_load, exp_addr, data_in, exp_data_out} = testword;
        
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            fail = 0;
            
            if (exp_ip !== 9'bX && exp_ip !== ip) begin
                fail = 1;
                $display("Error: ip     expected = %b, actual = %b", 
                    exp_ip, ip);
            end
            if (exp_en_store !== 1'bX && exp_en_store !== en_store) begin
                fail = 1;
                $display("Error: en_store     expected = %b, actual = %b", 
                    exp_en_store, en_store);
            end
            if (exp_en_load !== 1'bX && exp_en_load !== en_load) begin
                fail = 1;
                $display("Error: en_load     expected = %b, actual = %b", 
                    exp_en_load, en_load);
            end
            if (exp_addr !== 10'bX && exp_addr !== addr) begin
                fail = 1;
                $display("Error: addr     expected = %b, actual = %b", 
                    exp_addr, addr);
            end
            if (exp_data_out !== 8'bX && exp_data_out !== data_out) begin
                fail = 1;
                $display("Error: data_out expected = %b, actual = %b",  
                    exp_data_out, data_out);
            end
            
            if (fail) begin
                $display("Error: fijate arriba crack");
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