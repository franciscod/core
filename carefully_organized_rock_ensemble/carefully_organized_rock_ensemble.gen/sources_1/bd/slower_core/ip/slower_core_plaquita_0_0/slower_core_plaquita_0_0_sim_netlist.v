// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jul 18 20:25:58 2023
// Host        : yintu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/core/carefully_organized_rock_ensemble/carefully_organized_rock_ensemble.gen/sources_1/bd/slower_core/ip/slower_core_plaquita_0_0/slower_core_plaquita_0_0_sim_netlist.v
// Design      : slower_core_plaquita_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "slower_core_plaquita_0_0,plaquita,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "plaquita,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module slower_core_plaquita_0_0
   (sysclk,
    sw,
    btn,
    led);
  input sysclk;
  input [3:0]sw;
  input [3:0]btn;
  output [3:0]led;

  wire [3:0]btn;
  wire [3:0]led;
  wire [3:0]sw;
  wire sysclk;

  slower_core_plaquita_0_0_plaquita inst
       (.D({sw,btn}),
        .\bank[2][7]_i_20 (sysclk),
        .led(led),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module slower_core_plaquita_0_0_alu
   (O,
    CO,
    a_sub_b_carry__0_i_4,
    \bank[2][3]_i_3 ,
    \bank[2][7]_i_11 ,
    reg_a,
    S,
    \bank[2][4]_i_12 ,
    reg_b);
  output [3:0]O;
  output [0:0]CO;
  output [3:0]a_sub_b_carry__0_i_4;
  output [3:0]\bank[2][3]_i_3 ;
  output [3:0]\bank[2][7]_i_11 ;
  input [7:0]reg_a;
  input [3:0]S;
  input [3:0]\bank[2][4]_i_12 ;
  input [7:0]reg_b;

  wire [0:0]CO;
  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]a_sub_b_carry__0_i_4;
  wire a_sub_b_carry__0_n_1;
  wire a_sub_b_carry__0_n_2;
  wire a_sub_b_carry__0_n_3;
  wire a_sub_b_carry_n_0;
  wire a_sub_b_carry_n_1;
  wire a_sub_b_carry_n_2;
  wire a_sub_b_carry_n_3;
  wire [3:0]\bank[2][3]_i_3 ;
  wire [3:0]\bank[2][4]_i_12 ;
  wire [3:0]\bank[2][7]_i_11 ;
  wire [7:0]reg_a;
  wire [7:0]reg_b;

  CARRY4 a_sub_b_carry
       (.CI(1'b0),
        .CO({a_sub_b_carry_n_0,a_sub_b_carry_n_1,a_sub_b_carry_n_2,a_sub_b_carry_n_3}),
        .CYINIT(1'b1),
        .DI(reg_a[3:0]),
        .O(O),
        .S(S));
  CARRY4 a_sub_b_carry__0
       (.CI(a_sub_b_carry_n_0),
        .CO({CO,a_sub_b_carry__0_n_1,a_sub_b_carry__0_n_2,a_sub_b_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(reg_a[7:4]),
        .O(a_sub_b_carry__0_i_4),
        .S(\bank[2][4]_i_12 ));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[2][2]_i_19 
       (.I0(reg_a[3]),
        .I1(reg_b[3]),
        .O(\bank[2][3]_i_3 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[2][2]_i_20 
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .O(\bank[2][3]_i_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[2][2]_i_21 
       (.I0(reg_a[1]),
        .I1(reg_b[1]),
        .O(\bank[2][3]_i_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[2][2]_i_22 
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .O(\bank[2][3]_i_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[8][3]_i_10 
       (.I0(reg_a[7]),
        .I1(reg_b[7]),
        .O(\bank[2][7]_i_11 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[8][3]_i_11 
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .O(\bank[2][7]_i_11 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[8][3]_i_12 
       (.I0(reg_a[5]),
        .I1(reg_b[5]),
        .O(\bank[2][7]_i_11 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \bank[8][3]_i_13 
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .O(\bank[2][7]_i_11 [0]));
endmodule

(* ORIG_REF_NAME = "core" *) 
module slower_core_plaquita_0_0_core
   (instruction_reg_reg_0,
    addr,
    instruction_reg_reg_1,
    instruction_reg_reg_2,
    instruction_reg_reg_3,
    data_out,
    led,
    sysclk,
    data_load0,
    D);
  output instruction_reg_reg_0;
  output [9:0]addr;
  output instruction_reg_reg_1;
  output instruction_reg_reg_2;
  output instruction_reg_reg_3;
  output [7:0]data_out;
  output [3:0]led;
  input sysclk;
  input [7:0]data_load0;
  input [7:0]D;

  wire [7:0]D;
  wire [9:0]addr;
  wire [7:2]addr1;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_10;
  wire alu_n_11;
  wire alu_n_12;
  wire alu_n_13;
  wire alu_n_14;
  wire alu_n_15;
  wire alu_n_16;
  wire alu_n_2;
  wire alu_n_3;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire [0:0]\bank_reg[9]_0 ;
  wire [1:1]\bank_reg[9]__0 ;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire [6:2]instruction_addr0;
  wire instruction_addr_carry__0_n_2;
  wire instruction_addr_carry__0_n_3;
  wire instruction_addr_carry_n_0;
  wire instruction_addr_carry_n_1;
  wire instruction_addr_carry_n_2;
  wire instruction_addr_carry_n_3;
  wire [15:0]instruction_reg;
  wire instruction_reg_reg_0;
  wire instruction_reg_reg_1;
  wire instruction_reg_reg_2;
  wire instruction_reg_reg_3;
  wire [3:0]led;
  wire [7:0]load_register;
  wire [7:0]reg_a;
  wire [7:0]reg_b;
  wire registers_n_26;
  wire registers_n_27;
  wire registers_n_28;
  wire registers_n_29;
  wire registers_n_52;
  wire registers_n_53;
  wire registers_n_54;
  wire registers_n_6;
  wire registers_n_61;
  wire registers_n_62;
  wire registers_n_63;
  wire registers_n_7;
  wire registers_n_8;
  wire registers_n_9;
  wire [7:1]sel;
  wire [7:4]store_register;
  wire store_register0;
  wire sysclk;
  wire words_reg_0_255_0_0_i_28_n_0;
  wire words_reg_0_255_0_0_i_29_n_0;
  wire words_reg_0_255_0_0_i_30_n_0;
  wire words_reg_0_255_0_0_i_32_n_0;
  wire words_reg_0_255_0_0_i_33_n_0;
  wire words_reg_0_255_0_0_i_34_n_0;
  wire [3:2]NLW_instruction_addr_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_instruction_addr_carry__0_O_UNCONNECTED;
  wire [15:0]NLW_instruction_reg_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_instruction_reg_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_instruction_reg_reg_DOPBDOP_UNCONNECTED;

  slower_core_plaquita_0_0_alu alu
       (.CO(alu_n_4),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .S({registers_n_6,registers_n_7,registers_n_8,registers_n_9}),
        .a_sub_b_carry__0_i_4({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\bank[2][3]_i_3 ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\bank[2][4]_i_12 ({registers_n_26,registers_n_27,registers_n_28,registers_n_29}),
        .\bank[2][7]_i_11 ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .reg_a(reg_a),
        .reg_b(reg_b));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 instruction_addr_carry
       (.CI(1'b0),
        .CO({instruction_addr_carry_n_0,instruction_addr_carry_n_1,instruction_addr_carry_n_2,instruction_addr_carry_n_3}),
        .CYINIT(1'b0),
        .DI({instruction_addr0[4:2],1'b0}),
        .O(sel[4:1]),
        .S({registers_n_52,registers_n_53,registers_n_54,\bank_reg[9]__0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 instruction_addr_carry__0
       (.CI(instruction_addr_carry_n_0),
        .CO({NLW_instruction_addr_carry__0_CO_UNCONNECTED[3:2],instruction_addr_carry__0_n_2,instruction_addr_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,instruction_addr0[6:5]}),
        .O({NLW_instruction_addr_carry__0_O_UNCONNECTED[3],sel[7:5]}),
        .S({1'b0,registers_n_61,registers_n_62,registers_n_63}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "inst/dut/instruction_reg_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7B5E66FA30AE7F4BFFFB20AE68FA109E79BE66FA30AE00237346712570177012),
    .INIT_01(256'h581062335E00687320AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA109E),
    .INIT_02(256'h6779581062BBBFEB5E007269677958116244BFE45E0000237346712570596779),
    .INIT_03(256'h581062335E00687376D9677958105E006AB420AE68FA109E79BE66FA30AE72C9),
    .INIT_04(256'h109E7B5E66FA30AE7F4BFFFB70FB7029677958105E006AB2707B667272596779),
    .INIT_05(256'h66FA30AE7F4BFFFB70FB20AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA),
    .INIT_06(256'h7F4BFFFB708B20AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA109E7B5E),
    .INIT_07(256'h702B20AE68FA109E7B5E66FA30AE7F4BFFFB704B20AE68FA109E7B5E66FA30AE),
    .INIT_08(256'h68FA109E7B5E66FA30AE7F4BFFFB701B20AE68FA109E7B5E66FA30AE7F4BFFFB),
    .INIT_09(256'h6E1B005B64B66CFB006B700920AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE),
    .INIT_0A(256'h702B00E9701B66B9605B706B64B66CDB005B64B56E1B006B64B56CFB005B64B6),
    .INIT_0B(256'h68FA109E7C7E66FA30AE20AE68FA109E7C7E66FA30AE00E9708B00E9704B00E9),
    .INIT_0C(256'h000000000000000000007FAB5E0066FA30AB00E97B5967795810687B5E0020AE),
    .INIT_0D(256'h68FA7CB967795810687B00000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000E920AB),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    instruction_reg_reg
       (.ADDRARDADDR({1'b0,1'b0,sel,\bank_reg[9]_0 ,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(sysclk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(instruction_reg),
        .DOBDO(NLW_instruction_reg_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_instruction_reg_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_instruction_reg_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  slower_core_plaquita_0_0_io io
       (.D(D),
        .E(store_register0),
        .Q({store_register,led}),
        .\load_register_reg[7]_0 (load_register),
        .reg_a(reg_a),
        .sysclk(sysclk));
  slower_core_plaquita_0_0_registers registers
       (.CO(alu_n_4),
        .D(D[4]),
        .DOADO(instruction_reg),
        .E(store_register0),
        .O({alu_n_0,alu_n_1,alu_n_2,alu_n_3}),
        .Q({store_register,led}),
        .S({registers_n_6,registers_n_7,registers_n_8,registers_n_9}),
        .a_sub_b_carry__0_i_5_0({registers_n_26,registers_n_27,registers_n_28,registers_n_29}),
        .addr(addr[7:0]),
        .\bank[2][0]_i_18_0 ({alu_n_9,alu_n_10,alu_n_11,alu_n_12}),
        .\bank[2][4]_i_14_0 ({alu_n_13,alu_n_14,alu_n_15,alu_n_16}),
        .\bank[2][7]_i_13_0 (load_register),
        .\bank_reg[12][2]_0 ({registers_n_52,registers_n_53,registers_n_54,\bank_reg[9]__0 }),
        .\bank_reg[12][4]_0 (instruction_addr0),
        .\bank_reg[12][5]_0 ({registers_n_61,registers_n_62,registers_n_63}),
        .\bank_reg[13][5]_0 (addr1),
        .\bank_reg[8][2]_i_4_0 ({alu_n_5,alu_n_6,alu_n_7,alu_n_8}),
        .\bank_reg[9][0]_0 (\bank_reg[9]_0 ),
        .data_load0(data_load0),
        .data_out(data_out),
        .instruction_reg_reg(instruction_reg_reg_0),
        .instruction_reg_reg_0(addr[8]),
        .instruction_reg_reg_1(addr[9]),
        .instruction_reg_reg_2(instruction_reg_reg_1),
        .instruction_reg_reg_3(instruction_reg_reg_2),
        .instruction_reg_reg_4(instruction_reg_reg_3),
        .reg_a(reg_a),
        .reg_b(reg_b),
        .sysclk(sysclk),
        .words_reg_0_255_0_0_i_18_0({words_reg_0_255_0_0_i_28_n_0,words_reg_0_255_0_0_i_29_n_0,words_reg_0_255_0_0_i_30_n_0}),
        .words_reg_0_255_0_0_i_22_0({words_reg_0_255_0_0_i_32_n_0,words_reg_0_255_0_0_i_33_n_0,words_reg_0_255_0_0_i_34_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_28
       (.I0(addr1[7]),
        .I1(reg_b[7]),
        .O(words_reg_0_255_0_0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_29
       (.I0(addr1[6]),
        .I1(reg_b[6]),
        .O(words_reg_0_255_0_0_i_29_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_30
       (.I0(addr1[5]),
        .I1(reg_b[5]),
        .O(words_reg_0_255_0_0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_32
       (.I0(addr1[4]),
        .I1(reg_b[4]),
        .O(words_reg_0_255_0_0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_33
       (.I0(addr1[3]),
        .I1(reg_b[3]),
        .O(words_reg_0_255_0_0_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_34
       (.I0(addr1[2]),
        .I1(reg_b[2]),
        .O(words_reg_0_255_0_0_i_34_n_0));
endmodule

(* ORIG_REF_NAME = "io" *) 
module slower_core_plaquita_0_0_io
   (Q,
    \load_register_reg[7]_0 ,
    E,
    reg_a,
    sysclk,
    D);
  output [7:0]Q;
  output [7:0]\load_register_reg[7]_0 ;
  input [0:0]E;
  input [7:0]reg_a;
  input sysclk;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]\load_register_reg[7]_0 ;
  wire [7:0]reg_a;
  wire sysclk;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\load_register_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\load_register_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\load_register_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\load_register_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\load_register_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\load_register_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\load_register_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\load_register_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[0] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[1] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[2] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[3] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[4] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[5] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[6] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[7] 
       (.C(sysclk),
        .CE(E),
        .D(reg_a[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module slower_core_plaquita_0_0_mem
   (data_load0,
    \bank[2][7]_i_20_0 ,
    data_out,
    \bank[2][7]_i_20_1 ,
    addr,
    \bank[2][7]_i_20_2 ,
    \bank[2][7]_i_20_3 ,
    \bank[2][7]_i_20_4 );
  output [7:0]data_load0;
  input \bank[2][7]_i_20_0 ;
  input [7:0]data_out;
  input \bank[2][7]_i_20_1 ;
  input [9:0]addr;
  input \bank[2][7]_i_20_2 ;
  input \bank[2][7]_i_20_3 ;
  input \bank[2][7]_i_20_4 ;

  wire [9:0]addr;
  wire \bank[2][7]_i_20_0 ;
  wire \bank[2][7]_i_20_1 ;
  wire \bank[2][7]_i_20_2 ;
  wire \bank[2][7]_i_20_3 ;
  wire \bank[2][7]_i_20_4 ;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire words_reg_0_255_0_0_n_0;
  wire words_reg_0_255_1_1_n_0;
  wire words_reg_0_255_2_2_n_0;
  wire words_reg_0_255_3_3_n_0;
  wire words_reg_0_255_4_4_n_0;
  wire words_reg_0_255_5_5_n_0;
  wire words_reg_0_255_6_6_n_0;
  wire words_reg_0_255_7_7_n_0;
  wire words_reg_256_511_0_0_n_0;
  wire words_reg_256_511_1_1_n_0;
  wire words_reg_256_511_2_2_n_0;
  wire words_reg_256_511_3_3_n_0;
  wire words_reg_256_511_4_4_n_0;
  wire words_reg_256_511_5_5_n_0;
  wire words_reg_256_511_6_6_n_0;
  wire words_reg_256_511_7_7_n_0;
  wire words_reg_512_767_0_0_n_0;
  wire words_reg_512_767_1_1_n_0;
  wire words_reg_512_767_2_2_n_0;
  wire words_reg_512_767_3_3_n_0;
  wire words_reg_512_767_4_4_n_0;
  wire words_reg_512_767_5_5_n_0;
  wire words_reg_512_767_6_6_n_0;
  wire words_reg_512_767_7_7_n_0;
  wire words_reg_768_1023_0_0_n_0;
  wire words_reg_768_1023_1_1_n_0;
  wire words_reg_768_1023_2_2_n_0;
  wire words_reg_768_1023_3_3_n_0;
  wire words_reg_768_1023_4_4_n_0;
  wire words_reg_768_1023_5_5_n_0;
  wire words_reg_768_1023_6_6_n_0;
  wire words_reg_768_1023_7_7_n_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][0]_i_10 
       (.I0(words_reg_768_1023_0_0_n_0),
        .I1(words_reg_512_767_0_0_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_0_0_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_0_0_n_0),
        .O(data_load0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_10 
       (.I0(words_reg_768_1023_1_1_n_0),
        .I1(words_reg_512_767_1_1_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_1_1_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_1_1_n_0),
        .O(data_load0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_10 
       (.I0(words_reg_768_1023_2_2_n_0),
        .I1(words_reg_512_767_2_2_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_2_2_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_2_2_n_0),
        .O(data_load0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_10 
       (.I0(words_reg_768_1023_3_3_n_0),
        .I1(words_reg_512_767_3_3_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_3_3_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_3_3_n_0),
        .O(data_load0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_10 
       (.I0(words_reg_768_1023_4_4_n_0),
        .I1(words_reg_512_767_4_4_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_4_4_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_4_4_n_0),
        .O(data_load0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_10 
       (.I0(words_reg_768_1023_5_5_n_0),
        .I1(words_reg_512_767_5_5_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_5_5_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_5_5_n_0),
        .O(data_load0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][6]_i_10 
       (.I0(words_reg_768_1023_6_6_n_0),
        .I1(words_reg_512_767_6_6_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_6_6_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_6_6_n_0),
        .O(data_load0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_20 
       (.I0(words_reg_768_1023_7_7_n_0),
        .I1(words_reg_512_767_7_7_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_7_7_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_7_7_n_0),
        .O(data_load0[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_0_0
       (.A(addr[7:0]),
        .D(data_out[0]),
        .O(words_reg_0_255_0_0_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_1_1
       (.A(addr[7:0]),
        .D(data_out[1]),
        .O(words_reg_0_255_1_1_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_2_2
       (.A(addr[7:0]),
        .D(data_out[2]),
        .O(words_reg_0_255_2_2_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_3_3
       (.A(addr[7:0]),
        .D(data_out[3]),
        .O(words_reg_0_255_3_3_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_4_4
       (.A(addr[7:0]),
        .D(data_out[4]),
        .O(words_reg_0_255_4_4_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_5_5
       (.A(addr[7:0]),
        .D(data_out[5]),
        .O(words_reg_0_255_5_5_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_6_6
       (.A(addr[7:0]),
        .D(data_out[6]),
        .O(words_reg_0_255_6_6_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_0_255_7_7
       (.A(addr[7:0]),
        .D(data_out[7]),
        .O(words_reg_0_255_7_7_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_1 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_0_0
       (.A(addr[7:0]),
        .D(data_out[0]),
        .O(words_reg_256_511_0_0_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_1_1
       (.A(addr[7:0]),
        .D(data_out[1]),
        .O(words_reg_256_511_1_1_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_2_2
       (.A(addr[7:0]),
        .D(data_out[2]),
        .O(words_reg_256_511_2_2_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_3_3
       (.A(addr[7:0]),
        .D(data_out[3]),
        .O(words_reg_256_511_3_3_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_4_4
       (.A(addr[7:0]),
        .D(data_out[4]),
        .O(words_reg_256_511_4_4_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_5_5
       (.A(addr[7:0]),
        .D(data_out[5]),
        .O(words_reg_256_511_5_5_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_6_6
       (.A(addr[7:0]),
        .D(data_out[6]),
        .O(words_reg_256_511_6_6_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_256_511_7_7
       (.A(addr[7:0]),
        .D(data_out[7]),
        .O(words_reg_256_511_7_7_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_2 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_0_0
       (.A(addr[7:0]),
        .D(data_out[0]),
        .O(words_reg_512_767_0_0_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_1_1
       (.A(addr[7:0]),
        .D(data_out[1]),
        .O(words_reg_512_767_1_1_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_2_2
       (.A(addr[7:0]),
        .D(data_out[2]),
        .O(words_reg_512_767_2_2_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_3_3
       (.A(addr[7:0]),
        .D(data_out[3]),
        .O(words_reg_512_767_3_3_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_4_4
       (.A(addr[7:0]),
        .D(data_out[4]),
        .O(words_reg_512_767_4_4_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_5_5
       (.A(addr[7:0]),
        .D(data_out[5]),
        .O(words_reg_512_767_5_5_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_6_6
       (.A(addr[7:0]),
        .D(data_out[6]),
        .O(words_reg_512_767_6_6_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_512_767_7_7
       (.A(addr[7:0]),
        .D(data_out[7]),
        .O(words_reg_512_767_7_7_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_3 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_0_0
       (.A(addr[7:0]),
        .D(data_out[0]),
        .O(words_reg_768_1023_0_0_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_1_1
       (.A(addr[7:0]),
        .D(data_out[1]),
        .O(words_reg_768_1023_1_1_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_2_2
       (.A(addr[7:0]),
        .D(data_out[2]),
        .O(words_reg_768_1023_2_2_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_3_3
       (.A(addr[7:0]),
        .D(data_out[3]),
        .O(words_reg_768_1023_3_3_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_4_4
       (.A(addr[7:0]),
        .D(data_out[4]),
        .O(words_reg_768_1023_4_4_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_5_5
       (.A(addr[7:0]),
        .D(data_out[5]),
        .O(words_reg_768_1023_5_5_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_6_6
       (.A(addr[7:0]),
        .D(data_out[6]),
        .O(words_reg_768_1023_6_6_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst/mem/words_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .IS_WCLK_INVERTED(1'b1)) 
    words_reg_768_1023_7_7
       (.A(addr[7:0]),
        .D(data_out[7]),
        .O(words_reg_768_1023_7_7_n_0),
        .WCLK(\bank[2][7]_i_20_0 ),
        .WE(\bank[2][7]_i_20_4 ));
endmodule

(* ORIG_REF_NAME = "plaquita" *) 
module slower_core_plaquita_0_0_plaquita
   (led,
    sysclk,
    \bank[2][7]_i_20 ,
    D);
  output [3:0]led;
  input sysclk;
  input \bank[2][7]_i_20 ;
  input [7:0]D;

  wire [7:0]D;
  wire [9:0]addr;
  wire \bank[2][7]_i_20 ;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire dut_n_0;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire [3:0]led;
  wire sysclk;

  slower_core_plaquita_0_0_core dut
       (.D(D),
        .addr(addr),
        .data_load0(data_load0),
        .data_out(data_out),
        .instruction_reg_reg_0(dut_n_0),
        .instruction_reg_reg_1(dut_n_11),
        .instruction_reg_reg_2(dut_n_12),
        .instruction_reg_reg_3(dut_n_13),
        .led(led),
        .sysclk(sysclk));
  slower_core_plaquita_0_0_mem mem
       (.addr(addr),
        .\bank[2][7]_i_20_0 (\bank[2][7]_i_20 ),
        .\bank[2][7]_i_20_1 (dut_n_0),
        .\bank[2][7]_i_20_2 (dut_n_11),
        .\bank[2][7]_i_20_3 (dut_n_12),
        .\bank[2][7]_i_20_4 (dut_n_13),
        .data_load0(data_load0),
        .data_out(data_out));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module slower_core_plaquita_0_0_registers
   (instruction_reg_reg,
    instruction_reg_reg_0,
    instruction_reg_reg_1,
    instruction_reg_reg_2,
    instruction_reg_reg_3,
    instruction_reg_reg_4,
    S,
    reg_a,
    reg_b,
    a_sub_b_carry__0_i_5_0,
    data_out,
    addr,
    \bank_reg[13][5]_0 ,
    \bank_reg[12][2]_0 ,
    \bank_reg[12][4]_0 ,
    \bank_reg[12][5]_0 ,
    \bank_reg[9][0]_0 ,
    E,
    DOADO,
    \bank[2][7]_i_13_0 ,
    Q,
    data_load0,
    \bank[2][0]_i_18_0 ,
    \bank[2][4]_i_14_0 ,
    CO,
    words_reg_0_255_0_0_i_22_0,
    words_reg_0_255_0_0_i_18_0,
    D,
    sysclk,
    O,
    \bank_reg[8][2]_i_4_0 );
  output instruction_reg_reg;
  output instruction_reg_reg_0;
  output instruction_reg_reg_1;
  output instruction_reg_reg_2;
  output instruction_reg_reg_3;
  output instruction_reg_reg_4;
  output [3:0]S;
  output [7:0]reg_a;
  output [7:0]reg_b;
  output [3:0]a_sub_b_carry__0_i_5_0;
  output [7:0]data_out;
  output [7:0]addr;
  output [5:0]\bank_reg[13][5]_0 ;
  output [3:0]\bank_reg[12][2]_0 ;
  output [4:0]\bank_reg[12][4]_0 ;
  output [2:0]\bank_reg[12][5]_0 ;
  output [0:0]\bank_reg[9][0]_0 ;
  output [0:0]E;
  input [15:0]DOADO;
  input [7:0]\bank[2][7]_i_13_0 ;
  input [7:0]Q;
  input [7:0]data_load0;
  input [3:0]\bank[2][0]_i_18_0 ;
  input [3:0]\bank[2][4]_i_14_0 ;
  input [0:0]CO;
  input [2:0]words_reg_0_255_0_0_i_22_0;
  input [2:0]words_reg_0_255_0_0_i_18_0;
  input [0:0]D;
  input sysclk;
  input [3:0]O;
  input [3:0]\bank_reg[8][2]_i_4_0 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [15:0]DOADO;
  wire [0:0]E;
  wire [3:0]O;
  wire [7:0]Q;
  wire [3:0]S;
  wire [3:0]a_sub_b_carry__0_i_5_0;
  wire a_sub_b_carry__0_i_5_n_0;
  wire [7:0]addr;
  wire [9:1]addr0;
  wire [9:8]addr1;
  wire [8:0]addr_0;
  wire \alu/v10_out ;
  wire bank;
  wire \bank[10][0]_i_1_n_0 ;
  wire \bank[10][1]_i_1_n_0 ;
  wire \bank[10][2]_i_1_n_0 ;
  wire \bank[10][3]_i_1_n_0 ;
  wire \bank[10][4]_i_1_n_0 ;
  wire \bank[10][5]_i_1_n_0 ;
  wire \bank[10][6]_i_1_n_0 ;
  wire \bank[10][7]_i_1_n_0 ;
  wire \bank[10][7]_i_2_n_0 ;
  wire \bank[10][7]_i_3_n_0 ;
  wire \bank[10][7]_i_4_n_0 ;
  wire \bank[10][7]_i_5_n_0 ;
  wire \bank[11][0]_i_1_n_0 ;
  wire \bank[11][1]_i_1_n_0 ;
  wire \bank[11][2]_i_1_n_0 ;
  wire \bank[11][3]_i_1_n_0 ;
  wire \bank[11][4]_i_1_n_0 ;
  wire \bank[11][5]_i_1_n_0 ;
  wire \bank[11][6]_i_1_n_0 ;
  wire \bank[11][7]_i_1_n_0 ;
  wire \bank[11][7]_i_2_n_0 ;
  wire \bank[11][7]_i_3_n_0 ;
  wire \bank[11][7]_i_4_n_0 ;
  wire \bank[12][0]_i_1_n_0 ;
  wire \bank[12][1]_i_1_n_0 ;
  wire \bank[12][2]_i_1_n_0 ;
  wire \bank[12][3]_i_1_n_0 ;
  wire \bank[12][4]_i_1_n_0 ;
  wire \bank[12][5]_i_1_n_0 ;
  wire \bank[12][6]_i_1_n_0 ;
  wire \bank[12][7]_i_1_n_0 ;
  wire \bank[12][7]_i_2_n_0 ;
  wire \bank[12][7]_i_3_n_0 ;
  wire \bank[12][7]_i_4_n_0 ;
  wire \bank[12][7]_i_5_n_0 ;
  wire \bank[13][0]_i_1_n_0 ;
  wire \bank[13][1]_i_1_n_0 ;
  wire \bank[13][2]_i_1_n_0 ;
  wire \bank[13][3]_i_1_n_0 ;
  wire \bank[13][4]_i_1_n_0 ;
  wire \bank[13][5]_i_1_n_0 ;
  wire \bank[13][6]_i_1_n_0 ;
  wire \bank[13][7]_i_1_n_0 ;
  wire \bank[13][7]_i_2_n_0 ;
  wire \bank[13][7]_i_3_n_0 ;
  wire \bank[13][7]_i_4_n_0 ;
  wire \bank[13][7]_i_5_n_0 ;
  wire \bank[14][0]_i_1_n_0 ;
  wire \bank[14][1]_i_1_n_0 ;
  wire \bank[14][2]_i_1_n_0 ;
  wire \bank[14][3]_i_1_n_0 ;
  wire \bank[14][4]_i_1_n_0 ;
  wire \bank[14][5]_i_1_n_0 ;
  wire \bank[14][6]_i_1_n_0 ;
  wire \bank[14][7]_i_1_n_0 ;
  wire \bank[14][7]_i_2_n_0 ;
  wire \bank[14][7]_i_3_n_0 ;
  wire \bank[14][7]_i_4_n_0 ;
  wire \bank[14][7]_i_5_n_0 ;
  wire \bank[1][0]_i_1_n_0 ;
  wire \bank[1][1]_i_1_n_0 ;
  wire \bank[1][2]_i_1_n_0 ;
  wire \bank[1][3]_i_1_n_0 ;
  wire \bank[1][4]_i_1_n_0 ;
  wire \bank[1][5]_i_1_n_0 ;
  wire \bank[1][6]_i_1_n_0 ;
  wire \bank[1][7]_i_2_n_0 ;
  wire \bank[1][7]_i_3_n_0 ;
  wire \bank[1][7]_i_4_n_0 ;
  wire \bank[2][0]_i_13_n_0 ;
  wire \bank[2][0]_i_14_n_0 ;
  wire \bank[2][0]_i_15_n_0 ;
  wire \bank[2][0]_i_16_n_0 ;
  wire \bank[2][0]_i_17_n_0 ;
  wire [3:0]\bank[2][0]_i_18_0 ;
  wire \bank[2][0]_i_18_n_0 ;
  wire \bank[2][0]_i_1_n_0 ;
  wire \bank[2][0]_i_5_n_0 ;
  wire \bank[2][0]_i_6_n_0 ;
  wire \bank[2][0]_i_7_n_0 ;
  wire \bank[2][0]_i_8_n_0 ;
  wire \bank[2][0]_i_9_n_0 ;
  wire \bank[2][1]_i_12_n_0 ;
  wire \bank[2][1]_i_13_n_0 ;
  wire \bank[2][1]_i_14_n_0 ;
  wire \bank[2][1]_i_18_n_0 ;
  wire \bank[2][1]_i_1_n_0 ;
  wire \bank[2][1]_i_5_n_0 ;
  wire \bank[2][1]_i_6_n_0 ;
  wire \bank[2][1]_i_7_n_0 ;
  wire \bank[2][1]_i_8_n_0 ;
  wire \bank[2][1]_i_9_n_0 ;
  wire \bank[2][2]_i_12_n_0 ;
  wire \bank[2][2]_i_13_n_0 ;
  wire \bank[2][2]_i_14_n_0 ;
  wire \bank[2][2]_i_1_n_0 ;
  wire \bank[2][2]_i_23_n_0 ;
  wire \bank[2][2]_i_5_n_0 ;
  wire \bank[2][2]_i_6_n_0 ;
  wire \bank[2][2]_i_7_n_0 ;
  wire \bank[2][2]_i_8_n_0 ;
  wire \bank[2][2]_i_9_n_0 ;
  wire \bank[2][3]_i_13_n_0 ;
  wire \bank[2][3]_i_14_n_0 ;
  wire \bank[2][3]_i_17_n_0 ;
  wire \bank[2][3]_i_18_n_0 ;
  wire \bank[2][3]_i_1_n_0 ;
  wire \bank[2][3]_i_5_n_0 ;
  wire \bank[2][3]_i_6_n_0 ;
  wire \bank[2][3]_i_7_n_0 ;
  wire \bank[2][3]_i_8_n_0 ;
  wire \bank[2][3]_i_9_n_0 ;
  wire \bank[2][4]_i_12_n_0 ;
  wire [3:0]\bank[2][4]_i_14_0 ;
  wire \bank[2][4]_i_14_n_0 ;
  wire \bank[2][4]_i_15_n_0 ;
  wire \bank[2][4]_i_17_n_0 ;
  wire \bank[2][4]_i_18_n_0 ;
  wire \bank[2][4]_i_1_n_0 ;
  wire \bank[2][4]_i_21_n_0 ;
  wire \bank[2][4]_i_22_n_0 ;
  wire \bank[2][4]_i_23_n_0 ;
  wire \bank[2][4]_i_24_n_0 ;
  wire \bank[2][4]_i_25_n_0 ;
  wire \bank[2][4]_i_26_n_0 ;
  wire \bank[2][4]_i_27_n_0 ;
  wire \bank[2][4]_i_28_n_0 ;
  wire \bank[2][4]_i_29_n_0 ;
  wire \bank[2][4]_i_30_n_0 ;
  wire \bank[2][4]_i_31_n_0 ;
  wire \bank[2][4]_i_32_n_0 ;
  wire \bank[2][4]_i_33_n_0 ;
  wire \bank[2][4]_i_34_n_0 ;
  wire \bank[2][4]_i_35_n_0 ;
  wire \bank[2][4]_i_36_n_0 ;
  wire \bank[2][4]_i_37_n_0 ;
  wire \bank[2][4]_i_38_n_0 ;
  wire \bank[2][4]_i_39_n_0 ;
  wire \bank[2][4]_i_5_n_0 ;
  wire \bank[2][4]_i_6_n_0 ;
  wire \bank[2][4]_i_7_n_0 ;
  wire \bank[2][4]_i_8_n_0 ;
  wire \bank[2][4]_i_9_n_0 ;
  wire \bank[2][5]_i_12_n_0 ;
  wire \bank[2][5]_i_13_n_0 ;
  wire \bank[2][5]_i_15_n_0 ;
  wire \bank[2][5]_i_16_n_0 ;
  wire \bank[2][5]_i_17_n_0 ;
  wire \bank[2][5]_i_1_n_0 ;
  wire \bank[2][5]_i_22_n_0 ;
  wire \bank[2][5]_i_23_n_0 ;
  wire \bank[2][5]_i_24_n_0 ;
  wire \bank[2][5]_i_25_n_0 ;
  wire \bank[2][5]_i_26_n_0 ;
  wire \bank[2][5]_i_27_n_0 ;
  wire \bank[2][5]_i_28_n_0 ;
  wire \bank[2][5]_i_29_n_0 ;
  wire \bank[2][5]_i_30_n_0 ;
  wire \bank[2][5]_i_31_n_0 ;
  wire \bank[2][5]_i_32_n_0 ;
  wire \bank[2][5]_i_33_n_0 ;
  wire \bank[2][5]_i_34_n_0 ;
  wire \bank[2][5]_i_35_n_0 ;
  wire \bank[2][5]_i_36_n_0 ;
  wire \bank[2][5]_i_37_n_0 ;
  wire \bank[2][5]_i_38_n_0 ;
  wire \bank[2][5]_i_39_n_0 ;
  wire \bank[2][5]_i_40_n_0 ;
  wire \bank[2][5]_i_41_n_0 ;
  wire \bank[2][5]_i_42_n_0 ;
  wire \bank[2][5]_i_43_n_0 ;
  wire \bank[2][5]_i_44_n_0 ;
  wire \bank[2][5]_i_45_n_0 ;
  wire \bank[2][5]_i_46_n_0 ;
  wire \bank[2][5]_i_47_n_0 ;
  wire \bank[2][5]_i_48_n_0 ;
  wire \bank[2][5]_i_49_n_0 ;
  wire \bank[2][5]_i_50_n_0 ;
  wire \bank[2][5]_i_51_n_0 ;
  wire \bank[2][5]_i_5_n_0 ;
  wire \bank[2][5]_i_6_n_0 ;
  wire \bank[2][5]_i_7_n_0 ;
  wire \bank[2][5]_i_8_n_0 ;
  wire \bank[2][5]_i_9_n_0 ;
  wire \bank[2][6]_i_1_n_0 ;
  wire \bank[2][6]_i_5_n_0 ;
  wire \bank[2][6]_i_6_n_0 ;
  wire \bank[2][6]_i_7_n_0 ;
  wire \bank[2][6]_i_8_n_0 ;
  wire \bank[2][6]_i_9_n_0 ;
  wire \bank[2][7]_i_10_n_0 ;
  wire \bank[2][7]_i_12_n_0 ;
  wire [7:0]\bank[2][7]_i_13_0 ;
  wire \bank[2][7]_i_15_n_0 ;
  wire \bank[2][7]_i_16_n_0 ;
  wire \bank[2][7]_i_17_n_0 ;
  wire \bank[2][7]_i_18_n_0 ;
  wire \bank[2][7]_i_19_n_0 ;
  wire \bank[2][7]_i_1_n_0 ;
  wire \bank[2][7]_i_23_n_0 ;
  wire \bank[2][7]_i_2_n_0 ;
  wire \bank[2][7]_i_4_n_0 ;
  wire \bank[2][7]_i_5_n_0 ;
  wire \bank[2][7]_i_6_n_0 ;
  wire \bank[2][7]_i_7_n_0 ;
  wire \bank[2][7]_i_8_n_0 ;
  wire \bank[3][0]_i_1_n_0 ;
  wire \bank[3][1]_i_1_n_0 ;
  wire \bank[3][2]_i_1_n_0 ;
  wire \bank[3][3]_i_1_n_0 ;
  wire \bank[3][4]_i_1_n_0 ;
  wire \bank[3][5]_i_1_n_0 ;
  wire \bank[3][6]_i_1_n_0 ;
  wire \bank[3][7]_i_1_n_0 ;
  wire \bank[3][7]_i_2_n_0 ;
  wire \bank[3][7]_i_3_n_0 ;
  wire \bank[3][7]_i_4_n_0 ;
  wire \bank[4][0]_i_1_n_0 ;
  wire \bank[4][1]_i_1_n_0 ;
  wire \bank[4][2]_i_1_n_0 ;
  wire \bank[4][3]_i_1_n_0 ;
  wire \bank[4][4]_i_1_n_0 ;
  wire \bank[4][5]_i_1_n_0 ;
  wire \bank[4][6]_i_1_n_0 ;
  wire \bank[4][7]_i_1_n_0 ;
  wire \bank[4][7]_i_2_n_0 ;
  wire \bank[4][7]_i_3_n_0 ;
  wire \bank[4][7]_i_4_n_0 ;
  wire \bank[4][7]_i_5_n_0 ;
  wire \bank[4][7]_i_6_n_0 ;
  wire \bank[5][0]_i_1_n_0 ;
  wire \bank[5][1]_i_1_n_0 ;
  wire \bank[5][2]_i_1_n_0 ;
  wire \bank[5][3]_i_1_n_0 ;
  wire \bank[5][4]_i_1_n_0 ;
  wire \bank[5][5]_i_1_n_0 ;
  wire \bank[5][6]_i_1_n_0 ;
  wire \bank[5][7]_i_1_n_0 ;
  wire \bank[5][7]_i_2_n_0 ;
  wire \bank[5][7]_i_3_n_0 ;
  wire \bank[5][7]_i_4_n_0 ;
  wire \bank[5][7]_i_5_n_0 ;
  wire \bank[6][0]_i_1_n_0 ;
  wire \bank[6][1]_i_1_n_0 ;
  wire \bank[6][2]_i_1_n_0 ;
  wire \bank[6][3]_i_1_n_0 ;
  wire \bank[6][4]_i_1_n_0 ;
  wire \bank[6][5]_i_1_n_0 ;
  wire \bank[6][6]_i_1_n_0 ;
  wire \bank[6][7]_i_1_n_0 ;
  wire \bank[6][7]_i_2_n_0 ;
  wire \bank[6][7]_i_3_n_0 ;
  wire \bank[6][7]_i_4_n_0 ;
  wire \bank[7][0]_i_1_n_0 ;
  wire \bank[7][1]_i_1_n_0 ;
  wire \bank[7][2]_i_1_n_0 ;
  wire \bank[7][3]_i_1_n_0 ;
  wire \bank[7][4]_i_1_n_0 ;
  wire \bank[7][5]_i_1_n_0 ;
  wire \bank[7][6]_i_1_n_0 ;
  wire \bank[7][7]_i_1_n_0 ;
  wire \bank[7][7]_i_2_n_0 ;
  wire \bank[7][7]_i_3_n_0 ;
  wire \bank[7][7]_i_4_n_0 ;
  wire \bank[7][7]_i_5_n_0 ;
  wire \bank[7][7]_i_6_n_0 ;
  wire \bank[8][0]_i_10_n_0 ;
  wire \bank[8][0]_i_11_n_0 ;
  wire \bank[8][0]_i_12_n_0 ;
  wire \bank[8][0]_i_13_n_0 ;
  wire \bank[8][0]_i_14_n_0 ;
  wire \bank[8][0]_i_15_n_0 ;
  wire \bank[8][0]_i_17_n_0 ;
  wire \bank[8][0]_i_1_n_0 ;
  wire \bank[8][0]_i_3_n_0 ;
  wire \bank[8][0]_i_4_n_0 ;
  wire \bank[8][0]_i_6_n_0 ;
  wire \bank[8][0]_i_7_n_0 ;
  wire \bank[8][0]_i_8_n_0 ;
  wire \bank[8][0]_i_9_n_0 ;
  wire \bank[8][1]_i_1_n_0 ;
  wire \bank[8][1]_i_3_n_0 ;
  wire \bank[8][1]_i_5_n_0 ;
  wire \bank[8][2]_i_11_n_0 ;
  wire \bank[8][2]_i_1_n_0 ;
  wire \bank[8][2]_i_3_n_0 ;
  wire \bank[8][2]_i_5_n_0 ;
  wire \bank[8][2]_i_6_n_0 ;
  wire \bank[8][2]_i_7_n_0 ;
  wire \bank[8][2]_i_8_n_0 ;
  wire \bank[8][2]_i_9_n_0 ;
  wire \bank[8][3]_i_1_n_0 ;
  wire \bank[8][3]_i_3_n_0 ;
  wire \bank[8][3]_i_4_n_0 ;
  wire \bank[8][3]_i_7_n_0 ;
  wire \bank[8][3]_i_8_n_0 ;
  wire \bank[8][4]_i_1_n_0 ;
  wire \bank[8][4]_i_2_n_0 ;
  wire \bank[8][5]_i_1_n_0 ;
  wire \bank[8][5]_i_2_n_0 ;
  wire \bank[8][6]_i_1_n_0 ;
  wire \bank[8][6]_i_2_n_0 ;
  wire \bank[8][7]_i_11_n_0 ;
  wire \bank[8][7]_i_12_n_0 ;
  wire \bank[8][7]_i_14_n_0 ;
  wire \bank[8][7]_i_15_n_0 ;
  wire \bank[8][7]_i_1_n_0 ;
  wire \bank[8][7]_i_2_n_0 ;
  wire \bank[8][7]_i_4_n_0 ;
  wire \bank[8][7]_i_5_n_0 ;
  wire \bank[8][7]_i_7_n_0 ;
  wire \bank[8][7]_i_8_n_0 ;
  wire \bank[9][0]_i_2_n_0 ;
  wire \bank[9][1]_i_2_n_0 ;
  wire \bank[9][2]_i_3_n_0 ;
  wire \bank[9][3]_i_3_n_0 ;
  wire \bank[9][4]_i_3_n_0 ;
  wire \bank[9][5]_i_3_n_0 ;
  wire \bank[9][6]_i_3_n_0 ;
  wire \bank[9][7]_i_10_n_0 ;
  wire \bank[9][7]_i_11_n_0 ;
  wire \bank[9][7]_i_1_n_0 ;
  wire \bank[9][7]_i_4_n_0 ;
  wire \bank[9][7]_i_5_n_0 ;
  wire \bank[9][7]_i_7_n_0 ;
  wire \bank[9][7]_i_8_n_0 ;
  wire [7:0]\bank_reg[10] ;
  wire [7:0]\bank_reg[11] ;
  wire [3:0]\bank_reg[12][2]_0 ;
  wire [4:0]\bank_reg[12][4]_0 ;
  wire [2:0]\bank_reg[12][5]_0 ;
  wire [5:0]\bank_reg[13][5]_0 ;
  wire [7:0]\bank_reg[14] ;
  wire [7:0]\bank_reg[1] ;
  wire [7:0]\bank_reg[2] ;
  wire \bank_reg[2][0]_i_12_n_0 ;
  wire \bank_reg[2][2]_i_16_n_0 ;
  wire \bank_reg[2][2]_i_16_n_1 ;
  wire \bank_reg[2][2]_i_16_n_2 ;
  wire \bank_reg[2][2]_i_16_n_3 ;
  wire \bank_reg[2][2]_i_16_n_4 ;
  wire \bank_reg[2][2]_i_16_n_5 ;
  wire \bank_reg[2][2]_i_16_n_6 ;
  wire \bank_reg[2][2]_i_16_n_7 ;
  wire \bank_reg[2][3]_i_12_n_0 ;
  wire \bank_reg[2][5]_i_20_n_0 ;
  wire \bank_reg[2][5]_i_21_n_0 ;
  wire [7:0]\bank_reg[3] ;
  wire [7:0]\bank_reg[4] ;
  wire [7:0]\bank_reg[5] ;
  wire [7:0]\bank_reg[6] ;
  wire [7:0]\bank_reg[7] ;
  wire \bank_reg[8][0]_i_5_n_0 ;
  wire [3:0]\bank_reg[8][2]_i_4_0 ;
  wire \bank_reg[8][3]_i_5_n_3 ;
  wire \bank_reg[8][3]_i_6_n_3 ;
  wire \bank_reg[8][3]_i_9_n_0 ;
  wire \bank_reg[8][3]_i_9_n_1 ;
  wire \bank_reg[8][3]_i_9_n_2 ;
  wire \bank_reg[8][3]_i_9_n_3 ;
  wire \bank_reg[8][3]_i_9_n_4 ;
  wire \bank_reg[8][3]_i_9_n_5 ;
  wire \bank_reg[8][3]_i_9_n_6 ;
  wire \bank_reg[8][3]_i_9_n_7 ;
  wire [0:0]\bank_reg[9][0]_0 ;
  wire [7:2]\bank_reg[9]__0 ;
  wire \bank_reg_n_0_[12][6] ;
  wire \bank_reg_n_0_[12][7] ;
  wire \bank_reg_n_0_[8][4] ;
  wire \bank_reg_n_0_[8][5] ;
  wire \bank_reg_n_0_[8][6] ;
  wire [7:1]data5;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire [7:1]data_write_ip0;
  wire doing_alu;
  wire en_store;
  wire en_write_reg0__2;
  wire [7:0]flags;
  wire [7:0]flags_arg;
  wire [7:7]instruction_addr0;
  wire instruction_reg_reg;
  wire instruction_reg_reg_0;
  wire instruction_reg_reg_1;
  wire instruction_reg_reg_2;
  wire instruction_reg_reg_3;
  wire instruction_reg_reg_4;
  wire \io/data_load20_out ;
  wire [7:0]io_load;
  wire \ir/skipped__4 ;
  wire [7:0]load_result;
  wire mem_addr0;
  wire n;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire p_2_in__0;
  wire p_6_in;
  wire r1;
  wire [7:0]reg_a;
  wire [7:0]reg_b;
  wire \setcc_logic/flags_comparison__6 ;
  wire [5:1]shift_right0;
  wire [5:1]shift_right00_in;
  wire should_write_flags__10;
  wire should_write_ip__7;
  wire store_register1;
  wire \store_register[0]_i_2_n_0 ;
  wire \store_register[0]_i_3_n_0 ;
  wire \store_register[0]_i_4_n_0 ;
  wire \store_register[0]_i_5_n_0 ;
  wire \store_register[1]_i_2_n_0 ;
  wire \store_register[1]_i_3_n_0 ;
  wire \store_register[1]_i_4_n_0 ;
  wire \store_register[1]_i_5_n_0 ;
  wire \store_register[2]_i_2_n_0 ;
  wire \store_register[2]_i_3_n_0 ;
  wire \store_register[2]_i_4_n_0 ;
  wire \store_register[2]_i_5_n_0 ;
  wire \store_register[3]_i_10_n_0 ;
  wire \store_register[3]_i_11_n_0 ;
  wire \store_register[3]_i_12_n_0 ;
  wire \store_register[3]_i_13_n_0 ;
  wire \store_register[3]_i_14_n_0 ;
  wire \store_register[3]_i_15_n_0 ;
  wire \store_register[3]_i_5_n_0 ;
  wire \store_register[3]_i_6_n_0 ;
  wire \store_register[3]_i_7_n_0 ;
  wire \store_register[3]_i_8_n_0 ;
  wire \store_register[3]_i_9_n_0 ;
  wire \store_register[4]_i_2_n_0 ;
  wire \store_register[4]_i_3_n_0 ;
  wire \store_register[4]_i_4_n_0 ;
  wire \store_register[4]_i_5_n_0 ;
  wire \store_register[5]_i_2_n_0 ;
  wire \store_register[5]_i_3_n_0 ;
  wire \store_register[5]_i_4_n_0 ;
  wire \store_register[5]_i_5_n_0 ;
  wire \store_register[6]_i_2_n_0 ;
  wire \store_register[6]_i_3_n_0 ;
  wire \store_register[6]_i_4_n_0 ;
  wire \store_register[6]_i_5_n_0 ;
  wire \store_register[7]_i_2_n_0 ;
  wire \store_register[7]_i_3_n_0 ;
  wire \store_register[7]_i_4_n_0 ;
  wire \store_register[7]_i_5_n_0 ;
  wire sysclk;
  wire words_reg_0_255_0_0_i_15_n_0;
  wire words_reg_0_255_0_0_i_15_n_1;
  wire words_reg_0_255_0_0_i_15_n_2;
  wire words_reg_0_255_0_0_i_15_n_3;
  wire [2:0]words_reg_0_255_0_0_i_18_0;
  wire [2:0]words_reg_0_255_0_0_i_22_0;
  wire words_reg_0_255_0_0_i_24_n_0;
  wire words_reg_0_255_0_0_i_27_n_0;
  wire words_reg_0_255_0_0_i_27_n_1;
  wire words_reg_0_255_0_0_i_27_n_2;
  wire words_reg_0_255_0_0_i_27_n_3;
  wire words_reg_0_255_0_0_i_31_n_0;
  wire words_reg_0_255_0_0_i_35_n_0;
  wire [7:0]write_arg;
  wire [3:1]\NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_bank_reg[8][3]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_bank_reg[8][3]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_bank_reg[8][3]_i_6_O_UNCONNECTED ;
  wire [3:0]NLW_words_reg_0_255_0_0_i_26_CO_UNCONNECTED;
  wire [3:1]NLW_words_reg_0_255_0_0_i_26_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    a_sub_b_carry__0_i_1
       (.I0(a_sub_b_carry__0_i_5_n_0),
        .O(a_sub_b_carry__0_i_5_0[3]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry__0_i_2
       (.I0(reg_a[6]),
        .I1(reg_b[6]),
        .O(a_sub_b_carry__0_i_5_0[2]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry__0_i_3
       (.I0(reg_a[5]),
        .I1(reg_b[5]),
        .O(a_sub_b_carry__0_i_5_0[1]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry__0_i_4
       (.I0(reg_a[4]),
        .I1(reg_b[4]),
        .O(a_sub_b_carry__0_i_5_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    a_sub_b_carry__0_i_5
       (.I0(reg_b[7]),
        .I1(reg_a[7]),
        .O(a_sub_b_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_1
       (.I0(reg_a[3]),
        .I1(reg_b[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_2
       (.I0(reg_a[2]),
        .I1(reg_b[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_3
       (.I0(reg_a[1]),
        .I1(reg_b[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_4
       (.I0(reg_a[0]),
        .I1(reg_b[0]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[10][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[10][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[10][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[10][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[10][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[10][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[10][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE04000000)) 
    \bank[10][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[10][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_6_n_0 ),
        .I4(\bank[7][7]_i_3_n_0 ),
        .I5(\bank[10][7]_i_4_n_0 ),
        .O(\bank[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[10][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[10][7]_i_5_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[10][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bank[10][7]_i_3 
       (.I0(\bank[4][7]_i_4_n_0 ),
        .I1(\bank[2][7]_i_7_n_0 ),
        .O(\bank[10][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[10][7]_i_4 
       (.I0(DOADO[0]),
        .I1(DOADO[2]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[3]),
        .O(\bank[10][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[10][7]_i_5 
       (.I0(DOADO[6]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[10][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[11][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[11][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[11][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[11][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[11][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[11][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[11][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000040)) 
    \bank[11][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[4][7]_i_4_n_0 ),
        .I4(\bank[7][7]_i_4_n_0 ),
        .I5(\bank[11][7]_i_3_n_0 ),
        .O(\bank[11][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[11][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[11][7]_i_4_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[11][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[11][7]_i_3 
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[11][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[11][7]_i_4 
       (.I0(DOADO[4]),
        .I1(DOADO[6]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[11][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[12][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[12][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[12][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[12][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[12][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[12][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[12][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000004)) 
    \bank[12][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_6_n_0 ),
        .I4(\bank[12][7]_i_3_n_0 ),
        .I5(\bank[12][7]_i_4_n_0 ),
        .O(\bank[12][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[12][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[12][7]_i_5_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[12][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bank[12][7]_i_3 
       (.I0(DOADO[6]),
        .I1(\ir/skipped__4 ),
        .I2(DOADO[7]),
        .O(\bank[12][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[12][7]_i_4 
       (.I0(DOADO[0]),
        .I1(DOADO[1]),
        .I2(DOADO[3]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[2]),
        .O(\bank[12][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[12][7]_i_5 
       (.I0(DOADO[5]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[6]),
        .O(\bank[12][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[13][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[13][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[13][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[13][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[13][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[13][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[13][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000040)) 
    \bank[13][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][7]_i_4_n_0 ),
        .I3(\bank[2][7]_i_6_n_0 ),
        .I4(\bank[13][7]_i_3_n_0 ),
        .I5(\bank[13][7]_i_4_n_0 ),
        .O(\bank[13][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[13][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[13][7]_i_5_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[13][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bank[13][7]_i_3 
       (.I0(\bank[7][7]_i_3_n_0 ),
        .I1(\bank[2][7]_i_7_n_0 ),
        .O(\bank[13][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[13][7]_i_4 
       (.I0(DOADO[2]),
        .I1(DOADO[1]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[3]),
        .O(\bank[13][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[13][7]_i_5 
       (.I0(DOADO[4]),
        .I1(DOADO[5]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[6]),
        .O(\bank[13][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[14][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[14][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[14][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[14][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[14][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[14][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[14][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000040)) 
    \bank[14][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][7]_i_4_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[14][7]_i_3_n_0 ),
        .I5(\bank[14][7]_i_4_n_0 ),
        .O(\bank[14][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[14][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[14][7]_i_5_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[14][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bank[14][7]_i_3 
       (.I0(\bank[2][7]_i_6_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .O(\bank[14][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[14][7]_i_4 
       (.I0(DOADO[2]),
        .I1(DOADO[0]),
        .I2(DOADO[3]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[14][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[14][7]_i_5 
       (.I0(DOADO[5]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[6]),
        .O(\bank[14][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[1][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[1][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[1][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[1][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[1][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[1][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000400)) 
    \bank[1][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[2][7]_i_6_n_0 ),
        .I5(\bank[1][7]_i_3_n_0 ),
        .O(bank));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[1][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[1][7]_i_4_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \bank[1][7]_i_3 
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[1][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bank[1][7]_i_4 
       (.I0(DOADO[4]),
        .I1(DOADO[5]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[6]),
        .O(\bank[1][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][0]_i_11 
       (.I0(\bank[2][7]_i_13_0 [0]),
        .I1(Q[0]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[0]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \bank[2][0]_i_13 
       (.I0(\bank[2][0]_i_15_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[8][0]_i_8_n_0 ),
        .I3(\bank[2][0]_i_16_n_0 ),
        .I4(DOADO[4]),
        .I5(\bank[2][0]_i_17_n_0 ),
        .O(\bank[2][0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAEEEA222)) 
    \bank[2][0]_i_14 
       (.I0(\bank[2][0]_i_18_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(DOADO[9]),
        .I4(O[0]),
        .O(\bank[2][0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bank[2][0]_i_15 
       (.I0(DOADO[4]),
        .I1(reg_a[0]),
        .I2(DOADO[5]),
        .O(\bank[2][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][0]_i_16 
       (.I0(reg_a[7]),
        .I1(reg_a[3]),
        .I2(DOADO[5]),
        .I3(reg_a[5]),
        .I4(DOADO[6]),
        .I5(reg_a[1]),
        .O(\bank[2][0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][0]_i_17 
       (.I0(reg_a[6]),
        .I1(reg_a[2]),
        .I2(DOADO[5]),
        .I3(reg_a[4]),
        .I4(DOADO[6]),
        .I5(reg_a[0]),
        .O(\bank[2][0]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[2][0]_i_18 
       (.I0(\bank_reg[2][2]_i_16_n_7 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[0]),
        .I4(reg_b[0]),
        .O(\bank[2][0]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][0]_i_2 
       (.I0(reg_b[0]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[0]),
        .I3(p_0_in),
        .I4(\bank[2][0]_i_5_n_0 ),
        .O(write_arg[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][0]_i_3 
       (.I0(\bank[2][0]_i_6_n_0 ),
        .I1(\bank[2][0]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][0]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][0]_i_9_n_0 ),
        .O(reg_b[0]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][0]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[0]),
        .I3(io_load[0]),
        .O(load_result[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][0]_i_5 
       (.I0(\bank_reg[2][0]_i_12_n_0 ),
        .I1(r1),
        .I2(reg_a[0]),
        .I3(doing_alu),
        .I4(DOADO[4]),
        .O(\bank[2][0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][0]_i_6 
       (.I0(\bank_reg[14] [0]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [0]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[12][4]_0 [0]),
        .O(\bank[2][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \bank[2][0]_i_7 
       (.I0(\bank_reg[11] [0]),
        .I1(\bank_reg[10] [0]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[9][0]_0 ),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(flags[0]),
        .O(\bank[2][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][0]_i_8 
       (.I0(\bank_reg[7] [0]),
        .I1(\bank_reg[6] [0]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [0]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [0]),
        .O(\bank[2][0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][0]_i_9 
       (.I0(\bank_reg[3] [0]),
        .I1(\bank_reg[2] [0]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [0]),
        .O(\bank[2][0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[2][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][1]_i_11 
       (.I0(\bank[2][7]_i_13_0 [1]),
        .I1(Q[1]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_12 
       (.I0(\bank[2][1]_i_13_n_0 ),
        .I1(O[1]),
        .I2(\bank[8][2]_i_5_n_0 ),
        .I3(\bank[2][1]_i_14_n_0 ),
        .I4(\bank[8][0]_i_8_n_0 ),
        .I5(data5[1]),
        .O(\bank[2][1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[2][1]_i_13 
       (.I0(\bank_reg[2][2]_i_16_n_6 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[1]),
        .I4(reg_b[1]),
        .O(\bank[2][1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \bank[2][1]_i_14 
       (.I0(DOADO[5]),
        .I1(reg_a[0]),
        .I2(DOADO[4]),
        .I3(reg_a[1]),
        .I4(DOADO[6]),
        .O(\bank[2][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_16 
       (.I0(\bank[2][4]_i_23_n_0 ),
        .I1(\bank[2][2]_i_23_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][3]_i_18_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][1]_i_18_n_0 ),
        .O(shift_right0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_17 
       (.I0(\bank[2][4]_i_27_n_0 ),
        .I1(\bank[2][2]_i_23_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][3]_i_18_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][1]_i_18_n_0 ),
        .O(shift_right00_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_18 
       (.I0(\bank[2][5]_i_30_n_0 ),
        .I1(\bank[2][5]_i_31_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][5]_i_22_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_23_n_0 ),
        .O(\bank[2][1]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][1]_i_2 
       (.I0(reg_b[1]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[1]),
        .I3(p_0_in),
        .I4(\bank[2][1]_i_5_n_0 ),
        .O(write_arg[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_3 
       (.I0(\bank[2][1]_i_6_n_0 ),
        .I1(\bank[2][1]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][1]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][1]_i_9_n_0 ),
        .O(reg_b[1]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][1]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[1]),
        .I3(io_load[1]),
        .O(load_result[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][1]_i_5 
       (.I0(\bank[2][1]_i_12_n_0 ),
        .I1(r1),
        .I2(reg_a[1]),
        .I3(doing_alu),
        .I4(DOADO[5]),
        .O(\bank[2][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][1]_i_6 
       (.I0(\bank_reg[14] [1]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [1]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[12][4]_0 [1]),
        .O(\bank[2][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_7 
       (.I0(\bank_reg[11] [1]),
        .I1(\bank_reg[10] [1]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[1]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(flags[1]),
        .O(\bank[2][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_8 
       (.I0(\bank_reg[7] [1]),
        .I1(\bank_reg[6] [1]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [1]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [1]),
        .O(\bank[2][1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][1]_i_9 
       (.I0(\bank_reg[3] [1]),
        .I1(\bank_reg[2] [1]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [1]),
        .O(\bank[2][1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[2][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][2]_i_11 
       (.I0(\bank[2][7]_i_13_0 [2]),
        .I1(Q[2]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_12 
       (.I0(\bank[2][2]_i_13_n_0 ),
        .I1(O[2]),
        .I2(\bank[8][2]_i_5_n_0 ),
        .I3(\bank[2][2]_i_14_n_0 ),
        .I4(\bank[8][0]_i_8_n_0 ),
        .I5(data5[2]),
        .O(\bank[2][2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[2][2]_i_13 
       (.I0(\bank_reg[2][2]_i_16_n_5 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[2]),
        .I4(reg_b[2]),
        .O(\bank[2][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \bank[2][2]_i_14 
       (.I0(reg_a[2]),
        .I1(DOADO[4]),
        .I2(reg_a[1]),
        .I3(DOADO[5]),
        .I4(reg_a[0]),
        .I5(DOADO[6]),
        .O(\bank[2][2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_17 
       (.I0(\bank[2][4]_i_21_n_0 ),
        .I1(\bank[2][3]_i_18_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_23_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][2]_i_23_n_0 ),
        .O(shift_right0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_18 
       (.I0(\bank[2][4]_i_25_n_0 ),
        .I1(\bank[2][3]_i_18_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_27_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][2]_i_23_n_0 ),
        .O(shift_right00_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][2]_i_2 
       (.I0(reg_b[2]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[2]),
        .I3(p_0_in),
        .I4(\bank[2][2]_i_5_n_0 ),
        .O(write_arg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_23 
       (.I0(\bank[2][4]_i_30_n_0 ),
        .I1(\bank[2][4]_i_31_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][5]_i_24_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_25_n_0 ),
        .O(\bank[2][2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_3 
       (.I0(\bank[2][2]_i_6_n_0 ),
        .I1(\bank[2][2]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][2]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][2]_i_9_n_0 ),
        .O(reg_b[2]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][2]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[2]),
        .I3(io_load[2]),
        .O(load_result[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][2]_i_5 
       (.I0(\bank[2][2]_i_12_n_0 ),
        .I1(r1),
        .I2(reg_a[2]),
        .I3(doing_alu),
        .I4(DOADO[6]),
        .O(\bank[2][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][2]_i_6 
       (.I0(\bank_reg[14] [2]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [2]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[12][4]_0 [2]),
        .O(\bank[2][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_7 
       (.I0(\bank_reg[11] [2]),
        .I1(\bank_reg[10] [2]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[2]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(flags[2]),
        .O(\bank[2][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_8 
       (.I0(\bank_reg[7] [2]),
        .I1(\bank_reg[6] [2]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [2]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [2]),
        .O(\bank[2][2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][2]_i_9 
       (.I0(\bank_reg[3] [2]),
        .I1(\bank_reg[2] [2]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [2]),
        .O(\bank[2][2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[2][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][3]_i_11 
       (.I0(\bank[2][7]_i_13_0 [3]),
        .I1(Q[3]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[3]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \bank[2][3]_i_13 
       (.I0(\bank[8][2]_i_8_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[8][0]_i_8_n_0 ),
        .I3(shift_right00_in[3]),
        .I4(DOADO[7]),
        .I5(shift_right0[3]),
        .O(\bank[2][3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAEEEA222)) 
    \bank[2][3]_i_14 
       (.I0(\bank[2][3]_i_17_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(DOADO[9]),
        .I4(O[3]),
        .O(\bank[2][3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_15 
       (.I0(\bank[2][4]_i_26_n_0 ),
        .I1(\bank[2][4]_i_27_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_25_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][3]_i_18_n_0 ),
        .O(shift_right00_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_16 
       (.I0(\bank[2][4]_i_22_n_0 ),
        .I1(\bank[2][4]_i_23_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_21_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][3]_i_18_n_0 ),
        .O(shift_right0[3]));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[2][3]_i_17 
       (.I0(\bank_reg[2][2]_i_16_n_4 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[3]),
        .I4(reg_b[3]),
        .O(\bank[2][3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_18 
       (.I0(\bank[2][4]_i_28_n_0 ),
        .I1(\bank[2][4]_i_29_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][5]_i_26_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_27_n_0 ),
        .O(\bank[2][3]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][3]_i_2 
       (.I0(reg_b[3]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[3]),
        .I3(p_0_in),
        .I4(\bank[2][3]_i_5_n_0 ),
        .O(write_arg[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_3 
       (.I0(\bank[2][3]_i_6_n_0 ),
        .I1(\bank[2][3]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][3]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][3]_i_9_n_0 ),
        .O(reg_b[3]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][3]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[3]),
        .I3(io_load[3]),
        .O(load_result[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][3]_i_5 
       (.I0(\bank_reg[2][3]_i_12_n_0 ),
        .I1(r1),
        .I2(reg_a[3]),
        .I3(doing_alu),
        .I4(DOADO[7]),
        .O(\bank[2][3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][3]_i_6 
       (.I0(\bank_reg[14] [3]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [3]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[12][4]_0 [3]),
        .O(\bank[2][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_7 
       (.I0(\bank_reg[11] [3]),
        .I1(\bank_reg[10] [3]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[3]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(flags[3]),
        .O(\bank[2][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][3]_i_8 
       (.I0(\bank_reg[7] [3]),
        .I1(\bank_reg[6] [3]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [3]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [3]),
        .O(\bank[2][3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][3]_i_9 
       (.I0(\bank_reg[3] [3]),
        .I1(\bank_reg[2] [3]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [3]),
        .O(\bank[2][3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[2][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][4]_i_11 
       (.I0(\bank[2][7]_i_13_0 [4]),
        .I1(Q[4]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_12 
       (.I0(\bank[2][4]_i_14_n_0 ),
        .I1(\bank_reg[8][2]_i_4_0 [0]),
        .I2(\bank[8][2]_i_5_n_0 ),
        .I3(\bank[2][4]_i_15_n_0 ),
        .I4(\bank[8][0]_i_8_n_0 ),
        .I5(data5[4]),
        .O(\bank[2][4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \bank[2][4]_i_13 
       (.I0(DOADO[11]),
        .I1(DOADO[9]),
        .I2(DOADO[10]),
        .O(r1));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[2][4]_i_14 
       (.I0(\bank_reg[8][3]_i_9_n_7 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[4]),
        .I4(reg_b[4]),
        .O(\bank[2][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \bank[2][4]_i_15 
       (.I0(DOADO[4]),
        .I1(reg_a[0]),
        .I2(DOADO[6]),
        .I3(\bank[2][4]_i_17_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][4]_i_18_n_0 ),
        .O(\bank[2][4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_17 
       (.I0(\bank[2][5]_i_22_n_0 ),
        .I1(\bank[2][5]_i_23_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][5]_i_24_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_25_n_0 ),
        .O(\bank[2][4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_18 
       (.I0(\bank[2][5]_i_26_n_0 ),
        .I1(\bank[2][5]_i_27_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][5]_i_28_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_29_n_0 ),
        .O(\bank[2][4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_19 
       (.I0(reg_a[7]),
        .I1(\bank[2][4]_i_21_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_22_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][4]_i_23_n_0 ),
        .O(shift_right0[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][4]_i_2 
       (.I0(reg_b[4]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[4]),
        .I3(p_0_in),
        .I4(\bank[2][4]_i_5_n_0 ),
        .O(write_arg[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_20 
       (.I0(\bank[2][4]_i_24_n_0 ),
        .I1(\bank[2][4]_i_25_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][4]_i_26_n_0 ),
        .I4(DOADO[5]),
        .I5(\bank[2][4]_i_27_n_0 ),
        .O(shift_right00_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_21 
       (.I0(\bank[2][4]_i_28_n_0 ),
        .I1(\bank[2][4]_i_29_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][5]_i_30_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_31_n_0 ),
        .O(\bank[2][4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_22 
       (.I0(\bank[2][4]_i_28_n_0 ),
        .I1(\bank[2][4]_i_29_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][4]_i_30_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][4]_i_31_n_0 ),
        .O(\bank[2][4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_23 
       (.I0(\bank[2][4]_i_28_n_0 ),
        .I1(\bank[2][4]_i_29_n_0 ),
        .I2(DOADO[6]),
        .I3(\bank[2][5]_i_28_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_29_n_0 ),
        .O(\bank[2][4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \bank[2][4]_i_24 
       (.I0(\bank[2][4]_i_29_n_0 ),
        .I1(\store_register[3]_i_7_n_0 ),
        .I2(\store_register[7]_i_3_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[7]_i_2_n_0 ),
        .I5(DOADO[6]),
        .O(\bank[2][4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \bank[2][4]_i_25 
       (.I0(\bank[2][5]_i_31_n_0 ),
        .I1(\store_register[3]_i_7_n_0 ),
        .I2(\store_register[5]_i_3_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[5]_i_2_n_0 ),
        .I5(DOADO[6]),
        .O(\bank[2][4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \bank[2][4]_i_26 
       (.I0(\bank[2][4]_i_31_n_0 ),
        .I1(\store_register[3]_i_7_n_0 ),
        .I2(\store_register[6]_i_3_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[6]_i_2_n_0 ),
        .I5(DOADO[6]),
        .O(\bank[2][4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \bank[2][4]_i_27 
       (.I0(\bank[2][5]_i_29_n_0 ),
        .I1(\store_register[3]_i_7_n_0 ),
        .I2(\store_register[4]_i_3_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[4]_i_2_n_0 ),
        .I5(DOADO[6]),
        .O(\bank[2][4]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][4]_i_28 
       (.I0(\store_register[7]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][4]_i_32_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][4]_i_33_n_0 ),
        .O(\bank[2][4]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][4]_i_29 
       (.I0(\bank[2][4]_i_34_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][4]_i_35_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[7]_i_5_n_0 ),
        .O(\bank[2][4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_3 
       (.I0(\bank[2][4]_i_6_n_0 ),
        .I1(\bank[2][4]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][4]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][4]_i_9_n_0 ),
        .O(reg_b[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][4]_i_30 
       (.I0(\store_register[6]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][4]_i_36_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][4]_i_37_n_0 ),
        .O(\bank[2][4]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][4]_i_31 
       (.I0(\bank[2][4]_i_38_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][4]_i_39_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[6]_i_5_n_0 ),
        .O(\bank[2][4]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_32 
       (.I0(\bank_reg[11] [7]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [7]),
        .O(\bank[2][4]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_33 
       (.I0(data_write_ip0[7]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(flags[7]),
        .O(\bank[2][4]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_34 
       (.I0(\bank_reg[7] [7]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [7]),
        .O(\bank[2][4]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_35 
       (.I0(\bank_reg[5] [7]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [7]),
        .O(\bank[2][4]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_36 
       (.I0(\bank_reg[11] [6]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [6]),
        .O(\bank[2][4]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_37 
       (.I0(data_write_ip0[6]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg_n_0_[8][6] ),
        .O(\bank[2][4]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_38 
       (.I0(\bank_reg[7] [6]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [6]),
        .O(\bank[2][4]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][4]_i_39 
       (.I0(\bank_reg[5] [6]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [6]),
        .O(\bank[2][4]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][4]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[4]),
        .I3(io_load[4]),
        .O(load_result[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][4]_i_5 
       (.I0(\bank[2][4]_i_12_n_0 ),
        .I1(r1),
        .I2(reg_a[4]),
        .I3(doing_alu),
        .I4(DOADO[8]),
        .O(\bank[2][4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][4]_i_6 
       (.I0(\bank_reg[14] [4]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [4]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[12][4]_0 [4]),
        .O(\bank[2][4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_7 
       (.I0(\bank_reg[11] [4]),
        .I1(\bank_reg[10] [4]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[4]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg_n_0_[8][4] ),
        .O(\bank[2][4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][4]_i_8 
       (.I0(\bank_reg[7] [4]),
        .I1(\bank_reg[6] [4]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [4]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [4]),
        .O(\bank[2][4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][4]_i_9 
       (.I0(\bank_reg[3] [4]),
        .I1(\bank_reg[2] [4]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [4]),
        .O(\bank[2][4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[2][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][5]_i_11 
       (.I0(\bank[2][7]_i_13_0 [5]),
        .I1(Q[5]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_12 
       (.I0(\bank[8][0]_i_9_n_0 ),
        .I1(\bank_reg[8][2]_i_4_0 [1]),
        .I2(\bank[8][2]_i_5_n_0 ),
        .I3(\bank[2][5]_i_13_n_0 ),
        .I4(\bank[8][0]_i_8_n_0 ),
        .I5(data5[5]),
        .O(\bank[2][5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bank[2][5]_i_13 
       (.I0(\bank[2][5]_i_15_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[2][5]_i_16_n_0 ),
        .I3(DOADO[5]),
        .I4(\bank[2][5]_i_17_n_0 ),
        .O(\bank[2][5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_15 
       (.I0(\bank_reg[2][5]_i_20_n_0 ),
        .I1(\bank_reg[2][5]_i_21_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][5]_i_22_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_23_n_0 ),
        .O(\bank[2][5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_16 
       (.I0(\bank[2][5]_i_24_n_0 ),
        .I1(\bank[2][5]_i_25_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][5]_i_26_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_27_n_0 ),
        .O(\bank[2][5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_17 
       (.I0(\bank[2][5]_i_28_n_0 ),
        .I1(\bank[2][5]_i_29_n_0 ),
        .I2(DOADO[4]),
        .I3(\bank[2][5]_i_30_n_0 ),
        .I4(\store_register[3]_i_7_n_0 ),
        .I5(\bank[2][5]_i_31_n_0 ),
        .O(\bank[2][5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \bank[2][5]_i_18 
       (.I0(reg_a[6]),
        .I1(DOADO[4]),
        .I2(DOADO[5]),
        .I3(reg_a[7]),
        .I4(DOADO[6]),
        .I5(reg_a[5]),
        .O(shift_right0[5]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \bank[2][5]_i_19 
       (.I0(reg_a[6]),
        .I1(DOADO[4]),
        .I2(reg_a[7]),
        .I3(DOADO[5]),
        .I4(reg_a[5]),
        .I5(DOADO[6]),
        .O(shift_right00_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_2 
       (.I0(reg_b[5]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[5]),
        .I3(p_0_in),
        .I4(\bank[2][5]_i_5_n_0 ),
        .O(write_arg[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_22 
       (.I0(\store_register[1]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][5]_i_32_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][5]_i_33_n_0 ),
        .O(\bank[2][5]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][5]_i_23 
       (.I0(\bank[2][5]_i_34_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][5]_i_35_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[1]_i_5_n_0 ),
        .O(\bank[2][5]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_24 
       (.I0(\store_register[2]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][5]_i_36_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][5]_i_37_n_0 ),
        .O(\bank[2][5]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][5]_i_25 
       (.I0(\bank[2][5]_i_38_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][5]_i_39_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[2]_i_5_n_0 ),
        .O(\bank[2][5]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_26 
       (.I0(\store_register[3]_i_5_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][5]_i_40_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][5]_i_41_n_0 ),
        .O(\bank[2][5]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][5]_i_27 
       (.I0(\bank[2][5]_i_42_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][5]_i_43_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[3]_i_10_n_0 ),
        .O(\bank[2][5]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_28 
       (.I0(\store_register[4]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][5]_i_44_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][5]_i_45_n_0 ),
        .O(\bank[2][5]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][5]_i_29 
       (.I0(\bank[2][5]_i_46_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][5]_i_47_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[4]_i_5_n_0 ),
        .O(\bank[2][5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_3 
       (.I0(\bank[2][5]_i_6_n_0 ),
        .I1(\bank[2][5]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][5]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][5]_i_9_n_0 ),
        .O(reg_b[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_30 
       (.I0(\store_register[5]_i_2_n_0 ),
        .I1(\store_register[3]_i_9_n_0 ),
        .I2(\bank[2][5]_i_48_n_0 ),
        .I3(\store_register[3]_i_14_n_0 ),
        .I4(\bank[2][5]_i_49_n_0 ),
        .O(\bank[2][5]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[2][5]_i_31 
       (.I0(\bank[2][5]_i_50_n_0 ),
        .I1(\store_register[3]_i_14_n_0 ),
        .I2(\bank[2][5]_i_51_n_0 ),
        .I3(\store_register[3]_i_9_n_0 ),
        .I4(\store_register[5]_i_5_n_0 ),
        .O(\bank[2][5]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_32 
       (.I0(\bank_reg[11] [1]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [1]),
        .O(\bank[2][5]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF6F0060)) 
    \bank[2][5]_i_33 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(\bank_reg[12][2]_0 [0]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(flags[1]),
        .O(\bank[2][5]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_34 
       (.I0(\bank_reg[7] [1]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [1]),
        .O(\bank[2][5]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_35 
       (.I0(\bank_reg[5] [1]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [1]),
        .O(\bank[2][5]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_36 
       (.I0(\bank_reg[11] [2]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [2]),
        .O(\bank[2][5]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF78FF00007800)) 
    \bank[2][5]_i_37 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(\bank_reg[12][2]_0 [0]),
        .I2(\bank_reg[9]__0 [2]),
        .I3(DOADO[0]),
        .I4(\ir/skipped__4 ),
        .I5(flags[2]),
        .O(\bank[2][5]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_38 
       (.I0(\bank_reg[7] [2]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [2]),
        .O(\bank[2][5]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_39 
       (.I0(\bank_reg[5] [2]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [2]),
        .O(\bank[2][5]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][5]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[5]),
        .I3(io_load[5]),
        .O(load_result[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_40 
       (.I0(\bank_reg[11] [3]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [3]),
        .O(\bank[2][5]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_41 
       (.I0(data_write_ip0[3]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(flags[3]),
        .O(\bank[2][5]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_42 
       (.I0(\bank_reg[7] [3]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [3]),
        .O(\bank[2][5]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_43 
       (.I0(\bank_reg[5] [3]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [3]),
        .O(\bank[2][5]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_44 
       (.I0(\bank_reg[11] [4]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [4]),
        .O(\bank[2][5]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_45 
       (.I0(data_write_ip0[4]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg_n_0_[8][4] ),
        .O(\bank[2][5]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_46 
       (.I0(\bank_reg[7] [4]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [4]),
        .O(\bank[2][5]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_47 
       (.I0(\bank_reg[5] [4]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [4]),
        .O(\bank[2][5]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_48 
       (.I0(\bank_reg[11] [5]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[10] [5]),
        .O(\bank[2][5]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_49 
       (.I0(data_write_ip0[5]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg_n_0_[8][5] ),
        .O(\bank[2][5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAEA2FFFFAAAA0000)) 
    \bank[2][5]_i_5 
       (.I0(\bank[2][5]_i_12_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(reg_a[5]),
        .I4(doing_alu),
        .I5(DOADO[9]),
        .O(\bank[2][5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_50 
       (.I0(\bank_reg[7] [5]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[6] [5]),
        .O(\bank[2][5]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \bank[2][5]_i_51 
       (.I0(\bank_reg[5] [5]),
        .I1(DOADO[0]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[4] [5]),
        .O(\bank[2][5]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][5]_i_6 
       (.I0(\bank_reg[14] [5]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank_reg[13][5]_0 [5]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(instruction_addr0),
        .O(\bank[2][5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_7 
       (.I0(\bank_reg[11] [5]),
        .I1(\bank_reg[10] [5]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[5]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg_n_0_[8][5] ),
        .O(\bank[2][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_8 
       (.I0(\bank_reg[7] [5]),
        .I1(\bank_reg[6] [5]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [5]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [5]),
        .O(\bank[2][5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][5]_i_9 
       (.I0(\bank_reg[3] [5]),
        .I1(\bank_reg[2] [5]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [5]),
        .O(\bank[2][5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[2][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][6]_i_11 
       (.I0(\bank[2][7]_i_13_0 [6]),
        .I1(Q[6]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][6]_i_2 
       (.I0(reg_b[6]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[6]),
        .I3(p_0_in),
        .I4(\bank[2][6]_i_5_n_0 ),
        .O(write_arg[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][6]_i_3 
       (.I0(\bank[2][6]_i_6_n_0 ),
        .I1(\bank[2][6]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][6]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][6]_i_9_n_0 ),
        .O(reg_b[6]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][6]_i_4 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[6]),
        .I3(io_load[6]),
        .O(load_result[6]));
  LUT6 #(
    .INIT(64'hAAAAFFFFEA2A0000)) 
    \bank[2][6]_i_5 
       (.I0(\bank_reg[8][0]_i_5_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[9]),
        .I3(reg_a[6]),
        .I4(doing_alu),
        .I5(DOADO[10]),
        .O(\bank[2][6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][6]_i_6 
       (.I0(\bank_reg[14] [6]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(addr1[8]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg_n_0_[12][6] ),
        .O(\bank[2][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][6]_i_7 
       (.I0(\bank_reg[11] [6]),
        .I1(\bank_reg[10] [6]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[6]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg_n_0_[8][6] ),
        .O(\bank[2][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][6]_i_8 
       (.I0(\bank_reg[7] [6]),
        .I1(\bank_reg[6] [6]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [6]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [6]),
        .O(\bank[2][6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][6]_i_9 
       (.I0(\bank_reg[3] [6]),
        .I1(\bank_reg[2] [6]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [6]),
        .O(\bank[2][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000400)) 
    \bank[2][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_6_n_0 ),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank[2][7]_i_8_n_0 ),
        .O(\bank[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bank[2][7]_i_10 
       (.I0(DOADO[5]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[6]),
        .O(\bank[2][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_11 
       (.I0(\bank[2][7]_i_16_n_0 ),
        .I1(\bank[2][7]_i_17_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_18_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][7]_i_19_n_0 ),
        .O(reg_b[7]));
  LUT6 #(
    .INIT(64'h0020202020202033)) 
    \bank[2][7]_i_12 
       (.I0(DOADO[8]),
        .I1(DOADO[15]),
        .I2(flags[7]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .I5(DOADO[14]),
        .O(\bank[2][7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \bank[2][7]_i_13 
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(data_load0[7]),
        .I3(io_load[7]),
        .O(load_result[7]));
  LUT6 #(
    .INIT(64'h5555001055551010)) 
    \bank[2][7]_i_14 
       (.I0(DOADO[14]),
        .I1(DOADO[12]),
        .I2(DOADO[13]),
        .I3(flags[7]),
        .I4(DOADO[15]),
        .I5(DOADO[8]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hAEA2FFFFAAAA0000)) 
    \bank[2][7]_i_15 
       (.I0(n),
        .I1(DOADO[9]),
        .I2(DOADO[10]),
        .I3(reg_a[7]),
        .I4(doing_alu),
        .I5(DOADO[11]),
        .O(\bank[2][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][7]_i_16 
       (.I0(\bank_reg[14] [7]),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(addr1[9]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg_n_0_[12][7] ),
        .O(\bank[2][7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_17 
       (.I0(\bank_reg[11] [7]),
        .I1(\bank_reg[10] [7]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(data_write_ip0[7]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(flags[7]),
        .O(\bank[2][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_18 
       (.I0(\bank_reg[7] [7]),
        .I1(\bank_reg[6] [7]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank_reg[5] [7]),
        .I4(\bank[2][7]_i_7_n_0 ),
        .I5(\bank_reg[4] [7]),
        .O(\bank[2][7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[2][7]_i_19 
       (.I0(\bank_reg[3] [7]),
        .I1(\bank_reg[2] [7]),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank_reg[1] [7]),
        .O(\bank[2][7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[2][7]_i_10_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[2][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hACA0A0A0)) 
    \bank[2][7]_i_21 
       (.I0(\bank[2][7]_i_13_0 [7]),
        .I1(Q[7]),
        .I2(\io/data_load20_out ),
        .I3(store_register1),
        .I4(p_0_in),
        .O(io_load[7]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \bank[2][7]_i_22 
       (.I0(p_0_in),
        .I1(\store_register[3]_i_13_n_0 ),
        .I2(\bank[2][7]_i_23_n_0 ),
        .I3(addr_0[0]),
        .I4(addr_0[8]),
        .O(\io/data_load20_out ));
  LUT6 #(
    .INIT(64'hCEDFEEFFDFDFFFFF)) 
    \bank[2][7]_i_23 
       (.I0(DOADO[15]),
        .I1(\store_register[3]_i_12_n_0 ),
        .I2(DOADO[13]),
        .I3(addr0[9]),
        .I4(DOADO[5]),
        .I5(addr0[1]),
        .O(\bank[2][7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFB15555B1B1)) 
    \bank[2][7]_i_3 
       (.I0(DOADO[14]),
        .I1(DOADO[12]),
        .I2(DOADO[13]),
        .I3(flags[7]),
        .I4(DOADO[15]),
        .I5(DOADO[8]),
        .O(en_write_reg0__2));
  LUT6 #(
    .INIT(64'h0000000400000404)) 
    \bank[2][7]_i_4 
       (.I0(DOADO[14]),
        .I1(DOADO[12]),
        .I2(DOADO[13]),
        .I3(flags[7]),
        .I4(DOADO[15]),
        .I5(DOADO[8]),
        .O(\bank[2][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \bank[2][7]_i_5 
       (.I0(DOADO[6]),
        .I1(\ir/skipped__4 ),
        .I2(DOADO[7]),
        .O(\bank[2][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bank[2][7]_i_6 
       (.I0(DOADO[5]),
        .I1(\ir/skipped__4 ),
        .O(\bank[2][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bank[2][7]_i_7 
       (.I0(DOADO[4]),
        .I1(\ir/skipped__4 ),
        .O(\bank[2][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \bank[2][7]_i_8 
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .O(\bank[2][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][7]_i_9 
       (.I0(reg_b[7]),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(load_result[7]),
        .I3(p_0_in),
        .I4(\bank[2][7]_i_15_n_0 ),
        .O(write_arg[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[3][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[3][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[3][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[3][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[3][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE04000000)) 
    \bank[3][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[2][7]_i_6_n_0 ),
        .I5(\bank[3][7]_i_3_n_0 ),
        .O(\bank[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[3][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[3][7]_i_4_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[3][7]_i_3 
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[3][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[3][7]_i_4 
       (.I0(DOADO[7]),
        .I1(DOADO[6]),
        .I2(DOADO[5]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[4]),
        .O(\bank[3][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[4][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[4][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[4][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[4][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[4][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[4][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000400)) 
    \bank[4][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\bank[4][7]_i_4_n_0 ),
        .I4(\bank[2][7]_i_6_n_0 ),
        .I5(\bank[4][7]_i_5_n_0 ),
        .O(\bank[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[4][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[4][7]_i_6_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bank[4][7]_i_3 
       (.I0(\bank[2][7]_i_7_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .O(\bank[4][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bank[4][7]_i_4 
       (.I0(DOADO[6]),
        .I1(\ir/skipped__4 ),
        .O(\bank[4][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \bank[4][7]_i_5 
       (.I0(DOADO[3]),
        .I1(DOADO[0]),
        .I2(DOADO[2]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[4][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bank[4][7]_i_6 
       (.I0(DOADO[6]),
        .I1(DOADO[4]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[4][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[5][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[5][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[5][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[5][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[5][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[5][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE04000000)) 
    \bank[5][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[5][7]_i_4_n_0 ),
        .O(\bank[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[5][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[5][7]_i_5_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bank[5][7]_i_3 
       (.I0(\bank[2][7]_i_6_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .O(\bank[5][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[5][7]_i_4 
       (.I0(DOADO[3]),
        .I1(DOADO[1]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[2]),
        .O(\bank[5][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[5][7]_i_5 
       (.I0(DOADO[7]),
        .I1(DOADO[5]),
        .I2(DOADO[6]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[4]),
        .O(\bank[5][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[6][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[6][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[6][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[6][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[6][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[6][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE04000000)) 
    \bank[6][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_6_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[6][7]_i_3_n_0 ),
        .O(\bank[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[6][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[6][7]_i_4_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[6][7]_i_3 
       (.I0(DOADO[3]),
        .I1(DOADO[0]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[2]),
        .O(\bank[6][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[6][7]_i_4 
       (.I0(DOADO[7]),
        .I1(DOADO[4]),
        .I2(DOADO[6]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[6][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][0]_i_1 
       (.I0(write_arg[0]),
        .I1(en_write_reg0__2),
        .I2(reg_a[0]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[0]),
        .O(\bank[7][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][1]_i_1 
       (.I0(write_arg[1]),
        .I1(en_write_reg0__2),
        .I2(reg_a[1]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[1]),
        .O(\bank[7][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][2]_i_1 
       (.I0(write_arg[2]),
        .I1(en_write_reg0__2),
        .I2(reg_a[2]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[2]),
        .O(\bank[7][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][3]_i_1 
       (.I0(write_arg[3]),
        .I1(en_write_reg0__2),
        .I2(reg_a[3]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[3]),
        .O(\bank[7][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][4]_i_1 
       (.I0(write_arg[4]),
        .I1(en_write_reg0__2),
        .I2(reg_a[4]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[4]),
        .O(\bank[7][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][5]_i_1 
       (.I0(write_arg[5]),
        .I1(en_write_reg0__2),
        .I2(reg_a[5]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[5]),
        .O(\bank[7][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][6]_i_1 
       (.I0(write_arg[6]),
        .I1(en_write_reg0__2),
        .I2(reg_a[6]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[6]),
        .O(\bank[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEE00000040)) 
    \bank[7][7]_i_1 
       (.I0(en_write_reg0__2),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][7]_i_4_n_0 ),
        .I3(\bank[7][7]_i_3_n_0 ),
        .I4(\bank[7][7]_i_4_n_0 ),
        .I5(\bank[7][7]_i_5_n_0 ),
        .O(\bank[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[7][7]_i_2 
       (.I0(write_arg[7]),
        .I1(en_write_reg0__2),
        .I2(reg_a[7]),
        .I3(\bank[7][7]_i_6_n_0 ),
        .I4(reg_b[7]),
        .O(\bank[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bank[7][7]_i_3 
       (.I0(DOADO[7]),
        .I1(\ir/skipped__4 ),
        .O(\bank[7][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bank[7][7]_i_4 
       (.I0(\bank[2][7]_i_6_n_0 ),
        .I1(\bank[2][7]_i_7_n_0 ),
        .O(\bank[7][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[7][7]_i_5 
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[7][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[7][7]_i_6 
       (.I0(DOADO[4]),
        .I1(DOADO[7]),
        .I2(DOADO[6]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[7][7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][0]_i_1 
       (.I0(flags_arg[0]),
        .I1(should_write_flags__10),
        .I2(write_arg[0]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][0]_i_3_n_0 ),
        .O(\bank[8][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[8][0]_i_10 
       (.I0(\bank[8][0]_i_14_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[8][0]_i_15_n_0 ),
        .I3(\bank[8][0]_i_8_n_0 ),
        .I4(data5[6]),
        .O(\bank[8][0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAEEEA222)) 
    \bank[8][0]_i_11 
       (.I0(\bank[8][0]_i_17_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(DOADO[9]),
        .I4(\bank_reg[8][2]_i_4_0 [2]),
        .O(\bank[8][0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \bank[8][0]_i_12 
       (.I0(reg_a[1]),
        .I1(DOADO[4]),
        .I2(reg_a[0]),
        .I3(DOADO[5]),
        .O(\bank[8][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[8][0]_i_13 
       (.I0(reg_a[2]),
        .I1(reg_a[3]),
        .I2(DOADO[5]),
        .I3(reg_a[4]),
        .I4(DOADO[4]),
        .I5(reg_a[5]),
        .O(\bank[8][0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \bank[8][0]_i_14 
       (.I0(reg_a[0]),
        .I1(DOADO[5]),
        .I2(reg_a[1]),
        .I3(DOADO[4]),
        .I4(reg_a[2]),
        .O(\bank[8][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[8][0]_i_15 
       (.I0(reg_a[3]),
        .I1(reg_a[4]),
        .I2(DOADO[5]),
        .I3(reg_a[5]),
        .I4(DOADO[4]),
        .I5(reg_a[6]),
        .O(\bank[8][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h55005F0355005C00)) 
    \bank[8][0]_i_16 
       (.I0(DOADO[7]),
        .I1(DOADO[4]),
        .I2(DOADO[5]),
        .I3(reg_a[7]),
        .I4(DOADO[6]),
        .I5(reg_a[6]),
        .O(data5[6]));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[8][0]_i_17 
       (.I0(\bank_reg[8][3]_i_9_n_5 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[6]),
        .I4(reg_b[6]),
        .O(\bank[8][0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    \bank[8][0]_i_2 
       (.I0(\bank[8][0]_i_4_n_0 ),
        .I1(n),
        .I2(\bank_reg[8][0]_i_5_n_0 ),
        .I3(\bank[8][0]_i_6_n_0 ),
        .I4(doing_alu),
        .I5(flags[0]),
        .O(flags_arg[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][0]_i_3 
       (.I0(reg_a[0]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[0]),
        .O(\bank[8][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \bank[8][0]_i_4 
       (.I0(\bank[2][4]_i_12_n_0 ),
        .I1(\bank[8][0]_i_7_n_0 ),
        .I2(\bank[8][2]_i_5_n_0 ),
        .I3(\bank_reg[8][2]_i_4_0 [1]),
        .I4(\bank[8][0]_i_8_n_0 ),
        .I5(\bank[8][0]_i_9_n_0 ),
        .O(\bank[8][0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bank[8][0]_i_6 
       (.I0(\bank[2][1]_i_12_n_0 ),
        .I1(\bank_reg[2][0]_i_12_n_0 ),
        .I2(\bank_reg[2][3]_i_12_n_0 ),
        .I3(\bank[2][2]_i_12_n_0 ),
        .O(\bank[8][0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[8][0]_i_7 
       (.I0(\bank[8][0]_i_12_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[8][0]_i_13_n_0 ),
        .I3(\bank[8][0]_i_8_n_0 ),
        .I4(data5[5]),
        .O(\bank[8][0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \bank[8][0]_i_8 
       (.I0(DOADO[11]),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .O(\bank[8][0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[8][0]_i_9 
       (.I0(\bank_reg[8][3]_i_9_n_6 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[5]),
        .I4(reg_b[5]),
        .O(\bank[8][0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][1]_i_1 
       (.I0(flags_arg[1]),
        .I1(should_write_flags__10),
        .I2(write_arg[1]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][1]_i_3_n_0 ),
        .O(\bank[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8400FFFF84000000)) 
    \bank[8][1]_i_2 
       (.I0(a_sub_b_carry__0_i_5_n_0),
        .I1(\alu/v10_out ),
        .I2(DOADO[11]),
        .I3(\bank[8][1]_i_5_n_0 ),
        .I4(doing_alu),
        .I5(flags[1]),
        .O(flags_arg[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][1]_i_3 
       (.I0(reg_a[1]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[1]),
        .O(\bank[8][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bank[8][1]_i_4 
       (.I0(n),
        .I1(reg_a[7]),
        .O(\alu/v10_out ));
  LUT3 #(
    .INIT(8'h38)) 
    \bank[8][1]_i_5 
       (.I0(DOADO[9]),
        .I1(DOADO[10]),
        .I2(DOADO[11]),
        .O(\bank[8][1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][2]_i_1 
       (.I0(flags_arg[2]),
        .I1(should_write_flags__10),
        .I2(write_arg[2]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][2]_i_3_n_0 ),
        .O(\bank[8][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0000)) 
    \bank[8][2]_i_10 
       (.I0(DOADO[5]),
        .I1(DOADO[6]),
        .I2(DOADO[4]),
        .I3(DOADO[7]),
        .I4(reg_a[7]),
        .O(data5[7]));
  LUT5 #(
    .INIT(32'hB3BCBC80)) 
    \bank[8][2]_i_11 
       (.I0(\bank_reg[8][3]_i_9_n_4 ),
        .I1(DOADO[10]),
        .I2(DOADO[9]),
        .I3(reg_a[7]),
        .I4(reg_b[7]),
        .O(\bank[8][2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][2]_i_2 
       (.I0(n),
        .I1(doing_alu),
        .I2(flags[2]),
        .O(flags_arg[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][2]_i_3 
       (.I0(reg_a[2]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[2]),
        .O(\bank[8][2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bank[8][2]_i_5 
       (.I0(DOADO[10]),
        .I1(DOADO[11]),
        .O(\bank[8][2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bank[8][2]_i_6 
       (.I0(\bank[8][2]_i_8_n_0 ),
        .I1(DOADO[6]),
        .I2(\bank[8][2]_i_9_n_0 ),
        .I3(\bank[8][0]_i_8_n_0 ),
        .I4(data5[7]),
        .O(\bank[8][2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEEEA222)) 
    \bank[8][2]_i_7 
       (.I0(\bank[8][2]_i_11_n_0 ),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(DOADO[9]),
        .I4(\bank_reg[8][2]_i_4_0 [3]),
        .O(\bank[8][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[8][2]_i_8 
       (.I0(reg_a[0]),
        .I1(reg_a[1]),
        .I2(DOADO[5]),
        .I3(reg_a[2]),
        .I4(DOADO[4]),
        .I5(reg_a[3]),
        .O(\bank[8][2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[8][2]_i_9 
       (.I0(reg_a[4]),
        .I1(reg_a[5]),
        .I2(DOADO[5]),
        .I3(reg_a[6]),
        .I4(DOADO[4]),
        .I5(reg_a[7]),
        .O(\bank[8][2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][3]_i_1 
       (.I0(flags_arg[3]),
        .I1(should_write_flags__10),
        .I2(write_arg[3]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][3]_i_3_n_0 ),
        .O(\bank[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \bank[8][3]_i_2 
       (.I0(\bank[8][3]_i_4_n_0 ),
        .I1(DOADO[10]),
        .I2(DOADO[11]),
        .I3(\bank_reg[8][3]_i_5_n_3 ),
        .I4(doing_alu),
        .I5(flags[3]),
        .O(flags_arg[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][3]_i_3 
       (.I0(reg_a[3]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[3]),
        .O(\bank[8][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \bank[8][3]_i_4 
       (.I0(DOADO[9]),
        .I1(\bank_reg[8][3]_i_6_n_3 ),
        .I2(DOADO[11]),
        .I3(\bank[8][3]_i_7_n_0 ),
        .I4(DOADO[6]),
        .I5(\bank[8][3]_i_8_n_0 ),
        .O(\bank[8][3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \bank[8][3]_i_7 
       (.I0(reg_a[5]),
        .I1(reg_a[6]),
        .I2(DOADO[5]),
        .I3(DOADO[4]),
        .I4(reg_a[7]),
        .O(\bank[8][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[8][3]_i_8 
       (.I0(reg_a[1]),
        .I1(reg_a[2]),
        .I2(DOADO[5]),
        .I3(reg_a[3]),
        .I4(DOADO[4]),
        .I5(reg_a[4]),
        .O(\bank[8][3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][4]_i_1 
       (.I0(\bank_reg_n_0_[8][4] ),
        .I1(should_write_flags__10),
        .I2(write_arg[4]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][4]_i_2_n_0 ),
        .O(\bank[8][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][4]_i_2 
       (.I0(reg_a[4]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[4]),
        .O(\bank[8][4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][5]_i_1 
       (.I0(\bank_reg_n_0_[8][5] ),
        .I1(should_write_flags__10),
        .I2(write_arg[5]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][5]_i_2_n_0 ),
        .O(\bank[8][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][5]_i_2 
       (.I0(reg_a[5]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[5]),
        .O(\bank[8][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][6]_i_1 
       (.I0(\bank_reg_n_0_[8][6] ),
        .I1(should_write_flags__10),
        .I2(write_arg[6]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][6]_i_2_n_0 ),
        .O(\bank[8][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][6]_i_2 
       (.I0(reg_a[6]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[6]),
        .O(\bank[8][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFEAA)) 
    \bank[8][7]_i_1 
       (.I0(should_write_flags__10),
        .I1(\bank[8][7]_i_4_n_0 ),
        .I2(\bank[8][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(en_write_reg0__2),
        .O(\bank[8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD7000000)) 
    \bank[8][7]_i_10 
       (.I0(DOADO[7]),
        .I1(DOADO[3]),
        .I2(flags[3]),
        .I3(\bank[8][7]_i_14_n_0 ),
        .I4(\bank[8][7]_i_15_n_0 ),
        .O(\setcc_logic/flags_comparison__6 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bank[8][7]_i_11 
       (.I0(DOADO[7]),
        .I1(DOADO[4]),
        .I2(DOADO[6]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[8][7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \bank[8][7]_i_12 
       (.I0(DOADO[6]),
        .I1(\ir/skipped__4 ),
        .I2(DOADO[7]),
        .O(\bank[8][7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \bank[8][7]_i_13 
       (.I0(DOADO[3]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(p_6_in));
  LUT6 #(
    .INIT(64'hD7D700D700D7D7D7)) 
    \bank[8][7]_i_14 
       (.I0(DOADO[5]),
        .I1(DOADO[1]),
        .I2(flags[1]),
        .I3(DOADO[6]),
        .I4(DOADO[2]),
        .I5(flags[2]),
        .O(\bank[8][7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \bank[8][7]_i_15 
       (.I0(flags[0]),
        .I1(DOADO[0]),
        .I2(DOADO[4]),
        .O(\bank[8][7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][7]_i_2 
       (.I0(flags_arg[7]),
        .I1(should_write_flags__10),
        .I2(write_arg[7]),
        .I3(en_write_reg0__2),
        .I4(\bank[8][7]_i_7_n_0 ),
        .O(\bank[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010002000000000)) 
    \bank[8][7]_i_3 
       (.I0(DOADO[13]),
        .I1(DOADO[15]),
        .I2(DOADO[14]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[12]),
        .I5(\bank[8][7]_i_8_n_0 ),
        .O(should_write_flags__10));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \bank[8][7]_i_4 
       (.I0(DOADO[0]),
        .I1(DOADO[2]),
        .I2(DOADO[3]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[1]),
        .O(\bank[8][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \bank[8][7]_i_5 
       (.I0(DOADO[4]),
        .I1(DOADO[6]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[5]),
        .O(\bank[8][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAFA50505500)) 
    \bank[8][7]_i_6 
       (.I0(doing_alu),
        .I1(DOADO[11]),
        .I2(DOADO[10]),
        .I3(DOADO[9]),
        .I4(\setcc_logic/flags_comparison__6 ),
        .I5(flags[7]),
        .O(flags_arg[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][7]_i_7 
       (.I0(reg_a[7]),
        .I1(\bank[8][7]_i_11_n_0 ),
        .I2(reg_b[7]),
        .O(\bank[8][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFD00005555)) 
    \bank[8][7]_i_8 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank[2][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[8][7]_i_12_n_0 ),
        .I4(en_write_reg0__2),
        .I5(p_6_in),
        .O(\bank[8][7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000130000000000)) 
    \bank[8][7]_i_9 
       (.I0(DOADO[8]),
        .I1(DOADO[15]),
        .I2(flags[7]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .I5(DOADO[14]),
        .O(doing_alu));
  LUT5 #(
    .INIT(32'h74777444)) 
    \bank[9][0]_i_1 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(should_write_ip__7),
        .I2(write_arg[0]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][0]_i_2_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][0]_i_2 
       (.I0(reg_a[0]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[0]),
        .O(\bank[9][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \bank[9][1]_i_1 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(\bank_reg[12][2]_0 [0]),
        .I2(should_write_ip__7),
        .I3(write_arg[1]),
        .I4(en_write_reg0__2),
        .I5(\bank[9][1]_i_2_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][1]_i_2 
       (.I0(reg_a[1]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[1]),
        .O(\bank[9][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][2]_i_1 
       (.I0(data_write_ip0[2]),
        .I1(should_write_ip__7),
        .I2(write_arg[2]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][2]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \bank[9][2]_i_2 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(\bank_reg[12][2]_0 [0]),
        .I2(\bank_reg[9]__0 [2]),
        .O(data_write_ip0[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][2]_i_3 
       (.I0(reg_a[2]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[2]),
        .O(\bank[9][2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][3]_i_1 
       (.I0(data_write_ip0[3]),
        .I1(should_write_ip__7),
        .I2(write_arg[3]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][3]_i_3_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bank[9][3]_i_2 
       (.I0(\bank_reg[12][2]_0 [0]),
        .I1(\bank_reg[9][0]_0 ),
        .I2(\bank_reg[9]__0 [2]),
        .I3(\bank_reg[9]__0 [3]),
        .O(data_write_ip0[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][3]_i_3 
       (.I0(reg_a[3]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[3]),
        .O(\bank[9][3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][4]_i_1 
       (.I0(data_write_ip0[4]),
        .I1(should_write_ip__7),
        .I2(write_arg[4]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][4]_i_3_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bank[9][4]_i_2 
       (.I0(\bank_reg[9]__0 [2]),
        .I1(\bank_reg[9][0]_0 ),
        .I2(\bank_reg[12][2]_0 [0]),
        .I3(\bank_reg[9]__0 [3]),
        .I4(\bank_reg[9]__0 [4]),
        .O(data_write_ip0[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][4]_i_3 
       (.I0(reg_a[4]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[4]),
        .O(\bank[9][4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][5]_i_1 
       (.I0(data_write_ip0[5]),
        .I1(should_write_ip__7),
        .I2(write_arg[5]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][5]_i_3_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bank[9][5]_i_2 
       (.I0(\bank_reg[9]__0 [3]),
        .I1(\bank_reg[12][2]_0 [0]),
        .I2(\bank_reg[9][0]_0 ),
        .I3(\bank_reg[9]__0 [2]),
        .I4(\bank_reg[9]__0 [4]),
        .I5(\bank_reg[9]__0 [5]),
        .O(data_write_ip0[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][5]_i_3 
       (.I0(reg_a[5]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[5]),
        .O(\bank[9][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][6]_i_1 
       (.I0(data_write_ip0[6]),
        .I1(should_write_ip__7),
        .I2(write_arg[6]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][6]_i_3_n_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bank[9][6]_i_2 
       (.I0(\bank[9][7]_i_10_n_0 ),
        .I1(\bank_reg[9]__0 [6]),
        .O(data_write_ip0[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][6]_i_3 
       (.I0(reg_a[6]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[6]),
        .O(\bank[9][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFAAAA)) 
    \bank[9][7]_i_1 
       (.I0(should_write_ip__7),
        .I1(\bank[9][7]_i_4_n_0 ),
        .I2(\bank[13][7]_i_3_n_0 ),
        .I3(\bank[9][7]_i_5_n_0 ),
        .I4(\bank[2][7]_i_4_n_0 ),
        .I5(en_write_reg0__2),
        .O(\bank[9][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bank[9][7]_i_10 
       (.I0(\bank_reg[9]__0 [5]),
        .I1(\bank_reg[9]__0 [3]),
        .I2(\bank_reg[12][2]_0 [0]),
        .I3(\bank_reg[9][0]_0 ),
        .I4(\bank_reg[9]__0 [2]),
        .I5(\bank_reg[9]__0 [4]),
        .O(\bank[9][7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[9][7]_i_11 
       (.I0(DOADO[6]),
        .I1(DOADO[5]),
        .I2(DOADO[7]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[4]),
        .O(\bank[9][7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[9][7]_i_2 
       (.I0(data_write_ip0[7]),
        .I1(should_write_ip__7),
        .I2(write_arg[7]),
        .I3(en_write_reg0__2),
        .I4(\bank[9][7]_i_7_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFDFFFD00005555)) 
    \bank[9][7]_i_3 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank[4][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_6_n_0 ),
        .I3(\bank[9][7]_i_8_n_0 ),
        .I4(en_write_reg0__2),
        .I5(p_2_in__0),
        .O(should_write_ip__7));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[9][7]_i_4 
       (.I0(DOADO[1]),
        .I1(DOADO[2]),
        .I2(DOADO[0]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[3]),
        .O(\bank[9][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bank[9][7]_i_5 
       (.I0(\bank[4][7]_i_4_n_0 ),
        .I1(\bank[2][7]_i_6_n_0 ),
        .O(\bank[9][7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bank[9][7]_i_6 
       (.I0(\bank[9][7]_i_10_n_0 ),
        .I1(\bank_reg[9]__0 [6]),
        .I2(\bank_reg[9]__0 [7]),
        .O(data_write_ip0[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][7]_i_7 
       (.I0(reg_a[7]),
        .I1(\bank[9][7]_i_11_n_0 ),
        .I2(reg_b[7]),
        .O(\bank[9][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bank[9][7]_i_8 
       (.I0(\bank[2][7]_i_7_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .O(\bank[9][7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \bank[9][7]_i_9 
       (.I0(DOADO[3]),
        .I1(DOADO[0]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[2]),
        .O(p_2_in__0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][0] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][0]_i_1_n_0 ),
        .Q(\bank_reg[10] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][1] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][1]_i_1_n_0 ),
        .Q(\bank_reg[10] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][2] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][2]_i_1_n_0 ),
        .Q(\bank_reg[10] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][3] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][3]_i_1_n_0 ),
        .Q(\bank_reg[10] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][4] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][4]_i_1_n_0 ),
        .Q(\bank_reg[10] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][5] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][5]_i_1_n_0 ),
        .Q(\bank_reg[10] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][6] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][6]_i_1_n_0 ),
        .Q(\bank_reg[10] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][7] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][7]_i_2_n_0 ),
        .Q(\bank_reg[10] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][0] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][0]_i_1_n_0 ),
        .Q(\bank_reg[11] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][1] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][1]_i_1_n_0 ),
        .Q(\bank_reg[11] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][2] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][2]_i_1_n_0 ),
        .Q(\bank_reg[11] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][3] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][3]_i_1_n_0 ),
        .Q(\bank_reg[11] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][4] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][4]_i_1_n_0 ),
        .Q(\bank_reg[11] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][5] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][5]_i_1_n_0 ),
        .Q(\bank_reg[11] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][6] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][6]_i_1_n_0 ),
        .Q(\bank_reg[11] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][7] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][7]_i_2_n_0 ),
        .Q(\bank_reg[11] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][0] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][0]_i_1_n_0 ),
        .Q(\bank_reg[12][4]_0 [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][1] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][1]_i_1_n_0 ),
        .Q(\bank_reg[12][4]_0 [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][2] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][2]_i_1_n_0 ),
        .Q(\bank_reg[12][4]_0 [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][3] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][3]_i_1_n_0 ),
        .Q(\bank_reg[12][4]_0 [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][4] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][4]_i_1_n_0 ),
        .Q(\bank_reg[12][4]_0 [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][5] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][5]_i_1_n_0 ),
        .Q(instruction_addr0),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][6] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][6]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[12][6] ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][7] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][7]_i_2_n_0 ),
        .Q(\bank_reg_n_0_[12][7] ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][0] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][0]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][1] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][1]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][2] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][2]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][3] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][3]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][4] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][4]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][5] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][5]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][6] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][6]_i_1_n_0 ),
        .Q(addr1[8]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][7] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][7]_i_2_n_0 ),
        .Q(addr1[9]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][0] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][0]_i_1_n_0 ),
        .Q(\bank_reg[14] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][1] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][1]_i_1_n_0 ),
        .Q(\bank_reg[14] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][2] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][2]_i_1_n_0 ),
        .Q(\bank_reg[14] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][3] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][3]_i_1_n_0 ),
        .Q(\bank_reg[14] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][4] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][4]_i_1_n_0 ),
        .Q(\bank_reg[14] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][5] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][5]_i_1_n_0 ),
        .Q(\bank_reg[14] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][6] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][6]_i_1_n_0 ),
        .Q(\bank_reg[14] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][7] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][7]_i_2_n_0 ),
        .Q(\bank_reg[14] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][0] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][0]_i_1_n_0 ),
        .Q(\bank_reg[1] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][1] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][1]_i_1_n_0 ),
        .Q(\bank_reg[1] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][2] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][2]_i_1_n_0 ),
        .Q(\bank_reg[1] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][3] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][3]_i_1_n_0 ),
        .Q(\bank_reg[1] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][4] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][4]_i_1_n_0 ),
        .Q(\bank_reg[1] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][5] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][5]_i_1_n_0 ),
        .Q(\bank_reg[1] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][6] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][6]_i_1_n_0 ),
        .Q(\bank_reg[1] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][7] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][7]_i_2_n_0 ),
        .Q(\bank_reg[1] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][0] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][0]_i_1_n_0 ),
        .Q(\bank_reg[2] [0]),
        .R(D));
  MUXF7 \bank_reg[2][0]_i_12 
       (.I0(\bank[2][0]_i_13_n_0 ),
        .I1(\bank[2][0]_i_14_n_0 ),
        .O(\bank_reg[2][0]_i_12_n_0 ),
        .S(\bank[8][2]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][1] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][1]_i_1_n_0 ),
        .Q(\bank_reg[2] [1]),
        .R(D));
  MUXF7 \bank_reg[2][1]_i_15 
       (.I0(shift_right0[1]),
        .I1(shift_right00_in[1]),
        .O(data5[1]),
        .S(DOADO[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][2] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][2]_i_1_n_0 ),
        .Q(\bank_reg[2] [2]),
        .R(D));
  MUXF7 \bank_reg[2][2]_i_15 
       (.I0(shift_right0[2]),
        .I1(shift_right00_in[2]),
        .O(data5[2]),
        .S(DOADO[7]));
  CARRY4 \bank_reg[2][2]_i_16 
       (.CI(1'b0),
        .CO({\bank_reg[2][2]_i_16_n_0 ,\bank_reg[2][2]_i_16_n_1 ,\bank_reg[2][2]_i_16_n_2 ,\bank_reg[2][2]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI(reg_a[3:0]),
        .O({\bank_reg[2][2]_i_16_n_4 ,\bank_reg[2][2]_i_16_n_5 ,\bank_reg[2][2]_i_16_n_6 ,\bank_reg[2][2]_i_16_n_7 }),
        .S(\bank[2][0]_i_18_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][3] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][3]_i_1_n_0 ),
        .Q(\bank_reg[2] [3]),
        .R(D));
  MUXF7 \bank_reg[2][3]_i_12 
       (.I0(\bank[2][3]_i_13_n_0 ),
        .I1(\bank[2][3]_i_14_n_0 ),
        .O(\bank_reg[2][3]_i_12_n_0 ),
        .S(\bank[8][2]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][4] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][4]_i_1_n_0 ),
        .Q(\bank_reg[2] [4]),
        .R(D));
  MUXF7 \bank_reg[2][4]_i_16 
       (.I0(shift_right0[4]),
        .I1(shift_right00_in[4]),
        .O(data5[4]),
        .S(DOADO[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][5] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][5]_i_1_n_0 ),
        .Q(\bank_reg[2] [5]),
        .R(D));
  MUXF7 \bank_reg[2][5]_i_14 
       (.I0(shift_right0[5]),
        .I1(shift_right00_in[5]),
        .O(data5[5]),
        .S(DOADO[7]));
  MUXF7 \bank_reg[2][5]_i_20 
       (.I0(\store_register[0]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .O(\bank_reg[2][5]_i_20_n_0 ),
        .S(\store_register[3]_i_9_n_0 ));
  MUXF7 \bank_reg[2][5]_i_21 
       (.I0(\store_register[0]_i_5_n_0 ),
        .I1(\store_register[0]_i_4_n_0 ),
        .O(\bank_reg[2][5]_i_21_n_0 ),
        .S(\store_register[3]_i_9_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][6] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][6]_i_1_n_0 ),
        .Q(\bank_reg[2] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][7] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][7]_i_2_n_0 ),
        .Q(\bank_reg[2] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][0] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][0]_i_1_n_0 ),
        .Q(\bank_reg[3] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][1] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][1]_i_1_n_0 ),
        .Q(\bank_reg[3] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][2] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][2]_i_1_n_0 ),
        .Q(\bank_reg[3] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][3] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][3]_i_1_n_0 ),
        .Q(\bank_reg[3] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][4] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][4]_i_1_n_0 ),
        .Q(\bank_reg[3] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][5] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][5]_i_1_n_0 ),
        .Q(\bank_reg[3] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][6] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][6]_i_1_n_0 ),
        .Q(\bank_reg[3] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][7] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][7]_i_2_n_0 ),
        .Q(\bank_reg[3] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][0] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][0]_i_1_n_0 ),
        .Q(\bank_reg[4] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][1] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][1]_i_1_n_0 ),
        .Q(\bank_reg[4] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][2] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][2]_i_1_n_0 ),
        .Q(\bank_reg[4] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][3] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][3]_i_1_n_0 ),
        .Q(\bank_reg[4] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][4] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][4]_i_1_n_0 ),
        .Q(\bank_reg[4] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][5] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][5]_i_1_n_0 ),
        .Q(\bank_reg[4] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][6] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][6]_i_1_n_0 ),
        .Q(\bank_reg[4] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][7] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][7]_i_2_n_0 ),
        .Q(\bank_reg[4] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][0] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][0]_i_1_n_0 ),
        .Q(\bank_reg[5] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][1] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][1]_i_1_n_0 ),
        .Q(\bank_reg[5] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][2] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][2]_i_1_n_0 ),
        .Q(\bank_reg[5] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][3] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][3]_i_1_n_0 ),
        .Q(\bank_reg[5] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][4] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][4]_i_1_n_0 ),
        .Q(\bank_reg[5] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][5] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][5]_i_1_n_0 ),
        .Q(\bank_reg[5] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][6] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][6]_i_1_n_0 ),
        .Q(\bank_reg[5] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][7] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][7]_i_2_n_0 ),
        .Q(\bank_reg[5] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][0] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][0]_i_1_n_0 ),
        .Q(\bank_reg[6] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][1] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][1]_i_1_n_0 ),
        .Q(\bank_reg[6] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][2] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][2]_i_1_n_0 ),
        .Q(\bank_reg[6] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][3] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][3]_i_1_n_0 ),
        .Q(\bank_reg[6] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][4] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][4]_i_1_n_0 ),
        .Q(\bank_reg[6] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][5] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][5]_i_1_n_0 ),
        .Q(\bank_reg[6] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][6] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][6]_i_1_n_0 ),
        .Q(\bank_reg[6] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][7] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][7]_i_2_n_0 ),
        .Q(\bank_reg[6] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][0] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][0]_i_1_n_0 ),
        .Q(\bank_reg[7] [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][1] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][1]_i_1_n_0 ),
        .Q(\bank_reg[7] [1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][2] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][2]_i_1_n_0 ),
        .Q(\bank_reg[7] [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][3] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][3]_i_1_n_0 ),
        .Q(\bank_reg[7] [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][4] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][4]_i_1_n_0 ),
        .Q(\bank_reg[7] [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][5] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][5]_i_1_n_0 ),
        .Q(\bank_reg[7] [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][6] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][6]_i_1_n_0 ),
        .Q(\bank_reg[7] [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][7] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][7]_i_2_n_0 ),
        .Q(\bank_reg[7] [7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][0] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][0]_i_1_n_0 ),
        .Q(flags[0]),
        .R(D));
  MUXF7 \bank_reg[8][0]_i_5 
       (.I0(\bank[8][0]_i_10_n_0 ),
        .I1(\bank[8][0]_i_11_n_0 ),
        .O(\bank_reg[8][0]_i_5_n_0 ),
        .S(\bank[8][2]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][1] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][1]_i_1_n_0 ),
        .Q(flags[1]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][2] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][2]_i_1_n_0 ),
        .Q(flags[2]),
        .R(D));
  MUXF7 \bank_reg[8][2]_i_4 
       (.I0(\bank[8][2]_i_6_n_0 ),
        .I1(\bank[8][2]_i_7_n_0 ),
        .O(n),
        .S(\bank[8][2]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][3] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][3]_i_1_n_0 ),
        .Q(flags[3]),
        .R(D));
  CARRY4 \bank_reg[8][3]_i_5 
       (.CI(CO),
        .CO({\NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED [3:1],\bank_reg[8][3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bank_reg[8][3]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bank_reg[8][3]_i_6 
       (.CI(\bank_reg[8][3]_i_9_n_0 ),
        .CO({\NLW_bank_reg[8][3]_i_6_CO_UNCONNECTED [3:1],\bank_reg[8][3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bank_reg[8][3]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bank_reg[8][3]_i_9 
       (.CI(\bank_reg[2][2]_i_16_n_0 ),
        .CO({\bank_reg[8][3]_i_9_n_0 ,\bank_reg[8][3]_i_9_n_1 ,\bank_reg[8][3]_i_9_n_2 ,\bank_reg[8][3]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(reg_a[7:4]),
        .O({\bank_reg[8][3]_i_9_n_4 ,\bank_reg[8][3]_i_9_n_5 ,\bank_reg[8][3]_i_9_n_6 ,\bank_reg[8][3]_i_9_n_7 }),
        .S(\bank[2][4]_i_14_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][4] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][4]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][4] ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][5] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][5]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][5] ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][6] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][6]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][6] ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][7] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][7]_i_2_n_0 ),
        .Q(flags[7]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][0] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\bank_reg[9][0]_0 ),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][1] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\bank_reg[12][2]_0 [0]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][2] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\bank_reg[9]__0 [2]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][3] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\bank_reg[9]__0 [3]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][4] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\bank_reg[9]__0 [4]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][5] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\bank_reg[9]__0 [5]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][6] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\bank_reg[9]__0 [6]),
        .R(D));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][7] 
       (.C(sysclk),
        .CE(\bank[9][7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\bank_reg[9]__0 [7]),
        .R(D));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry__0_i_1
       (.I0(instruction_addr0),
        .I1(\bank_reg[9]__0 [7]),
        .O(\bank_reg[12][5]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry__0_i_2
       (.I0(\bank_reg[12][4]_0 [4]),
        .I1(\bank_reg[9]__0 [6]),
        .O(\bank_reg[12][5]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry__0_i_3
       (.I0(\bank_reg[12][4]_0 [3]),
        .I1(\bank_reg[9]__0 [5]),
        .O(\bank_reg[12][5]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry_i_1
       (.I0(\bank_reg[12][4]_0 [2]),
        .I1(\bank_reg[9]__0 [4]),
        .O(\bank_reg[12][2]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry_i_2
       (.I0(\bank_reg[12][4]_0 [1]),
        .I1(\bank_reg[9]__0 [3]),
        .O(\bank_reg[12][2]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    instruction_addr_carry_i_3
       (.I0(\bank_reg[12][4]_0 [0]),
        .I1(\bank_reg[9]__0 [2]),
        .O(\bank_reg[12][2]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[0]_i_1 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(\store_register[0]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[0]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[0]_i_5_n_0 ),
        .O(reg_a[0]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[0]_i_2 
       (.I0(\bank_reg[14] [0]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [0]),
        .I4(DOADO[0]),
        .I5(\bank_reg[12][4]_0 [0]),
        .O(\store_register[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \store_register[0]_i_3 
       (.I0(\bank_reg[11] [0]),
        .I1(\bank_reg[10] [0]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[9][0]_0 ),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(flags[0]),
        .O(\store_register[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[0]_i_4 
       (.I0(\bank_reg[7] [0]),
        .I1(\bank_reg[6] [0]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [0]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [0]),
        .O(\store_register[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[0]_i_5 
       (.I0(\bank_reg[3] [0]),
        .I1(\bank_reg[2] [0]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [0]),
        .O(\store_register[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[1]_i_1 
       (.I0(\store_register[1]_i_2_n_0 ),
        .I1(\store_register[1]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[1]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[1]_i_5_n_0 ),
        .O(reg_a[1]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[1]_i_2 
       (.I0(\bank_reg[14] [1]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [1]),
        .I4(DOADO[0]),
        .I5(\bank_reg[12][4]_0 [1]),
        .O(\store_register[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[1]_i_3 
       (.I0(\bank_reg[11] [1]),
        .I1(\bank_reg[10] [1]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[1]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(flags[1]),
        .O(\store_register[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[1]_i_4 
       (.I0(\bank_reg[7] [1]),
        .I1(\bank_reg[6] [1]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [1]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [1]),
        .O(\store_register[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[1]_i_5 
       (.I0(\bank_reg[3] [1]),
        .I1(\bank_reg[2] [1]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [1]),
        .O(\store_register[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \store_register[1]_i_6 
       (.I0(\bank_reg[9][0]_0 ),
        .I1(\bank_reg[12][2]_0 [0]),
        .O(data_write_ip0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[2]_i_1 
       (.I0(\store_register[2]_i_2_n_0 ),
        .I1(\store_register[2]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[2]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[2]_i_5_n_0 ),
        .O(reg_a[2]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[2]_i_2 
       (.I0(\bank_reg[14] [2]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [2]),
        .I4(DOADO[0]),
        .I5(\bank_reg[12][4]_0 [2]),
        .O(\store_register[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[2]_i_3 
       (.I0(\bank_reg[11] [2]),
        .I1(\bank_reg[10] [2]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[2]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(flags[2]),
        .O(\store_register[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[2]_i_4 
       (.I0(\bank_reg[7] [2]),
        .I1(\bank_reg[6] [2]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [2]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [2]),
        .O(\store_register[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[2]_i_5 
       (.I0(\bank_reg[3] [2]),
        .I1(\bank_reg[2] [2]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [2]),
        .O(\store_register[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F00000800000000)) 
    \store_register[3]_i_1 
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(\ir/skipped__4 ),
        .I3(DOADO[15]),
        .I4(DOADO[14]),
        .I5(store_register1),
        .O(E));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[3]_i_10 
       (.I0(\bank_reg[3] [3]),
        .I1(\bank_reg[2] [3]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [3]),
        .O(\store_register[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h1B5FBBFF)) 
    \store_register[3]_i_11 
       (.I0(DOADO[15]),
        .I1(addr0[8]),
        .I2(DOADO[12]),
        .I3(addr0[9]),
        .I4(DOADO[13]),
        .O(\store_register[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1B5FBBFF)) 
    \store_register[3]_i_12 
       (.I0(DOADO[15]),
        .I1(addr0[3]),
        .I2(DOADO[7]),
        .I3(addr0[2]),
        .I4(DOADO[6]),
        .O(\store_register[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3B7FFFFFFFFFFFFF)) 
    \store_register[3]_i_13 
       (.I0(DOADO[15]),
        .I1(addr_0[6]),
        .I2(DOADO[11]),
        .I3(addr0[7]),
        .I4(addr_0[4]),
        .I5(addr_0[5]),
        .O(\store_register[3]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[3]_i_14 
       (.I0(DOADO[1]),
        .I1(\ir/skipped__4 ),
        .O(\store_register[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[3]_i_15 
       (.I0(DOADO[0]),
        .I1(\ir/skipped__4 ),
        .O(\store_register[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[3]_i_2 
       (.I0(\store_register[3]_i_5_n_0 ),
        .I1(\store_register[3]_i_6_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[3]_i_8_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[3]_i_10_n_0 ),
        .O(reg_a[3]));
  LUT6 #(
    .INIT(64'h0020202020202020)) 
    \store_register[3]_i_3 
       (.I0(DOADO[8]),
        .I1(DOADO[15]),
        .I2(flags[7]),
        .I3(DOADO[13]),
        .I4(DOADO[12]),
        .I5(DOADO[14]),
        .O(\ir/skipped__4 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \store_register[3]_i_4 
       (.I0(\store_register[3]_i_11_n_0 ),
        .I1(\store_register[3]_i_12_n_0 ),
        .I2(addr_0[0]),
        .I3(addr_0[1]),
        .I4(\store_register[3]_i_13_n_0 ),
        .O(store_register1));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[3]_i_5 
       (.I0(\bank_reg[14] [3]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [3]),
        .I4(DOADO[0]),
        .I5(\bank_reg[12][4]_0 [3]),
        .O(\store_register[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[3]_i_6 
       (.I0(\bank_reg[11] [3]),
        .I1(\bank_reg[10] [3]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[3]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(flags[3]),
        .O(\store_register[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[3]_i_7 
       (.I0(DOADO[3]),
        .I1(\ir/skipped__4 ),
        .O(\store_register[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[3]_i_8 
       (.I0(\bank_reg[7] [3]),
        .I1(\bank_reg[6] [3]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [3]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [3]),
        .O(\store_register[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[3]_i_9 
       (.I0(DOADO[2]),
        .I1(\ir/skipped__4 ),
        .O(\store_register[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[4]_i_1 
       (.I0(\store_register[4]_i_2_n_0 ),
        .I1(\store_register[4]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[4]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[4]_i_5_n_0 ),
        .O(reg_a[4]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[4]_i_2 
       (.I0(\bank_reg[14] [4]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [4]),
        .I4(DOADO[0]),
        .I5(\bank_reg[12][4]_0 [4]),
        .O(\store_register[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[4]_i_3 
       (.I0(\bank_reg[11] [4]),
        .I1(\bank_reg[10] [4]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[4]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg_n_0_[8][4] ),
        .O(\store_register[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[4]_i_4 
       (.I0(\bank_reg[7] [4]),
        .I1(\bank_reg[6] [4]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [4]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [4]),
        .O(\store_register[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[4]_i_5 
       (.I0(\bank_reg[3] [4]),
        .I1(\bank_reg[2] [4]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [4]),
        .O(\store_register[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[5]_i_1 
       (.I0(\store_register[5]_i_2_n_0 ),
        .I1(\store_register[5]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[5]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[5]_i_5_n_0 ),
        .O(reg_a[5]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[5]_i_2 
       (.I0(\bank_reg[14] [5]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(\bank_reg[13][5]_0 [5]),
        .I4(DOADO[0]),
        .I5(instruction_addr0),
        .O(\store_register[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[5]_i_3 
       (.I0(\bank_reg[11] [5]),
        .I1(\bank_reg[10] [5]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[5]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg_n_0_[8][5] ),
        .O(\store_register[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[5]_i_4 
       (.I0(\bank_reg[7] [5]),
        .I1(\bank_reg[6] [5]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [5]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [5]),
        .O(\store_register[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[5]_i_5 
       (.I0(\bank_reg[3] [5]),
        .I1(\bank_reg[2] [5]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [5]),
        .O(\store_register[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[6]_i_1 
       (.I0(\store_register[6]_i_2_n_0 ),
        .I1(\store_register[6]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[6]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[6]_i_5_n_0 ),
        .O(reg_a[6]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[6]_i_2 
       (.I0(\bank_reg[14] [6]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(addr1[8]),
        .I4(DOADO[0]),
        .I5(\bank_reg_n_0_[12][6] ),
        .O(\store_register[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[6]_i_3 
       (.I0(\bank_reg[11] [6]),
        .I1(\bank_reg[10] [6]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[6]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg_n_0_[8][6] ),
        .O(\store_register[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[6]_i_4 
       (.I0(\bank_reg[7] [6]),
        .I1(\bank_reg[6] [6]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [6]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [6]),
        .O(\store_register[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[6]_i_5 
       (.I0(\bank_reg[3] [6]),
        .I1(\bank_reg[2] [6]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [6]),
        .O(\store_register[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[7]_i_1 
       (.I0(\store_register[7]_i_2_n_0 ),
        .I1(\store_register[7]_i_3_n_0 ),
        .I2(\store_register[3]_i_7_n_0 ),
        .I3(\store_register[7]_i_4_n_0 ),
        .I4(\store_register[3]_i_9_n_0 ),
        .I5(\store_register[7]_i_5_n_0 ),
        .O(reg_a[7]));
  LUT6 #(
    .INIT(64'hFFFCFBFB0F0C0808)) 
    \store_register[7]_i_2 
       (.I0(\bank_reg[14] [7]),
        .I1(DOADO[1]),
        .I2(\ir/skipped__4 ),
        .I3(addr1[9]),
        .I4(DOADO[0]),
        .I5(\bank_reg_n_0_[12][7] ),
        .O(\store_register[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[7]_i_3 
       (.I0(\bank_reg[11] [7]),
        .I1(\bank_reg[10] [7]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(data_write_ip0[7]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(flags[7]),
        .O(\store_register[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \store_register[7]_i_4 
       (.I0(\bank_reg[7] [7]),
        .I1(\bank_reg[6] [7]),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\bank_reg[5] [7]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank_reg[4] [7]),
        .O(\store_register[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00C000A000C0)) 
    \store_register[7]_i_5 
       (.I0(\bank_reg[3] [7]),
        .I1(\bank_reg[2] [7]),
        .I2(DOADO[1]),
        .I3(\ir/skipped__4 ),
        .I4(DOADO[0]),
        .I5(\bank_reg[1] [7]),
        .O(\store_register[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_10
       (.I0(addr_0[1]),
        .I1(mem_addr0),
        .O(addr[1]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_11
       (.I0(addr_0[0]),
        .I1(mem_addr0),
        .O(addr[0]));
  LUT6 #(
    .INIT(64'h000000000F000008)) 
    words_reg_0_255_0_0_i_12
       (.I0(DOADO[12]),
        .I1(DOADO[13]),
        .I2(\ir/skipped__4 ),
        .I3(DOADO[15]),
        .I4(DOADO[14]),
        .I5(words_reg_0_255_0_0_i_24_n_0),
        .O(en_store));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_13
       (.I0(addr_0[8]),
        .I1(mem_addr0),
        .O(instruction_reg_reg_0));
  LUT5 #(
    .INIT(32'hFD200000)) 
    words_reg_0_255_0_0_i_14
       (.I0(DOADO[15]),
        .I1(\ir/skipped__4 ),
        .I2(DOADO[13]),
        .I3(addr0[9]),
        .I4(mem_addr0),
        .O(instruction_reg_reg_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_15
       (.CI(words_reg_0_255_0_0_i_27_n_0),
        .CO({words_reg_0_255_0_0_i_15_n_0,words_reg_0_255_0_0_i_15_n_1,words_reg_0_255_0_0_i_15_n_2,words_reg_0_255_0_0_i_15_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\bank_reg[13][5]_0 [5:3]}),
        .O(addr0[8:5]),
        .S({addr1[8],words_reg_0_255_0_0_i_18_0}));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    words_reg_0_255_0_0_i_16
       (.I0(p_0_in),
        .I1(words_reg_0_255_0_0_i_24_n_0),
        .I2(en_store),
        .O(mem_addr0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_17
       (.I0(DOADO[15]),
        .I1(DOADO[10]),
        .I2(addr0[6]),
        .O(addr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_18
       (.I0(DOADO[15]),
        .I1(DOADO[9]),
        .I2(addr0[5]),
        .O(addr_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_19
       (.I0(DOADO[15]),
        .I1(DOADO[8]),
        .I2(addr0[4]),
        .O(addr_0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_2
       (.I0(reg_a[0]),
        .I1(en_store),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_20
       (.I0(DOADO[15]),
        .I1(DOADO[7]),
        .I2(addr0[3]),
        .O(addr_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_21
       (.I0(DOADO[15]),
        .I1(DOADO[6]),
        .I2(addr0[2]),
        .O(addr_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_22
       (.I0(DOADO[15]),
        .I1(DOADO[5]),
        .I2(addr0[1]),
        .O(addr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    words_reg_0_255_0_0_i_23
       (.I0(DOADO[15]),
        .I1(DOADO[4]),
        .I2(reg_b[0]),
        .O(addr_0[0]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    words_reg_0_255_0_0_i_24
       (.I0(addr_0[1]),
        .I1(words_reg_0_255_0_0_i_31_n_0),
        .I2(addr_0[3]),
        .I3(addr_0[2]),
        .I4(addr_0[5]),
        .I5(addr_0[4]),
        .O(words_reg_0_255_0_0_i_24_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    words_reg_0_255_0_0_i_25
       (.I0(DOADO[12]),
        .I1(DOADO[15]),
        .I2(\ir/skipped__4 ),
        .I3(addr0[8]),
        .O(addr_0[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_26
       (.CI(words_reg_0_255_0_0_i_15_n_0),
        .CO(NLW_words_reg_0_255_0_0_i_26_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_words_reg_0_255_0_0_i_26_O_UNCONNECTED[3:1],addr0[9]}),
        .S({1'b0,1'b0,1'b0,addr1[9]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_27
       (.CI(1'b0),
        .CO({words_reg_0_255_0_0_i_27_n_0,words_reg_0_255_0_0_i_27_n_1,words_reg_0_255_0_0_i_27_n_2,words_reg_0_255_0_0_i_27_n_3}),
        .CYINIT(1'b0),
        .DI({\bank_reg[13][5]_0 [2:0],1'b0}),
        .O(addr0[4:1]),
        .S({words_reg_0_255_0_0_i_22_0,words_reg_0_255_0_0_i_35_n_0}));
  LUT3 #(
    .INIT(8'h02)) 
    words_reg_0_255_0_0_i_3
       (.I0(en_store),
        .I1(instruction_reg_reg_0),
        .I2(instruction_reg_reg_1),
        .O(instruction_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF27AF77FF)) 
    words_reg_0_255_0_0_i_31
       (.I0(DOADO[15]),
        .I1(DOADO[11]),
        .I2(addr0[7]),
        .I3(DOADO[10]),
        .I4(addr0[6]),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(words_reg_0_255_0_0_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    words_reg_0_255_0_0_i_35
       (.I0(\bank[2][1]_i_6_n_0 ),
        .I1(\bank[2][1]_i_7_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[2][1]_i_8_n_0 ),
        .I4(\bank[4][7]_i_4_n_0 ),
        .I5(\bank[2][1]_i_9_n_0 ),
        .O(words_reg_0_255_0_0_i_35_n_0));
  LUT4 #(
    .INIT(16'hD800)) 
    words_reg_0_255_0_0_i_4
       (.I0(DOADO[15]),
        .I1(DOADO[11]),
        .I2(addr0[7]),
        .I3(mem_addr0),
        .O(addr[7]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_5
       (.I0(addr_0[6]),
        .I1(mem_addr0),
        .O(addr[6]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_6
       (.I0(addr_0[5]),
        .I1(mem_addr0),
        .O(addr[5]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_7
       (.I0(addr_0[4]),
        .I1(mem_addr0),
        .O(addr[4]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_8
       (.I0(addr_0[3]),
        .I1(mem_addr0),
        .O(addr[3]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_9
       (.I0(addr_0[2]),
        .I1(mem_addr0),
        .O(addr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_1_1_i_1
       (.I0(reg_a[1]),
        .I1(en_store),
        .O(data_out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_2_2_i_1
       (.I0(reg_a[2]),
        .I1(en_store),
        .O(data_out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_3_3_i_1
       (.I0(reg_a[3]),
        .I1(en_store),
        .O(data_out[3]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_4_4_i_1
       (.I0(reg_a[4]),
        .I1(en_store),
        .O(data_out[4]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_5_5_i_1
       (.I0(reg_a[5]),
        .I1(en_store),
        .O(data_out[5]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_6_6_i_1
       (.I0(reg_a[6]),
        .I1(en_store),
        .O(data_out[6]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_7_7_i_1
       (.I0(reg_a[7]),
        .I1(en_store),
        .O(data_out[7]));
  LUT3 #(
    .INIT(8'h40)) 
    words_reg_256_511_0_0_i_1
       (.I0(instruction_reg_reg_1),
        .I1(instruction_reg_reg_0),
        .I2(en_store),
        .O(instruction_reg_reg_2));
  LUT3 #(
    .INIT(8'h40)) 
    words_reg_512_767_0_0_i_1
       (.I0(instruction_reg_reg_0),
        .I1(instruction_reg_reg_1),
        .I2(en_store),
        .O(instruction_reg_reg_3));
  LUT3 #(
    .INIT(8'h80)) 
    words_reg_768_1023_0_0_i_1
       (.I0(en_store),
        .I1(instruction_reg_reg_0),
        .I2(instruction_reg_reg_1),
        .O(instruction_reg_reg_4));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
