`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2023 06:17:18 PM
// Design Name: 
// Module Name: mem_test
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


module mem_test(

    );
    
    reg        clk;
    reg        en_store;
    reg  [9:0] addr_store;
    reg  [7:0] data_store;
    reg        en_load;
    reg  [9:0] addr_load;
    wire [7:0] res_data_load;
    reg  [7:0] exp_data_load;
    
    mem dut(
        .clk(clk),
        .en_store(en_store),
        .addr_store(addr_store),
        .data_store(data_store),    
        .en_load(en_load),
        .addr_load(addr_load),
        .data_load(res_data_load)
    );
    
    reg [31:0] vectornum, errors, initialized;
    reg [37:0] testvector [0:1000];
   
    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_mem.mem", testvector);
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
        {en_store, addr_store, data_store, en_load, addr_load, exp_data_load} = testvector[vectornum];
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            if (res_data_load !== exp_data_load) begin
                $display("Error: mem[%b] = %b (expected = %b)", addr_load, res_data_load, exp_data_load);
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
