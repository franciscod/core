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


module progrunner_test();
    reg DEBUG_LOAD   = 'b1;
    reg DEBUG_STORE  = 'b1;
    reg DEBUG_IO_IN  = 'b1;
    reg DEBUG_IO_OUT = 'b1;

    reg         clk;
    reg         rst;

    wire [15:0] instruction;
    wire [ 7:0] data_in;

    wire        en_store;
    wire        en_load;
    wire [ 7:0] data_out;
    wire [ 9:0] addr;
    wire [ 8:0] ip;

    reg  [ 7:0] io_input;
    wire [ 7:0] io_output;
    reg  [ 7:0] exp_io_output;

    core dut(
        .clk(clk),
        .rst(rst),
        .instruction(instruction),
        .mem_load(data_in),

        .mem_en_store(en_store),    
        .mem_en_load(en_load),
        .mem_store(data_out),
        .mem_addr(addr),
        .instruction_addr(ip),

        .io_input(io_input),
        .io_output(io_output)
    );

    mem mem(
        .clk(clk),
        .en_store(en_store),
        .addr_store(addr),
        .data_store(data_out),    
        .en_load(en_load),
        .addr_load(addr),
        .data_load(data_in)
    );

    reg         initialized;
    reg  [31:0] clock_count;
    reg  [15:0] code_vector [0:1000];
    reg  [39:0] io_in_vector [0:1000];
    wire [31:0] io_in_next_change;
    wire [ 7:0] io_in_next_value;
    reg  [31:0] io_in_idx;
    reg  [ 7:0] prev_io_output;
    assign { io_in_next_change, io_in_next_value } = io_in_vector[io_in_idx];
    always @(posedge clk) begin
        if (clock_count == io_in_next_change) begin
            io_in_idx <= io_in_idx + 1;
            io_input <= io_in_next_value;
            if (DEBUG_IO_IN) begin
                $display("[%8x:ioin] changed -> 0b%b == %d", clock_count, io_in_next_value, io_in_next_value);
            end
        end
    end

    always #5 clk = ~clk;

    initial begin
        //$readmemb("fib_code.mem", code_vector);
        $readmemb("xorshift_code.mem", code_vector);
        $readmemb("no_io_signals", io_in_vector);
        clk = 0;
        rst = 1;
        initialized = 0;
        clock_count = 0;
        #20;
        rst = 0; 
        initialized = 1;
    end

    assign instruction = code_vector[ip];

    always @(posedge clk) begin
        if (initialized == 1) begin
            if (instruction === 'bX) begin
                $display("tried to fetch out of instruction bounds, finishing.");
                $finish;
            end
        end
    end

    always @(negedge clk) begin
        if (initialized == 1) begin
            clock_count <= clock_count + 1;
            prev_io_output <= io_output;

            if (DEBUG_LOAD && en_store === 1'b1) begin
                $display("[%8x:%x:stor] mem[%x] <- 0b%b == %d", clock_count, ip, addr, data_out, data_out);
            end
            if (DEBUG_STORE && en_load === 1'b1) begin
                $display("[%8x:%x:load] mem[%x] -> 0b%b == %d", clock_count, ip, addr, data_in, data_in);
            end
            if (DEBUG_IO_OUT && prev_io_output != io_output) begin
                $display("[%8x:%x:iout] changed  -> 0b%b == %d", clock_count, ip, io_output, io_output);
            end
        end
    end
endmodule
