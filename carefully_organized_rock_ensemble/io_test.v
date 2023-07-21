`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2023 21:25:10
// Design Name: 
// Module Name: io_test
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


module io_test();
    reg        clk;
    reg        en_store;
    reg  [9:0] addr_store;
    reg  [7:0] data_store;
    reg        en_load;
    reg  [9:0] addr_load;
    wire [7:0] res_data_load;
    reg  [7:0] exp_data_load;

    reg  [7:0] io_input;
    wire [7:0] res_io_output;
    reg  [7:0] exp_io_output;

    wire       res_mem_en_load;
    reg        exp_mem_en_load;
    wire       res_mem_en_store;
    reg        exp_mem_en_store;

    io io(
        .clk(clk),
        .en_store(en_store),
        .addr_store(addr_store),
        .data_store(data_store),    
        .en_load(en_load),
        .addr_load(addr_load),
        .data_load(res_data_load),
        .io_input(io_input),
        .io_output(res_io_output),
        .mem_en_load(res_mem_en_load),
        .mem_en_store(res_mem_en_store)
    );
    
    reg [55:0] vectornum, errors, initialized;
    reg [55:0] testvector [0:1000];
   
    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_io.mem", testvector);
        clk = 0;
        vectornum = 0;
        errors = 0;
        // rst = 1;
        initialized = 0;
        #10; 
        // rst = 0;
        initialized = 1;
    end

    always @(posedge clk) begin
        $display("Loaded test %d", vectornum);
        {en_store, addr_store, exp_mem_en_store, data_store, en_load, addr_load, exp_mem_en_load, exp_data_load, io_input, exp_io_output} = testvector[vectornum];
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            if (res_data_load !== exp_data_load) begin
                $display("Error: io load = %b (expected = %b)", res_data_load, exp_data_load);
                errors = errors + 1;
            end
            if (res_io_output !== exp_io_output) begin
                $display("Error: io output = %b (expected = %b)", res_io_output, exp_io_output);
                errors = errors + 1;
            end
            if (res_mem_en_load !== exp_mem_en_load) begin
                $display("Error: io input did not fallback to memoty correctly %b (expected = %b)", res_mem_en_load, exp_mem_en_load);
                errors = errors + 1;
            end
            if (res_mem_en_store !== exp_mem_en_store) begin
                $display("Error: io output did not fallback to memoty correctly %b (expected = %b)", res_mem_en_store, exp_mem_en_store);
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
