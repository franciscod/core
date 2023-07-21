`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2023 07:18:58 PM
// Design Name: 
// Module Name: core
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


module core(
    input         clk,
    input         rst,

    input  [15:0] instruction,
    input  [7:0]  mem_load,

    output        mem_en_store,
    output        mem_en_load,
    output [7:0]  mem_store,
    output [9:0]  mem_addr,  // para load y para store
    output [8:0]  instruction_addr,

    input  [7:0]  io_input,
    output [7:0]  io_output
);
    wire [3:0] op_code;
    wire [2:0] subop_code;
    wire [9:0] addr_imm;        
    wire [7:0] imm;
    wire [3:0] sel_ra;
    wire [3:0] sel_rb;
    wire       shift_logical;
    wire [2:0] shift_imm;
    wire [3:0] setcc_mask;
    wire [3:0] setcc_expected;

    wire [7:0] reg_a;
    wire [7:0] reg_b;
    wire [7:0] alu_out;

    wire [3:0] alu_flags;

    wire [7:0] flags;
    wire       skip = flags[7];
    wire       setcc_s;

    wire [7:0] ip;
    wire [7:0] cs;
    wire [7:0] ds;

    wire doing_movr   = op_code == 0;
    wire doing_xchg   = op_code == 1;
    wire doing_loadr  = op_code == 2;
    wire doing_storer = op_code == 3;
    wire doing_setcc  = op_code == 5;
    wire doing_alu    = op_code == 6;
    wire doing_movi   = op_code == 7;
    wire doing_loadi  = op_code == 8;
    wire doing_storei = op_code == 9;

    wire doing_load  = doing_loadi  | doing_loadr;
    wire doing_store = doing_storei | doing_storer;
    wire is_load_from_imm = doing_storei | doing_loadi;
    wire write_register = doing_movr | doing_load | doing_alu | doing_movi;
    wire write_flag = doing_alu | doing_setcc;

    wire [7:0] io_load;
    wire [7:0] load_result = mem_en_load ? mem_load : io_load;

    reg [9:0] addr;
    always @(*) begin
        if (is_load_from_imm) addr <= addr_imm;
        else addr <= (ds << 2) + reg_b;
    end

    reg [7:0] write_arg;
    always @(*) begin
        case ({doing_movr, doing_load, doing_alu, doing_movi})
            4'b1000: write_arg <= reg_b;
            4'b0100: write_arg <= load_result;
            4'b0010: write_arg <= alu_out;
            4'b0001: write_arg <= imm;
        endcase
    end

    reg [7:0] flags_arg;
    always @(*) begin
        if (doing_alu) flags_arg <= { flags[7:4],  alu_flags };
        else flags_arg <= { setcc_s,  flags[6:0] }; // doing_setcc
    end

    assign instruction_addr = (cs << 2) + ip;

    reg  [15:0] instruction_reg;
    always @(posedge clk) begin
        instruction_reg <= instruction;
    end

    assign mem_store = mem_en_store ? reg_a : 10'bz;
    assign mem_addr  = mem_en_load | mem_en_store ? addr : 10'bz;

    ir ir(
        .data(instruction_reg),
        .skip(skip),

        .op_code(op_code),
        .subop_code(subop_code),
        .addr(addr_imm),
        .imm(imm),
        .sel_ra(sel_ra),
        .sel_rb(sel_rb),
        .shift_logical(shift_logical),
        .shift_imm(shift_imm),
        .setcc_mask(setcc_mask),
        .setcc_expected(setcc_expected)
    );

    alu alu(
        .op(subop_code),
        .a(reg_a),
        .b(reg_b),
        .shift_logical(shift_logical),
        .shift_imm(shift_imm),
        .r(alu_out),
        .flags(alu_flags)
    );

    setcc_logic setcc_logic(
      .previous_s(skip),
      .op(subop_code),
      .mask(setcc_mask),
      .expected_flags(setcc_expected),
      .current_flags(flags[3:0]),

      .s(setcc_s)
    );

    io io(
        .clk(clk),
        .en_store(doing_store),
        .addr_store(addr),
        .data_store(reg_a),
        .en_load(doing_load),
        .addr_load(addr),
        .data_load(io_load),
        .io_input(io_input),
        .io_output(io_output),
        .mem_en_load(mem_en_load),
        .mem_en_store(mem_en_store)
    );

    registers registers(
        .clk(clk),
        .rst(rst),
        .sel_read_a(sel_ra),
        .sel_read_b(sel_rb),
        .exchange_a_b(doing_xchg),
        .en_write_reg(write_register),
        .sel_write_reg(sel_ra),
        .data_write_reg(write_arg),

        .en_write_flags(write_flag),
        .data_write_flags(flags_arg),
        .en_write_ip(1),
        .data_write_ip(ip+1),

        .r_read_a(reg_a),
        .r_read_b(reg_b),
        .r_flags(flags),
        .r_ip(ip),
        .r_cs(cs),
        .r_ds(ds)
    );
endmodule
