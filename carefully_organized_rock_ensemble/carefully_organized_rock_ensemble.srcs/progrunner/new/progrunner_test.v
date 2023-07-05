`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2023 06:31:13 PM
// Design Name: 
// Module Name: runner2_test
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


module progrunner_test(

    );
    reg         clk;
    reg         rst;
    
    reg  [15:0] instruction;
    reg  [ 7:0] data_in;
    
    wire        en_store;
    wire        en_load;
    wire [ 7:0] data_out;
    wire [ 9:0] addr;
    wire [ 8:0] ip;
    
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
    
    reg [15:0] progvector [0:1000];
    reg initialized;
   
    always #5 clk = ~clk;

    initial begin
        $readmemb("testdata_progrunner.mem", progvector);
        clk = 0;
        rst = 1;
        initialized = 0;
        #20;
        rst = 0; 
        initialized = 1;
    end

    always @(posedge clk) begin
        if (initialized == 1) begin
            instruction = progvector[ip];
            
            if (instruction === 'bX) begin
                $display("tried to fetch out of instruction bounds, finishing.");
                $finish;
            end
        end
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            if (en_store === 1'b1) begin
                $display("store: mem[%x] <- 0b%b == %d", addr, data_out, data_out);
            end

        end
    end
   
    
endmodule
