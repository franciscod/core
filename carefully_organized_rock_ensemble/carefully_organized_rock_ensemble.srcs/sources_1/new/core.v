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
    output [8:0]  instruction_addr
    );
        
       
    
    wire [3:0] op_code;     // TODO: control
    wire [2:0] subop_code;  // TODO: setcc
    wire [9:0] addr_imm;        
    wire [7:0] imm;
    wire [3:0] sel_ra;
    wire [3:0] sel_rb;
    wire       shift_logical;
    wire [2:0] shift_imm;
    wire       setcc_mask;
    wire       setcc_expected;

    wire [7:0] reg_a;
    wire [7:0] reg_b;
    wire [7:0] alu_out;

    wire [3:0] alu_flags;

    wire [7:0] flags;
    wire       skip = flags[7];
    wire       setcc_s;

    wire [7:0] cs;
    wire [7:0] ds;
    
    

    wire [9:0] addr;
    
    wire doing_store_imm = op_code == 9;
    wire doing_load_imm  = op_code == 8;
    
    wire doing_load  = doing_load_imm
                    || op_code == 2 // loadr
                     ;
    wire doing_store = doing_store_imm
                    || op_code == 3 // storer
                     ;

    wire doing_setcc = op_code == 5;
    wire doing_alu   = op_code == 6;
    wire doing_movr  = op_code == 0;
    wire doing_movi  = op_code == 7;
    wire doing_xchg  = op_code == 1;

    wire [7:0] write_arg;
    wire [7:0] flags_arg;

    
    ir ir(
        .data(instruction),
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
    
    assign addr = doing_store ? (doing_store_imm ? addr_imm : ((ds << 2) + reg_b))
                : doing_load  ? (doing_load_imm  ? addr_imm : ((ds << 2) + reg_b))
                : 10'bX;
    
    assign mem_en_store = doing_store;
    assign mem_en_load  = doing_load;
    assign mem_addr = addr;
    assign mem_store = reg_a;
    
    
    assign write_arg = doing_movr ? reg_b
                     : doing_movi ? imm
                     : doing_load ? mem_load
                     : doing_alu  ? alu_out
                     : 8'bX;

    assign flags_arg = doing_alu   ? { flags[7:4],  alu_flags }
                     : doing_setcc ? { setcc_s,  flags[6:0] }
                     : 8'bX;
                     
    wire [7:0] ip;
    assign instruction_addr = (cs << 2) + ip;
    
    registers registers(
        .clk(clk),
        .rst(rst),
        .sel_read_a(sel_ra),
        .sel_read_b(sel_rb),
        .exchange_a_b(doing_xchg),
        .en_write_reg(doing_movr | doing_load | doing_alu | doing_movi),
        .sel_write_reg(sel_ra),
        .data_write_reg(write_arg),

        .en_write_flags(doing_alu | doing_setcc),
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
