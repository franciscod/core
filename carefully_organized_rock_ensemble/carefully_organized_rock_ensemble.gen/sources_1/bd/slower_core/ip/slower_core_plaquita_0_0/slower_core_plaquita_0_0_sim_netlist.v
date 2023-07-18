// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jul 18 17:01:32 2023
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
        .\bank[2][7]_i_18 (sysclk),
        .led(led),
        .sysclk(sysclk));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module slower_core_plaquita_0_0_alu
   (O,
    CO,
    \instruction_reg_reg[1] ,
    \instruction_reg_reg[11] ,
    \instruction_reg_reg[9] ,
    \instruction_reg_reg[9]_0 ,
    DI,
    S,
    \bank[2][4]_i_14 ,
    \bank[2][4]_i_14_0 ,
    \bank[8][0]_i_6 ,
    Q);
  output [2:0]O;
  output [0:0]CO;
  output [3:0]\instruction_reg_reg[1] ;
  output \instruction_reg_reg[11] ;
  output \instruction_reg_reg[9] ;
  output \instruction_reg_reg[9]_0 ;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\bank[2][4]_i_14 ;
  input [3:0]\bank[2][4]_i_14_0 ;
  input \bank[8][0]_i_6 ;
  input [2:0]Q;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]O;
  wire [2:0]Q;
  wire [3:0]S;
  wire a_sub_b_carry__0_n_1;
  wire a_sub_b_carry__0_n_2;
  wire a_sub_b_carry__0_n_3;
  wire a_sub_b_carry_n_0;
  wire a_sub_b_carry_n_1;
  wire a_sub_b_carry_n_2;
  wire a_sub_b_carry_n_3;
  wire a_sub_b_carry_n_7;
  wire [3:0]\bank[2][4]_i_14 ;
  wire [3:0]\bank[2][4]_i_14_0 ;
  wire \bank[8][0]_i_6 ;
  wire \instruction_reg_reg[11] ;
  wire [3:0]\instruction_reg_reg[1] ;
  wire \instruction_reg_reg[9] ;
  wire \instruction_reg_reg[9]_0 ;

  CARRY4 a_sub_b_carry
       (.CI(1'b0),
        .CO({a_sub_b_carry_n_0,a_sub_b_carry_n_1,a_sub_b_carry_n_2,a_sub_b_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O({O,a_sub_b_carry_n_7}),
        .S(S));
  CARRY4 a_sub_b_carry__0
       (.CI(a_sub_b_carry_n_0),
        .CO({CO,a_sub_b_carry__0_n_1,a_sub_b_carry__0_n_2,a_sub_b_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\bank[2][4]_i_14 ),
        .O(\instruction_reg_reg[1] ),
        .S(\bank[2][4]_i_14_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD5FF)) 
    \bank[2][0]_i_6 
       (.I0(a_sub_b_carry_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\instruction_reg_reg[9] ));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \bank[8][0]_i_8 
       (.I0(O[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\instruction_reg_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCC5C5C5C)) 
    \bank[8][0]_i_9 
       (.I0(a_sub_b_carry_n_7),
        .I1(\bank[8][0]_i_6 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\instruction_reg_reg[11] ));
endmodule

(* ORIG_REF_NAME = "core" *) 
module slower_core_plaquita_0_0_core
   (\instruction_reg_reg[12]_0 ,
    addr,
    \instruction_reg_reg[15]_0 ,
    \instruction_reg_reg[15]_1 ,
    \instruction_reg_reg[12]_1 ,
    data_out,
    led,
    data_load0,
    D,
    sysclk);
  output \instruction_reg_reg[12]_0 ;
  output [9:0]addr;
  output \instruction_reg_reg[15]_0 ;
  output \instruction_reg_reg[15]_1 ;
  output \instruction_reg_reg[12]_1 ;
  output [7:0]data_out;
  output [3:0]led;
  input [7:0]data_load0;
  input [7:0]D;
  input sysclk;

  wire [7:0]D;
  wire [9:0]addr;
  wire [7:2]addr1;
  wire alu_n_0;
  wire alu_n_1;
  wire alu_n_10;
  wire alu_n_2;
  wire alu_n_3;
  wire alu_n_4;
  wire alu_n_5;
  wire alu_n_6;
  wire alu_n_7;
  wire alu_n_8;
  wire alu_n_9;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire [15:0]instruction_reg;
  wire \instruction_reg_reg[12]_0 ;
  wire \instruction_reg_reg[12]_1 ;
  wire \instruction_reg_reg[15]_0 ;
  wire \instruction_reg_reg[15]_1 ;
  wire [3:0]led;
  wire [7:0]load_register;
  wire [7:0]reg_a;
  wire [7:2]reg_b;
  wire registers_n_19;
  wire registers_n_20;
  wire registers_n_21;
  wire registers_n_22;
  wire registers_n_23;
  wire registers_n_24;
  wire registers_n_25;
  wire registers_n_26;
  wire registers_n_49;
  wire registers_n_50;
  wire registers_n_51;
  wire registers_n_52;
  wire registers_n_53;
  wire registers_n_54;
  wire registers_n_55;
  wire registers_n_56;
  wire registers_n_57;
  wire registers_n_58;
  wire registers_n_59;
  wire registers_n_60;
  wire registers_n_61;
  wire registers_n_62;
  wire registers_n_63;
  wire registers_n_64;
  wire registers_n_65;
  wire registers_n_66;
  wire registers_n_67;
  wire registers_n_68;
  wire [7:4]store_register;
  wire store_register0;
  wire sysclk;
  wire words_reg_0_255_0_0_i_31_n_0;
  wire words_reg_0_255_0_0_i_32_n_0;
  wire words_reg_0_255_0_0_i_34_n_0;
  wire words_reg_0_255_0_0_i_35_n_0;
  wire words_reg_0_255_0_0_i_36_n_0;

  slower_core_plaquita_0_0_alu alu
       (.CO(alu_n_3),
        .DI({registers_n_50,reg_a[2:1],registers_n_51}),
        .O({alu_n_0,alu_n_1,alu_n_2}),
        .Q(instruction_reg[11:9]),
        .S({registers_n_19,registers_n_20,registers_n_21,registers_n_22}),
        .\bank[2][4]_i_14 ({registers_n_52,reg_a[6:5],registers_n_53}),
        .\bank[2][4]_i_14_0 ({registers_n_23,registers_n_24,registers_n_25,registers_n_26}),
        .\bank[8][0]_i_6 (registers_n_49),
        .\instruction_reg_reg[11] (alu_n_8),
        .\instruction_reg_reg[1] ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\instruction_reg_reg[9] (alu_n_9),
        .\instruction_reg_reg[9]_0 (alu_n_10));
  FDRE \instruction_reg_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_68),
        .Q(instruction_reg[0]),
        .R(1'b0));
  FDRE \instruction_reg_reg[10] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_59),
        .Q(instruction_reg[10]),
        .R(1'b0));
  FDRE \instruction_reg_reg[11] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_58),
        .Q(instruction_reg[11]),
        .R(1'b0));
  FDRE \instruction_reg_reg[12] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_57),
        .Q(instruction_reg[12]),
        .R(1'b0));
  FDRE \instruction_reg_reg[13] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_56),
        .Q(instruction_reg[13]),
        .R(1'b0));
  FDRE \instruction_reg_reg[14] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_55),
        .Q(instruction_reg[14]),
        .R(1'b0));
  FDRE \instruction_reg_reg[15] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_54),
        .Q(instruction_reg[15]),
        .R(1'b0));
  FDRE \instruction_reg_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_67),
        .Q(instruction_reg[1]),
        .R(1'b0));
  FDRE \instruction_reg_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_66),
        .Q(instruction_reg[3]),
        .R(1'b0));
  FDRE \instruction_reg_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_65),
        .Q(instruction_reg[4]),
        .R(1'b0));
  FDRE \instruction_reg_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_64),
        .Q(instruction_reg[5]),
        .R(1'b0));
  FDRE \instruction_reg_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_63),
        .Q(instruction_reg[6]),
        .R(1'b0));
  FDRE \instruction_reg_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_62),
        .Q(instruction_reg[7]),
        .R(1'b0));
  FDRE \instruction_reg_reg[8] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_61),
        .Q(instruction_reg[8]),
        .R(1'b0));
  FDRE \instruction_reg_reg[9] 
       (.C(sysclk),
        .CE(1'b1),
        .D(registers_n_60),
        .Q(instruction_reg[9]),
        .R(1'b0));
  slower_core_plaquita_0_0_io io
       (.D(reg_a),
        .E(store_register0),
        .Q({store_register,led}),
        .\load_register_reg[7]_0 (load_register),
        .\load_register_reg[7]_1 (D),
        .sysclk(sysclk));
  slower_core_plaquita_0_0_registers registers
       (.CO(alu_n_3),
        .D(reg_a),
        .DI({registers_n_50,registers_n_51}),
        .E(store_register0),
        .O({alu_n_0,alu_n_1,alu_n_2}),
        .Q({instruction_reg[15:3],instruction_reg[1:0]}),
        .S({registers_n_19,registers_n_20,registers_n_21,registers_n_22}),
        .addr(addr[7:0]),
        .\bank[2][7]_i_9_0 ({store_register,led}),
        .\bank[2][7]_i_9_1 (load_register),
        .\bank[8][0]_i_2_0 (alu_n_10),
        .\bank[8][0]_i_2_1 (alu_n_8),
        .\bank[8][0]_i_5_0 (alu_n_9),
        .\bank[8][0]_i_7_0 ({alu_n_4,alu_n_5,alu_n_6,alu_n_7}),
        .\bank_reg[13][5]_0 ({addr1[7:6],addr1[4:2]}),
        .\bank_reg[14][7]_0 ({reg_b[7:6],reg_b[4:2]}),
        .\bank_reg[9][0]_0 (D[4]),
        .\bank_reg[9][2]_0 ({registers_n_54,registers_n_55,registers_n_56,registers_n_57,registers_n_58,registers_n_59,registers_n_60,registers_n_61,registers_n_62,registers_n_63,registers_n_64,registers_n_65,registers_n_66,registers_n_67,registers_n_68}),
        .data_load0(data_load0),
        .data_out(data_out),
        .\instruction_reg_reg[12] (\instruction_reg_reg[12]_0 ),
        .\instruction_reg_reg[12]_0 (\instruction_reg_reg[12]_1 ),
        .\instruction_reg_reg[15] (addr[8]),
        .\instruction_reg_reg[15]_0 (addr[9]),
        .\instruction_reg_reg[15]_1 (\instruction_reg_reg[15]_0 ),
        .\instruction_reg_reg[15]_2 (\instruction_reg_reg[15]_1 ),
        .\instruction_reg_reg[1] ({registers_n_23,registers_n_24,registers_n_25,registers_n_26}),
        .\instruction_reg_reg[1]_0 ({registers_n_52,registers_n_53}),
        .\instruction_reg_reg[9] (registers_n_49),
        .sysclk(sysclk),
        .words_reg_0_255_0_0_i_22_0({words_reg_0_255_0_0_i_34_n_0,words_reg_0_255_0_0_i_35_n_0,words_reg_0_255_0_0_i_36_n_0}),
        .words_reg_0_255_0_0_i_27_0({words_reg_0_255_0_0_i_31_n_0,words_reg_0_255_0_0_i_32_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_31
       (.I0(addr1[7]),
        .I1(reg_b[7]),
        .O(words_reg_0_255_0_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_32
       (.I0(addr1[6]),
        .I1(reg_b[6]),
        .O(words_reg_0_255_0_0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_34
       (.I0(addr1[4]),
        .I1(reg_b[4]),
        .O(words_reg_0_255_0_0_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_35
       (.I0(addr1[3]),
        .I1(reg_b[3]),
        .O(words_reg_0_255_0_0_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    words_reg_0_255_0_0_i_36
       (.I0(addr1[2]),
        .I1(reg_b[2]),
        .O(words_reg_0_255_0_0_i_36_n_0));
endmodule

(* ORIG_REF_NAME = "io" *) 
module slower_core_plaquita_0_0_io
   (Q,
    \load_register_reg[7]_0 ,
    E,
    D,
    sysclk,
    \load_register_reg[7]_1 );
  output [7:0]Q;
  output [7:0]\load_register_reg[7]_0 ;
  input [0:0]E;
  input [7:0]D;
  input sysclk;
  input [7:0]\load_register_reg[7]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]\load_register_reg[7]_0 ;
  wire [7:0]\load_register_reg[7]_1 ;
  wire sysclk;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [0]),
        .Q(\load_register_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [1]),
        .Q(\load_register_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [2]),
        .Q(\load_register_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [3]),
        .Q(\load_register_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [4]),
        .Q(\load_register_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [5]),
        .Q(\load_register_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [6]),
        .Q(\load_register_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \load_register_reg[7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(\load_register_reg[7]_1 [7]),
        .Q(\load_register_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[0] 
       (.C(sysclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[1] 
       (.C(sysclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[2] 
       (.C(sysclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[3] 
       (.C(sysclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[4] 
       (.C(sysclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[5] 
       (.C(sysclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[6] 
       (.C(sysclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \store_register_reg[7] 
       (.C(sysclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mem" *) 
module slower_core_plaquita_0_0_mem
   (data_load0,
    \bank[2][7]_i_18_0 ,
    data_out,
    \bank[2][7]_i_18_1 ,
    addr,
    \bank[2][7]_i_18_2 ,
    \bank[2][7]_i_18_3 ,
    \bank[2][7]_i_18_4 );
  output [7:0]data_load0;
  input \bank[2][7]_i_18_0 ;
  input [7:0]data_out;
  input \bank[2][7]_i_18_1 ;
  input [9:0]addr;
  input \bank[2][7]_i_18_2 ;
  input \bank[2][7]_i_18_3 ;
  input \bank[2][7]_i_18_4 ;

  wire [9:0]addr;
  wire \bank[2][7]_i_18_0 ;
  wire \bank[2][7]_i_18_1 ;
  wire \bank[2][7]_i_18_2 ;
  wire \bank[2][7]_i_18_3 ;
  wire \bank[2][7]_i_18_4 ;
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
    \bank[2][0]_i_8 
       (.I0(words_reg_768_1023_0_0_n_0),
        .I1(words_reg_512_767_0_0_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_0_0_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_0_0_n_0),
        .O(data_load0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_11 
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
    \bank[2][4]_i_15 
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
    \bank[2][6]_i_11 
       (.I0(words_reg_768_1023_6_6_n_0),
        .I1(words_reg_512_767_6_6_n_0),
        .I2(addr[9]),
        .I3(words_reg_256_511_6_6_n_0),
        .I4(addr[8]),
        .I5(words_reg_0_255_6_6_n_0),
        .O(data_load0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_18 
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_1 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_2 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_3 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
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
        .WCLK(\bank[2][7]_i_18_0 ),
        .WE(\bank[2][7]_i_18_4 ));
endmodule

(* ORIG_REF_NAME = "plaquita" *) 
module slower_core_plaquita_0_0_plaquita
   (led,
    \bank[2][7]_i_18 ,
    D,
    sysclk);
  output [3:0]led;
  input \bank[2][7]_i_18 ;
  input [7:0]D;
  input sysclk;

  wire [7:0]D;
  wire [9:0]addr;
  wire \bank[2][7]_i_18 ;
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
        .\instruction_reg_reg[12]_0 (dut_n_0),
        .\instruction_reg_reg[12]_1 (dut_n_13),
        .\instruction_reg_reg[15]_0 (dut_n_11),
        .\instruction_reg_reg[15]_1 (dut_n_12),
        .led(led),
        .sysclk(sysclk));
  slower_core_plaquita_0_0_mem mem
       (.addr(addr),
        .\bank[2][7]_i_18_0 (\bank[2][7]_i_18 ),
        .\bank[2][7]_i_18_1 (dut_n_0),
        .\bank[2][7]_i_18_2 (dut_n_11),
        .\bank[2][7]_i_18_3 (dut_n_12),
        .\bank[2][7]_i_18_4 (dut_n_13),
        .data_load0(data_load0),
        .data_out(data_out));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module slower_core_plaquita_0_0_registers
   (\instruction_reg_reg[12] ,
    \instruction_reg_reg[15] ,
    \instruction_reg_reg[15]_0 ,
    \instruction_reg_reg[15]_1 ,
    \instruction_reg_reg[15]_2 ,
    \instruction_reg_reg[12]_0 ,
    \bank_reg[14][7]_0 ,
    D,
    S,
    \instruction_reg_reg[1] ,
    \bank_reg[13][5]_0 ,
    E,
    data_out,
    addr,
    \instruction_reg_reg[9] ,
    DI,
    \instruction_reg_reg[1]_0 ,
    \bank_reg[9][2]_0 ,
    Q,
    \bank[2][7]_i_9_0 ,
    \bank[2][7]_i_9_1 ,
    data_load0,
    O,
    \bank[8][0]_i_7_0 ,
    \bank[8][0]_i_2_0 ,
    \bank[8][0]_i_2_1 ,
    \bank[8][0]_i_5_0 ,
    CO,
    words_reg_0_255_0_0_i_22_0,
    words_reg_0_255_0_0_i_27_0,
    \bank_reg[9][0]_0 ,
    sysclk);
  output \instruction_reg_reg[12] ;
  output \instruction_reg_reg[15] ;
  output \instruction_reg_reg[15]_0 ;
  output \instruction_reg_reg[15]_1 ;
  output \instruction_reg_reg[15]_2 ;
  output \instruction_reg_reg[12]_0 ;
  output [4:0]\bank_reg[14][7]_0 ;
  output [7:0]D;
  output [3:0]S;
  output [3:0]\instruction_reg_reg[1] ;
  output [4:0]\bank_reg[13][5]_0 ;
  output [0:0]E;
  output [7:0]data_out;
  output [7:0]addr;
  output \instruction_reg_reg[9] ;
  output [1:0]DI;
  output [1:0]\instruction_reg_reg[1]_0 ;
  output [14:0]\bank_reg[9][2]_0 ;
  input [14:0]Q;
  input [7:0]\bank[2][7]_i_9_0 ;
  input [7:0]\bank[2][7]_i_9_1 ;
  input [7:0]data_load0;
  input [2:0]O;
  input [3:0]\bank[8][0]_i_7_0 ;
  input \bank[8][0]_i_2_0 ;
  input \bank[8][0]_i_2_1 ;
  input \bank[8][0]_i_5_0 ;
  input [0:0]CO;
  input [2:0]words_reg_0_255_0_0_i_22_0;
  input [1:0]words_reg_0_255_0_0_i_27_0;
  input [0:0]\bank_reg[9][0]_0 ;
  input sysclk;

  wire [0:0]CO;
  wire [7:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire [2:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire a_sub_b_carry__0_i_7_n_0;
  wire [7:0]addr;
  wire [9:1]addr0;
  wire [9:5]addr1;
  wire [9:0]addr_0;
  wire bank;
  wire \bank[10][0]_i_1_n_0 ;
  wire \bank[10][1]_i_1_n_0 ;
  wire \bank[10][1]_i_2_n_0 ;
  wire \bank[10][2]_i_1_n_0 ;
  wire \bank[10][3]_i_1_n_0 ;
  wire \bank[10][4]_i_1_n_0 ;
  wire \bank[10][5]_i_1_n_0 ;
  wire \bank[10][6]_i_1_n_0 ;
  wire \bank[10][7]_i_1_n_0 ;
  wire \bank[10][7]_i_2_n_0 ;
  wire \bank[10][7]_i_3_n_0 ;
  wire \bank[10][7]_i_4_n_0 ;
  wire \bank[11][0]_i_1_n_0 ;
  wire \bank[11][1]_i_1_n_0 ;
  wire \bank[11][1]_i_2_n_0 ;
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
  wire \bank[12][1]_i_2_n_0 ;
  wire \bank[12][2]_i_1_n_0 ;
  wire \bank[12][3]_i_1_n_0 ;
  wire \bank[12][4]_i_1_n_0 ;
  wire \bank[12][5]_i_1_n_0 ;
  wire \bank[12][6]_i_1_n_0 ;
  wire \bank[12][6]_i_2_n_0 ;
  wire \bank[12][7]_i_1_n_0 ;
  wire \bank[12][7]_i_2_n_0 ;
  wire \bank[12][7]_i_3_n_0 ;
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
  wire \bank[1][0]_i_1_n_0 ;
  wire \bank[1][1]_i_1_n_0 ;
  wire \bank[1][1]_i_2_n_0 ;
  wire \bank[1][2]_i_1_n_0 ;
  wire \bank[1][3]_i_1_n_0 ;
  wire \bank[1][4]_i_1_n_0 ;
  wire \bank[1][5]_i_1_n_0 ;
  wire \bank[1][6]_i_1_n_0 ;
  wire \bank[1][7]_i_2_n_0 ;
  wire \bank[1][7]_i_3_n_0 ;
  wire \bank[1][7]_i_4_n_0 ;
  wire \bank[2][0]_i_10_n_0 ;
  wire \bank[2][0]_i_11_n_0 ;
  wire \bank[2][0]_i_1_n_0 ;
  wire \bank[2][0]_i_2_n_0 ;
  wire \bank[2][0]_i_3_n_0 ;
  wire \bank[2][0]_i_4_n_0 ;
  wire \bank[2][0]_i_5_n_0 ;
  wire \bank[2][0]_i_7_n_0 ;
  wire \bank[2][1]_i_10_n_0 ;
  wire \bank[2][1]_i_13_n_0 ;
  wire \bank[2][1]_i_14_n_0 ;
  wire \bank[2][1]_i_15_n_0 ;
  wire \bank[2][1]_i_16_n_0 ;
  wire \bank[2][1]_i_1_n_0 ;
  wire \bank[2][1]_i_3_n_0 ;
  wire \bank[2][1]_i_4_n_0 ;
  wire \bank[2][1]_i_5_n_0 ;
  wire \bank[2][1]_i_6_n_0 ;
  wire \bank[2][1]_i_7_n_0 ;
  wire \bank[2][1]_i_8_n_0 ;
  wire \bank[2][1]_i_9_n_0 ;
  wire \bank[2][2]_i_12_n_0 ;
  wire \bank[2][2]_i_13_n_0 ;
  wire \bank[2][2]_i_14_n_0 ;
  wire \bank[2][2]_i_15_n_0 ;
  wire \bank[2][2]_i_16_n_0 ;
  wire \bank[2][2]_i_17_n_0 ;
  wire \bank[2][2]_i_1_n_0 ;
  wire \bank[2][2]_i_3_n_0 ;
  wire \bank[2][2]_i_4_n_0 ;
  wire \bank[2][2]_i_5_n_0 ;
  wire \bank[2][2]_i_6_n_0 ;
  wire \bank[2][2]_i_7_n_0 ;
  wire \bank[2][2]_i_8_n_0 ;
  wire \bank[2][2]_i_9_n_0 ;
  wire \bank[2][3]_i_12_n_0 ;
  wire \bank[2][3]_i_13_n_0 ;
  wire \bank[2][3]_i_14_n_0 ;
  wire \bank[2][3]_i_15_n_0 ;
  wire \bank[2][3]_i_16_n_0 ;
  wire \bank[2][3]_i_17_n_0 ;
  wire \bank[2][3]_i_18_n_0 ;
  wire \bank[2][3]_i_1_n_0 ;
  wire \bank[2][3]_i_20_n_0 ;
  wire \bank[2][3]_i_21_n_0 ;
  wire \bank[2][3]_i_22_n_0 ;
  wire \bank[2][3]_i_23_n_0 ;
  wire \bank[2][3]_i_24_n_0 ;
  wire \bank[2][3]_i_27_n_0 ;
  wire \bank[2][3]_i_3_n_0 ;
  wire \bank[2][3]_i_4_n_0 ;
  wire \bank[2][3]_i_5_n_0 ;
  wire \bank[2][3]_i_6_n_0 ;
  wire \bank[2][3]_i_7_n_0 ;
  wire \bank[2][3]_i_8_n_0 ;
  wire \bank[2][3]_i_9_n_0 ;
  wire \bank[2][4]_i_10_n_0 ;
  wire \bank[2][4]_i_11_n_0 ;
  wire \bank[2][4]_i_12_n_0 ;
  wire \bank[2][4]_i_13_n_0 ;
  wire \bank[2][4]_i_14_n_0 ;
  wire \bank[2][4]_i_17_n_0 ;
  wire \bank[2][4]_i_18_n_0 ;
  wire \bank[2][4]_i_19_n_0 ;
  wire \bank[2][4]_i_1_n_0 ;
  wire \bank[2][4]_i_20_n_0 ;
  wire \bank[2][4]_i_21_n_0 ;
  wire \bank[2][4]_i_22_n_0 ;
  wire \bank[2][4]_i_2_n_0 ;
  wire \bank[2][4]_i_4_n_0 ;
  wire \bank[2][4]_i_5_n_0 ;
  wire \bank[2][4]_i_6_n_0 ;
  wire \bank[2][4]_i_7_n_0 ;
  wire \bank[2][4]_i_8_n_0 ;
  wire \bank[2][4]_i_9_n_0 ;
  wire \bank[2][5]_i_12_n_0 ;
  wire \bank[2][5]_i_13_n_0 ;
  wire \bank[2][5]_i_14_n_0 ;
  wire \bank[2][5]_i_15_n_0 ;
  wire \bank[2][5]_i_16_n_0 ;
  wire \bank[2][5]_i_17_n_0 ;
  wire \bank[2][5]_i_18_n_0 ;
  wire \bank[2][5]_i_19_n_0 ;
  wire \bank[2][5]_i_1_n_0 ;
  wire \bank[2][5]_i_20_n_0 ;
  wire \bank[2][5]_i_2_n_0 ;
  wire \bank[2][5]_i_3_n_0 ;
  wire \bank[2][5]_i_4_n_0 ;
  wire \bank[2][5]_i_5_n_0 ;
  wire \bank[2][5]_i_6_n_0 ;
  wire \bank[2][5]_i_7_n_0 ;
  wire \bank[2][5]_i_8_n_0 ;
  wire \bank[2][5]_i_9_n_0 ;
  wire \bank[2][6]_i_10_n_0 ;
  wire \bank[2][6]_i_12_n_0 ;
  wire \bank[2][6]_i_14_n_0 ;
  wire \bank[2][6]_i_15_n_0 ;
  wire \bank[2][6]_i_16_n_0 ;
  wire \bank[2][6]_i_17_n_0 ;
  wire \bank[2][6]_i_18_n_0 ;
  wire \bank[2][6]_i_19_n_0 ;
  wire \bank[2][6]_i_1_n_0 ;
  wire \bank[2][6]_i_20_n_0 ;
  wire \bank[2][6]_i_21_n_0 ;
  wire \bank[2][6]_i_22_n_0 ;
  wire \bank[2][6]_i_23_n_0 ;
  wire \bank[2][6]_i_24_n_0 ;
  wire \bank[2][6]_i_25_n_0 ;
  wire \bank[2][6]_i_3_n_0 ;
  wire \bank[2][6]_i_4_n_0 ;
  wire \bank[2][6]_i_5_n_0 ;
  wire \bank[2][6]_i_6_n_0 ;
  wire \bank[2][6]_i_7_n_0 ;
  wire \bank[2][6]_i_8_n_0 ;
  wire \bank[2][6]_i_9_n_0 ;
  wire \bank[2][7]_i_10_n_0 ;
  wire \bank[2][7]_i_11_n_0 ;
  wire \bank[2][7]_i_12_n_0 ;
  wire \bank[2][7]_i_13_n_0 ;
  wire \bank[2][7]_i_14_n_0 ;
  wire \bank[2][7]_i_15_n_0 ;
  wire \bank[2][7]_i_16_n_0 ;
  wire \bank[2][7]_i_17_n_0 ;
  wire \bank[2][7]_i_19_n_0 ;
  wire \bank[2][7]_i_1_n_0 ;
  wire \bank[2][7]_i_20_n_0 ;
  wire \bank[2][7]_i_22_n_0 ;
  wire \bank[2][7]_i_23_n_0 ;
  wire \bank[2][7]_i_24_n_0 ;
  wire \bank[2][7]_i_25_n_0 ;
  wire \bank[2][7]_i_26_n_0 ;
  wire \bank[2][7]_i_27_n_0 ;
  wire \bank[2][7]_i_28_n_0 ;
  wire \bank[2][7]_i_29_n_0 ;
  wire \bank[2][7]_i_2_n_0 ;
  wire \bank[2][7]_i_31_n_0 ;
  wire \bank[2][7]_i_32_n_0 ;
  wire \bank[2][7]_i_33_n_0 ;
  wire \bank[2][7]_i_34_n_0 ;
  wire \bank[2][7]_i_35_n_0 ;
  wire \bank[2][7]_i_36_n_0 ;
  wire \bank[2][7]_i_37_n_0 ;
  wire \bank[2][7]_i_38_n_0 ;
  wire \bank[2][7]_i_3_n_0 ;
  wire \bank[2][7]_i_4_n_0 ;
  wire \bank[2][7]_i_5_n_0 ;
  wire \bank[2][7]_i_7_n_0 ;
  wire \bank[2][7]_i_8_n_0 ;
  wire [7:0]\bank[2][7]_i_9_0 ;
  wire [7:0]\bank[2][7]_i_9_1 ;
  wire \bank[2][7]_i_9_n_0 ;
  wire \bank[3][0]_i_1_n_0 ;
  wire \bank[3][1]_i_1_n_0 ;
  wire \bank[3][1]_i_2_n_0 ;
  wire \bank[3][2]_i_1_n_0 ;
  wire \bank[3][3]_i_1_n_0 ;
  wire \bank[3][4]_i_1_n_0 ;
  wire \bank[3][5]_i_1_n_0 ;
  wire \bank[3][6]_i_1_n_0 ;
  wire \bank[3][7]_i_1_n_0 ;
  wire \bank[3][7]_i_2_n_0 ;
  wire \bank[3][7]_i_3_n_0 ;
  wire \bank[3][7]_i_4_n_0 ;
  wire \bank[3][7]_i_5_n_0 ;
  wire \bank[4][0]_i_1_n_0 ;
  wire \bank[4][1]_i_1_n_0 ;
  wire \bank[4][1]_i_2_n_0 ;
  wire \bank[4][2]_i_1_n_0 ;
  wire \bank[4][3]_i_1_n_0 ;
  wire \bank[4][4]_i_1_n_0 ;
  wire \bank[4][5]_i_1_n_0 ;
  wire \bank[4][6]_i_1_n_0 ;
  wire \bank[4][6]_i_2_n_0 ;
  wire \bank[4][7]_i_1_n_0 ;
  wire \bank[4][7]_i_2_n_0 ;
  wire \bank[4][7]_i_3_n_0 ;
  wire \bank[4][7]_i_4_n_0 ;
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
  wire \bank[5][7]_i_6_n_0 ;
  wire \bank[5][7]_i_7_n_0 ;
  wire \bank[5][7]_i_8_n_0 ;
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
  wire \bank[8][0]_i_10_n_0 ;
  wire \bank[8][0]_i_11_n_0 ;
  wire \bank[8][0]_i_12_n_0 ;
  wire \bank[8][0]_i_14_n_0 ;
  wire \bank[8][0]_i_15_n_0 ;
  wire \bank[8][0]_i_16_n_0 ;
  wire \bank[8][0]_i_17_n_0 ;
  wire \bank[8][0]_i_18_n_0 ;
  wire \bank[8][0]_i_19_n_0 ;
  wire \bank[8][0]_i_1_n_0 ;
  wire \bank[8][0]_i_20_n_0 ;
  wire \bank[8][0]_i_21_n_0 ;
  wire \bank[8][0]_i_22_n_0 ;
  wire \bank[8][0]_i_23_n_0 ;
  wire \bank[8][0]_i_24_n_0 ;
  wire \bank[8][0]_i_25_n_0 ;
  wire \bank[8][0]_i_26_n_0 ;
  wire \bank[8][0]_i_2_0 ;
  wire \bank[8][0]_i_2_1 ;
  wire \bank[8][0]_i_2_n_0 ;
  wire \bank[8][0]_i_3_n_0 ;
  wire \bank[8][0]_i_4_n_0 ;
  wire \bank[8][0]_i_5_0 ;
  wire \bank[8][0]_i_5_n_0 ;
  wire \bank[8][0]_i_6_n_0 ;
  wire [3:0]\bank[8][0]_i_7_0 ;
  wire \bank[8][0]_i_7_n_0 ;
  wire \bank[8][1]_i_1_n_0 ;
  wire \bank[8][1]_i_2_n_0 ;
  wire \bank[8][1]_i_3_n_0 ;
  wire \bank[8][1]_i_4_n_0 ;
  wire \bank[8][1]_i_5_n_0 ;
  wire \bank[8][1]_i_6_n_0 ;
  wire \bank[8][2]_i_1_n_0 ;
  wire \bank[8][2]_i_2_n_0 ;
  wire \bank[8][2]_i_3_n_0 ;
  wire \bank[8][3]_i_1_n_0 ;
  wire \bank[8][3]_i_2_n_0 ;
  wire \bank[8][3]_i_3_n_0 ;
  wire \bank[8][3]_i_4_n_0 ;
  wire \bank[8][3]_i_6_n_0 ;
  wire \bank[8][3]_i_7_n_0 ;
  wire \bank[8][3]_i_9_n_0 ;
  wire \bank[8][4]_i_1_n_0 ;
  wire \bank[8][4]_i_2_n_0 ;
  wire \bank[8][5]_i_1_n_0 ;
  wire \bank[8][5]_i_2_n_0 ;
  wire \bank[8][6]_i_1_n_0 ;
  wire \bank[8][6]_i_2_n_0 ;
  wire \bank[8][7]_i_10_n_0 ;
  wire \bank[8][7]_i_11_n_0 ;
  wire \bank[8][7]_i_1_n_0 ;
  wire \bank[8][7]_i_2_n_0 ;
  wire \bank[8][7]_i_3_n_0 ;
  wire \bank[8][7]_i_4_n_0 ;
  wire \bank[8][7]_i_5_n_0 ;
  wire \bank[8][7]_i_6_n_0 ;
  wire \bank[8][7]_i_7_n_0 ;
  wire \bank[8][7]_i_8_n_0 ;
  wire \bank[8][7]_i_9_n_0 ;
  wire \bank[9][0]_i_2_n_0 ;
  wire \bank[9][1]_i_2_n_0 ;
  wire \bank[9][1]_i_3_n_0 ;
  wire \bank[9][2]_i_2_n_0 ;
  wire \bank[9][2]_i_3_n_0 ;
  wire \bank[9][3]_i_2_n_0 ;
  wire \bank[9][3]_i_3_n_0 ;
  wire \bank[9][4]_i_2_n_0 ;
  wire \bank[9][4]_i_3_n_0 ;
  wire \bank[9][5]_i_2_n_0 ;
  wire \bank[9][5]_i_3_n_0 ;
  wire \bank[9][6]_i_2_n_0 ;
  wire \bank[9][7]_i_2_n_0 ;
  wire \bank[9][7]_i_3_n_0 ;
  wire \bank[9][7]_i_4_n_0 ;
  wire \bank[9][7]_i_5_n_0 ;
  wire [7:0]\bank_reg[10] ;
  wire [7:0]\bank_reg[11] ;
  wire [4:0]\bank_reg[13][5]_0 ;
  wire [7:0]\bank_reg[14] ;
  wire [4:0]\bank_reg[14][7]_0 ;
  wire [7:0]\bank_reg[1] ;
  wire [7:0]\bank_reg[2] ;
  wire \bank_reg[2][3]_i_19_n_0 ;
  wire \bank_reg[2][3]_i_19_n_1 ;
  wire \bank_reg[2][3]_i_19_n_2 ;
  wire \bank_reg[2][3]_i_19_n_3 ;
  wire \bank_reg[2][3]_i_19_n_4 ;
  wire \bank_reg[2][3]_i_19_n_5 ;
  wire \bank_reg[2][3]_i_19_n_6 ;
  wire \bank_reg[2][3]_i_19_n_7 ;
  wire \bank_reg[2][3]_i_25_n_0 ;
  wire \bank_reg[2][3]_i_26_n_0 ;
  wire \bank_reg[2][7]_i_30_n_0 ;
  wire \bank_reg[2][7]_i_30_n_1 ;
  wire \bank_reg[2][7]_i_30_n_2 ;
  wire \bank_reg[2][7]_i_30_n_3 ;
  wire \bank_reg[2][7]_i_30_n_4 ;
  wire \bank_reg[2][7]_i_30_n_5 ;
  wire \bank_reg[2][7]_i_30_n_6 ;
  wire \bank_reg[2][7]_i_30_n_7 ;
  wire [7:0]\bank_reg[3] ;
  wire [7:0]\bank_reg[4] ;
  wire [7:0]\bank_reg[5] ;
  wire [7:0]\bank_reg[6] ;
  wire [7:0]\bank_reg[7] ;
  wire \bank_reg[8][3]_i_5_n_3 ;
  wire \bank_reg[8][3]_i_8_n_3 ;
  wire [0:0]\bank_reg[9][0]_0 ;
  wire [14:0]\bank_reg[9][2]_0 ;
  wire [7:2]\bank_reg[9]_0 ;
  wire [1:0]\bank_reg[9]__0 ;
  wire \bank_reg_n_0_[12][3] ;
  wire \bank_reg_n_0_[12][4] ;
  wire \bank_reg_n_0_[12][5] ;
  wire \bank_reg_n_0_[12][6] ;
  wire \bank_reg_n_0_[12][7] ;
  wire \bank_reg_n_0_[8][4] ;
  wire \bank_reg_n_0_[8][5] ;
  wire \bank_reg_n_0_[8][6] ;
  wire [7:0]data_load0;
  wire [7:0]data_out;
  wire en_store;
  wire [7:0]flags;
  wire [4:2]instruction_addr0;
  wire \instruction_reg[15]_i_2_n_0 ;
  wire \instruction_reg_reg[12] ;
  wire \instruction_reg_reg[12]_0 ;
  wire \instruction_reg_reg[15] ;
  wire \instruction_reg_reg[15]_0 ;
  wire \instruction_reg_reg[15]_1 ;
  wire \instruction_reg_reg[15]_2 ;
  wire [3:0]\instruction_reg_reg[1] ;
  wire [1:0]\instruction_reg_reg[1]_0 ;
  wire \instruction_reg_reg[9] ;
  wire [7:0]io_load;
  wire [7:0]p_1_in;
  wire [1:1]reg_b;
  wire [4:3]sel;
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
  wire \store_register[2]_i_6_n_0 ;
  wire \store_register[2]_i_7_n_0 ;
  wire \store_register[3]_i_10_n_0 ;
  wire \store_register[3]_i_11_n_0 ;
  wire \store_register[3]_i_12_n_0 ;
  wire \store_register[3]_i_13_n_0 ;
  wire \store_register[3]_i_14_n_0 ;
  wire \store_register[3]_i_15_n_0 ;
  wire \store_register[3]_i_3_n_0 ;
  wire \store_register[3]_i_4_n_0 ;
  wire \store_register[3]_i_5_n_0 ;
  wire \store_register[3]_i_6_n_0 ;
  wire \store_register[3]_i_7_n_0 ;
  wire \store_register[3]_i_8_n_0 ;
  wire \store_register[3]_i_9_n_0 ;
  wire \store_register[5]_i_2_n_0 ;
  wire \store_register[5]_i_3_n_0 ;
  wire \store_register[5]_i_4_n_0 ;
  wire \store_register[6]_i_2_n_0 ;
  wire \store_register[6]_i_3_n_0 ;
  wire \store_register[6]_i_4_n_0 ;
  wire \store_register[6]_i_5_n_0 ;
  wire sysclk;
  wire words_reg_0_255_0_0_i_15_n_0;
  wire [2:0]words_reg_0_255_0_0_i_22_0;
  wire words_reg_0_255_0_0_i_26_n_0;
  wire [1:0]words_reg_0_255_0_0_i_27_0;
  wire words_reg_0_255_0_0_i_27_n_0;
  wire words_reg_0_255_0_0_i_28_n_0;
  wire words_reg_0_255_0_0_i_28_n_1;
  wire words_reg_0_255_0_0_i_28_n_2;
  wire words_reg_0_255_0_0_i_28_n_3;
  wire words_reg_0_255_0_0_i_29_n_0;
  wire words_reg_0_255_0_0_i_29_n_1;
  wire words_reg_0_255_0_0_i_29_n_2;
  wire words_reg_0_255_0_0_i_29_n_3;
  wire words_reg_0_255_0_0_i_33_n_0;
  wire words_reg_0_255_0_0_i_37_n_0;
  wire [3:1]\NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_bank_reg[8][3]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_bank_reg[8][3]_i_8_CO_UNCONNECTED ;
  wire [3:0]\NLW_bank_reg[8][3]_i_8_O_UNCONNECTED ;
  wire [3:0]NLW_words_reg_0_255_0_0_i_30_CO_UNCONNECTED;
  wire [3:1]NLW_words_reg_0_255_0_0_i_30_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    a_sub_b_carry__0_i_1
       (.I0(\bank[5][7]_i_6_n_0 ),
        .O(\instruction_reg_reg[1]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    a_sub_b_carry__0_i_2
       (.I0(\bank[2][4]_i_2_n_0 ),
        .O(\instruction_reg_reg[1]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    a_sub_b_carry__0_i_3
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .O(\instruction_reg_reg[1] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry__0_i_4
       (.I0(\bank_reg[14][7]_0 [3]),
        .I1(D[6]),
        .O(\instruction_reg_reg[1] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry__0_i_5
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(a_sub_b_carry__0_i_7_n_0),
        .O(\instruction_reg_reg[1] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    a_sub_b_carry__0_i_6
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank_reg[14][7]_0 [2]),
        .O(\instruction_reg_reg[1] [0]));
  LUT6 #(
    .INIT(64'hAACFAAC0AAAAAAAA)) 
    a_sub_b_carry__0_i_7
       (.I0(\store_register[5]_i_4_n_0 ),
        .I1(\store_register[5]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\store_register[5]_i_2_n_0 ),
        .I5(Q[2]),
        .O(a_sub_b_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_sub_b_carry_i_1
       (.I0(\store_register[3]_i_6_n_0 ),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    a_sub_b_carry_i_2
       (.I0(\store_register[0]_i_2_n_0 ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h6)) 
    a_sub_b_carry_i_3
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank_reg[14][7]_0 [1]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_4
       (.I0(\bank_reg[14][7]_0 [0]),
        .I1(D[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_5
       (.I0(reg_b),
        .I1(D[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    a_sub_b_carry_i_6
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[10][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[10][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[10][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[10][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[10][1]_i_2_n_0 ),
        .O(\bank[10][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \bank[10][1]_i_2 
       (.I0(reg_b),
        .I1(D[1]),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[10][7]_i_3_n_0 ),
        .O(\bank[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[10][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[10][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[10][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[10][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[10][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[10][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[10][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[10][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[10][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[10][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[10][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[10][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[10][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[10][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[10][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808080BB80808080)) 
    \bank[10][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[10][7]_i_3_n_0 ),
        .I3(\store_register[2]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\bank[10][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[10][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[10][7]_i_4_n_0 ),
        .O(\bank[10][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \bank[10][7]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\bank[10][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h30A0)) 
    \bank[10][7]_i_4 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[10][7]_i_3_n_0 ),
        .O(\bank[10][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[11][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[11][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[11][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[11][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[11][1]_i_2_n_0 ),
        .O(\bank[11][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \bank[11][1]_i_2 
       (.I0(reg_b),
        .I1(D[1]),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[11][7]_i_3_n_0 ),
        .O(\bank[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[11][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[11][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[11][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[11][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[11][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[11][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[11][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[11][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[11][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[11][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[11][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[11][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[11][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080BB8080808080)) 
    \bank[11][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[11][7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\bank[3][7]_i_4_n_0 ),
        .I5(Q[2]),
        .O(\bank[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[11][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[11][7]_i_4_n_0 ),
        .O(\bank[11][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \bank[11][7]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[4]),
        .O(\bank[11][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h30A0)) 
    \bank[11][7]_i_4 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[11][7]_i_3_n_0 ),
        .O(\bank[11][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[12][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[12][6]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[12][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[12][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[12][1]_i_2_n_0 ),
        .O(\bank[12][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[12][1]_i_2 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[12][6]_i_2_n_0 ),
        .I3(D[1]),
        .O(\bank[12][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[12][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[12][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[12][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[12][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[12][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[12][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[12][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[12][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[12][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[12][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[12][6]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[12][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[12][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[12][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[12][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[12][6]_i_2 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[6]),
        .O(\bank[12][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \bank[12][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\bank[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[12][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[12][7]_i_3_n_0 ),
        .O(\bank[12][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[12][7]_i_3 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[12][6]_i_2_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[12][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \bank[13][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[13][7]_i_3_n_0 ),
        .O(\bank[13][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[13][1]_i_1 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[13][7]_i_3_n_0 ),
        .I3(D[1]),
        .O(\bank[13][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[13][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[13][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[13][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[13][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[13][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[13][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[13][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[13][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \bank[13][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[13][7]_i_3_n_0 ),
        .O(\bank[13][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[13][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[13][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[13][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \bank[13][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(\bank[5][7]_i_4_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(Q[6]),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[13][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[13][7]_i_2 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[13][7]_i_3_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[13][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \bank[13][7]_i_3 
       (.I0(Q[4]),
        .I1(\bank[5][7]_i_4_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(Q[6]),
        .O(\bank[13][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \bank[14][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[14][7]_i_3_n_0 ),
        .O(\bank[14][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[14][1]_i_1 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[14][7]_i_3_n_0 ),
        .I3(D[1]),
        .O(\bank[14][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[14][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[14][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[14][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[14][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[14][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[14][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[14][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[14][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \bank[14][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[14][7]_i_3_n_0 ),
        .O(\bank[14][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[14][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[14][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[14][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \bank[14][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(\bank[6][7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(Q[6]),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[14][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[14][7]_i_2 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[14][7]_i_3_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[14][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[14][7]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[6]),
        .O(\bank[14][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[1][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[1][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[1][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[1][1]_i_2_n_0 ),
        .O(\bank[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \bank[1][1]_i_2 
       (.I0(reg_b),
        .I1(D[1]),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[1][7]_i_3_n_0 ),
        .O(\bank[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[1][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[1][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[1][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[1][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[1][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[1][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[1][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[1][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[1][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[1][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAB000000030003)) 
    \bank[1][7]_i_1 
       (.I0(\bank[1][7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(\bank[3][7]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(\bank[2][7]_i_3_n_0 ),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(bank));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[1][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[1][7]_i_4_n_0 ),
        .O(\bank[1][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \bank[1][7]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[5]),
        .O(\bank[1][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h30A0)) 
    \bank[1][7]_i_4 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[1][7]_i_3_n_0 ),
        .O(\bank[1][7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[2][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \bank[2][0]_i_10 
       (.I0(D[6]),
        .I1(D[2]),
        .I2(Q[4]),
        .I3(\bank[2][4]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(\store_register[0]_i_2_n_0 ),
        .O(\bank[2][0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \bank[2][0]_i_11 
       (.I0(Q[4]),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(Q[3]),
        .O(\bank[2][0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0074)) 
    \bank[2][0]_i_2 
       (.I0(\bank[2][0]_i_3_n_0 ),
        .I1(\bank[8][0]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_9_n_0 ),
        .I4(\bank[2][0]_i_4_n_0 ),
        .O(\bank[2][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B888B8BBB888)) 
    \bank[2][0]_i_3 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(\bank[2][7]_i_17_n_0 ),
        .I2(\bank[2][0]_i_5_n_0 ),
        .I3(\bank[2][6]_i_19_n_0 ),
        .I4(\bank[8][0]_i_5_0 ),
        .I5(\bank[2][0]_i_7_n_0 ),
        .O(\bank[2][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F00BFBB0F008F88)) 
    \bank[2][0]_i_4 
       (.I0(data_load0[0]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\store_register[3]_i_3_n_0 ),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[2][7]_i_15_n_0 ),
        .I5(io_load[0]),
        .O(\bank[2][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[2][0]_i_5 
       (.I0(\bank[2][1]_i_16_n_0 ),
        .I1(Q[3]),
        .I2(\bank[2][0]_i_10_n_0 ),
        .I3(\bank[2][6]_i_20_n_0 ),
        .I4(Q[5]),
        .I5(\bank[2][0]_i_11_n_0 ),
        .O(\bank[2][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCD04DD4101041141)) 
    \bank[2][0]_i_7 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(\store_register[3]_i_3_n_0 ),
        .I3(Q[8]),
        .I4(\store_register[0]_i_2_n_0 ),
        .I5(\bank_reg[2][3]_i_19_n_7 ),
        .O(\bank[2][0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][0]_i_9 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [0]),
        .I5(\bank[2][7]_i_9_1 [0]),
        .O(io_load[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[2][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[2][1]_i_5_n_0 ),
        .O(\bank[2][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8080B3BF)) 
    \bank[2][1]_i_10 
       (.I0(\bank[2][1]_i_13_n_0 ),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(O[0]),
        .I4(\bank[2][1]_i_14_n_0 ),
        .O(\bank[2][1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][1]_i_12 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [1]),
        .I5(\bank[2][7]_i_9_1 [1]),
        .O(io_load[1]));
  LUT6 #(
    .INIT(64'h20AA20AA20AAA8AA)) 
    \bank[2][1]_i_13 
       (.I0(\bank[2][1]_i_15_n_0 ),
        .I1(Q[3]),
        .I2(\bank[2][1]_i_16_n_0 ),
        .I3(\bank[2][6]_i_20_n_0 ),
        .I4(\bank[2][2]_i_15_n_0 ),
        .I5(\bank[2][2]_i_16_n_0 ),
        .O(\bank[2][1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF14001454405440)) 
    \bank[2][1]_i_14 
       (.I0(Q[10]),
        .I1(reg_b),
        .I2(D[1]),
        .I3(Q[8]),
        .I4(\bank_reg[2][3]_i_19_n_6 ),
        .I5(Q[9]),
        .O(\bank[2][1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF8B)) 
    \bank[2][1]_i_15 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(D[1]),
        .I3(Q[4]),
        .I4(\bank[2][6]_i_20_n_0 ),
        .I5(Q[5]),
        .O(\bank[2][1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF000F0FF)) 
    \bank[2][1]_i_16 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .I1(\store_register[3]_i_6_n_0 ),
        .I2(a_sub_b_carry__0_i_7_n_0),
        .I3(Q[5]),
        .I4(D[1]),
        .I5(Q[4]),
        .O(\bank[2][1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \bank[2][1]_i_2 
       (.I0(\bank[2][1]_i_6_n_0 ),
        .I1(\bank[2][1]_i_7_n_0 ),
        .I2(\bank[2][1]_i_8_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][1]_i_9_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(reg_b));
  LUT6 #(
    .INIT(64'hA8A808A8080808A8)) 
    \bank[2][1]_i_3 
       (.I0(\bank[2][7]_i_15_n_0 ),
        .I1(Q[4]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][1]_i_10_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(D[1]),
        .O(\bank[2][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \bank[2][1]_i_4 
       (.I0(data_load0[1]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][2]_i_12_n_0 ),
        .I3(io_load[1]),
        .O(\bank[2][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \bank[2][1]_i_5 
       (.I0(reg_b),
        .I1(D[1]),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[2][7]_i_5_n_0 ),
        .O(\bank[2][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFB08FC0CFB08)) 
    \bank[2][1]_i_6 
       (.I0(\bank_reg[14] [1]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(instruction_addr0[3]),
        .I4(Q[3]),
        .I5(\bank_reg[13][5]_0 [1]),
        .O(\bank[2][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][1]_i_7 
       (.I0(\bank_reg[10] [1]),
        .I1(\bank_reg[11] [1]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(flags[1]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank[9][1]_i_3_n_0 ),
        .O(\bank[2][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \bank[2][1]_i_8 
       (.I0(\bank_reg[4] [1]),
        .I1(\bank_reg[5] [1]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[6] [1]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[7] [1]),
        .O(\bank[2][1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00C000A000A0)) 
    \bank[2][1]_i_9 
       (.I0(\bank_reg[2] [1]),
        .I1(\bank_reg[3] [1]),
        .I2(Q[4]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\bank_reg[1] [1]),
        .I5(Q[3]),
        .O(\bank[2][1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[2][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[2][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][2]_i_11 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [2]),
        .I5(\bank[2][7]_i_9_1 [2]),
        .O(io_load[2]));
  LUT6 #(
    .INIT(64'h0AFF0AFBFFFFFFFF)) 
    \bank[2][2]_i_12 
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[14]),
        .I4(Q[11]),
        .I5(\bank[2][7]_i_20_n_0 ),
        .O(\bank[2][2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h008BFFFF008B0000)) 
    \bank[2][2]_i_13 
       (.I0(\bank[2][3]_i_17_n_0 ),
        .I1(Q[3]),
        .I2(\bank[2][2]_i_15_n_0 ),
        .I3(\bank[2][2]_i_16_n_0 ),
        .I4(\bank[2][6]_i_20_n_0 ),
        .I5(\bank[2][2]_i_17_n_0 ),
        .O(\bank[2][2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF14001454405440)) 
    \bank[2][2]_i_14 
       (.I0(Q[10]),
        .I1(\bank_reg[14][7]_0 [0]),
        .I2(D[2]),
        .I3(Q[8]),
        .I4(\bank_reg[2][3]_i_19_n_5 ),
        .I5(Q[9]),
        .O(\bank[2][2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30773044)) 
    \bank[2][2]_i_15 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(D[6]),
        .I3(Q[5]),
        .I4(D[2]),
        .O(\bank[2][2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \bank[2][2]_i_16 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(Q[5]),
        .O(\bank[2][2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABFBFAFAABFB)) 
    \bank[2][2]_i_17 
       (.I0(Q[5]),
        .I1(D[2]),
        .I2(Q[3]),
        .I3(D[1]),
        .I4(Q[4]),
        .I5(\store_register[0]_i_2_n_0 ),
        .O(\bank[2][2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \bank[2][2]_i_2 
       (.I0(\bank[2][2]_i_5_n_0 ),
        .I1(\bank[2][2]_i_6_n_0 ),
        .I2(\bank[2][2]_i_7_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][2]_i_8_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(\bank_reg[14][7]_0 [0]));
  LUT6 #(
    .INIT(64'h5454045404040454)) 
    \bank[2][2]_i_3 
       (.I0(\bank[2][6]_i_9_n_0 ),
        .I1(Q[5]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][2]_i_9_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(D[2]),
        .O(\bank[2][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888F888FFFFF888)) 
    \bank[2][2]_i_4 
       (.I0(data_load0[2]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(io_load[2]),
        .I5(\bank[2][2]_i_12_n_0 ),
        .O(\bank[2][2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFB08FC0CFB08)) 
    \bank[2][2]_i_5 
       (.I0(\bank_reg[14] [2]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(instruction_addr0[4]),
        .I4(Q[3]),
        .I5(\bank_reg[13][5]_0 [2]),
        .O(\bank[2][2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AA33AA33)) 
    \bank[2][2]_i_6 
       (.I0(flags[2]),
        .I1(\bank[9][2]_i_2_n_0 ),
        .I2(\bank_reg[10] [2]),
        .I3(\bank[5][7]_i_4_n_0 ),
        .I4(\bank_reg[11] [2]),
        .I5(\bank[6][7]_i_3_n_0 ),
        .O(\bank[2][2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][2]_i_7 
       (.I0(\bank_reg[6] [2]),
        .I1(\bank_reg[7] [2]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[4] [2]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[5] [2]),
        .O(\bank[2][2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3232300002023000)) 
    \bank[2][2]_i_8 
       (.I0(\bank_reg[1] [2]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\bank_reg[2] [2]),
        .I4(Q[3]),
        .I5(\bank_reg[3] [2]),
        .O(\bank[2][2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8080B3BF)) 
    \bank[2][2]_i_9 
       (.I0(\bank[2][2]_i_13_n_0 ),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(O[1]),
        .I4(\bank[2][2]_i_14_n_0 ),
        .O(\bank[2][2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[2][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[2][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][3]_i_11 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [3]),
        .I5(\bank[2][7]_i_9_1 [3]),
        .O(io_load[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \bank[2][3]_i_12 
       (.I0(\bank[4][7]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\bank[2][3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bank[2][3]_i_13 
       (.I0(\bank_reg[6] [3]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank_reg[7] [3]),
        .O(\bank[2][3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC00BBBBFC008888)) 
    \bank[2][3]_i_14 
       (.I0(\bank[2][3]_i_17_n_0 ),
        .I1(Q[6]),
        .I2(\bank[2][4]_i_21_n_0 ),
        .I3(\bank[2][4]_i_22_n_0 ),
        .I4(Q[3]),
        .I5(\bank[2][3]_i_18_n_0 ),
        .O(\bank[2][3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bank[2][3]_i_15 
       (.I0(Q[5]),
        .I1(\bank[2][7]_i_28_n_0 ),
        .O(\bank[2][3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h443C74F3)) 
    \bank[2][3]_i_16 
       (.I0(\bank_reg[2][3]_i_19_n_4 ),
        .I1(Q[9]),
        .I2(\store_register[3]_i_6_n_0 ),
        .I3(Q[8]),
        .I4(\bank_reg[14][7]_0 [1]),
        .O(\bank[2][3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \bank[2][3]_i_17 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(Q[4]),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(Q[5]),
        .I4(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][3]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \bank[2][3]_i_18 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(Q[4]),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(Q[5]),
        .I4(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFBBBBAAAAAAFF)) 
    \bank[2][3]_i_2 
       (.I0(\bank[2][3]_i_5_n_0 ),
        .I1(\bank[2][3]_i_6_n_0 ),
        .I2(\bank[2][3]_i_7_n_0 ),
        .I3(\bank[2][3]_i_8_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(\bank_reg[14][7]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \bank[2][3]_i_20 
       (.I0(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bank[2][3]_i_21 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank_reg[14][7]_0 [1]),
        .O(\bank[2][3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5656569A9A9A569A)) 
    \bank[2][3]_i_22 
       (.I0(D[2]),
        .I1(\store_register[3]_i_11_n_0 ),
        .I2(\bank_reg[2][3]_i_25_n_0 ),
        .I3(\bank[2][2]_i_6_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][2]_i_5_n_0 ),
        .O(\bank[2][3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h5656569A9A9A569A)) 
    \bank[2][3]_i_23 
       (.I0(D[1]),
        .I1(\store_register[3]_i_11_n_0 ),
        .I2(\bank_reg[2][3]_i_26_n_0 ),
        .I3(\bank[2][1]_i_7_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][1]_i_6_n_0 ),
        .O(\bank[2][3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h5656569A9A9A569A)) 
    \bank[2][3]_i_24 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(\store_register[3]_i_11_n_0 ),
        .I2(\bank[2][3]_i_27_n_0 ),
        .I3(\store_register[3]_i_8_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\store_register[3]_i_7_n_0 ),
        .O(\bank[2][3]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \bank[2][3]_i_27 
       (.I0(\bank[8][0]_i_20_n_0 ),
        .I1(\store_register[3]_i_15_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\store_register[3]_i_10_n_0 ),
        .O(\bank[2][3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0404045454540454)) 
    \bank[2][3]_i_3 
       (.I0(\bank[2][6]_i_9_n_0 ),
        .I1(Q[6]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][3]_i_9_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF000FBBBF000F888)) 
    \bank[2][3]_i_4 
       (.I0(data_load0[3]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_7_n_0 ),
        .I4(\bank[2][7]_i_15_n_0 ),
        .I5(io_load[3]),
        .O(\bank[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2A2A2A2020202A20)) 
    \bank[2][3]_i_5 
       (.I0(\bank[2][3]_i_12_n_0 ),
        .I1(\bank[2][3]_i_13_n_0 ),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[5] [3]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[4] [3]),
        .O(\bank[2][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \bank[2][3]_i_6 
       (.I0(\bank_reg[10] [3]),
        .I1(\bank_reg[11] [3]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(flags[3]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank[9][3]_i_2_n_0 ),
        .O(\bank[2][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h101F1010101F1F1F)) 
    \bank[2][3]_i_7 
       (.I0(Q[3]),
        .I1(\bank_reg[14] [3]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg_n_0_[12][3] ),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(addr1[5]),
        .O(\bank[2][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F3F005F5F3F3F)) 
    \bank[2][3]_i_8 
       (.I0(\bank_reg[2] [3]),
        .I1(\bank_reg[3] [3]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[1] [3]),
        .O(\bank[2][3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \bank[2][3]_i_9 
       (.I0(\bank[2][3]_i_14_n_0 ),
        .I1(\bank[2][3]_i_15_n_0 ),
        .I2(\bank[2][6]_i_19_n_0 ),
        .I3(O[2]),
        .I4(\bank[2][6]_i_20_n_0 ),
        .I5(\bank[2][3]_i_16_n_0 ),
        .O(\bank[2][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[2][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[2][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AFCFCFA0A0C0C)) 
    \bank[2][4]_i_10 
       (.I0(\bank_reg[4] [4]),
        .I1(\bank_reg[5] [4]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[6] [4]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[7] [4]),
        .O(\bank[2][4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hC0EEC022)) 
    \bank[2][4]_i_11 
       (.I0(\bank_reg[1] [4]),
        .I1(\bank[6][7]_i_3_n_0 ),
        .I2(\bank_reg[2] [4]),
        .I3(\bank[5][7]_i_4_n_0 ),
        .I4(\bank_reg[3] [4]),
        .O(\bank[2][4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB8CC)) 
    \bank[2][4]_i_12 
       (.I0(\bank_reg[14] [4]),
        .I1(\bank[6][7]_i_3_n_0 ),
        .I2(\bank_reg_n_0_[12][4] ),
        .I3(\bank[5][7]_i_4_n_0 ),
        .I4(\bank_reg[13][5]_0 [3]),
        .O(\bank[2][4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFA0AF3F3FA0A0303)) 
    \bank[2][4]_i_13 
       (.I0(\bank_reg_n_0_[8][4] ),
        .I1(\bank[9][4]_i_3_n_0 ),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[10] [4]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[11] [4]),
        .O(\bank[2][4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0CFAFCF)) 
    \bank[2][4]_i_14 
       (.I0(\bank[2][4]_i_17_n_0 ),
        .I1(\bank[2][4]_i_18_n_0 ),
        .I2(\bank[2][6]_i_19_n_0 ),
        .I3(\bank[2][6]_i_20_n_0 ),
        .I4(\bank[8][0]_i_7_0 [0]),
        .I5(\bank[2][4]_i_19_n_0 ),
        .O(\bank[2][4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][4]_i_16 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [4]),
        .I5(\bank[2][7]_i_9_1 [4]),
        .O(io_load[4]));
  LUT6 #(
    .INIT(64'hB8FFB8CCB800B800)) 
    \bank[2][4]_i_17 
       (.I0(\bank[2][5]_i_17_n_0 ),
        .I1(Q[6]),
        .I2(\bank[2][4]_i_20_n_0 ),
        .I3(Q[3]),
        .I4(\bank[2][4]_i_21_n_0 ),
        .I5(\bank[2][4]_i_22_n_0 ),
        .O(\bank[2][4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \bank[2][4]_i_18 
       (.I0(Q[4]),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(\bank[8][3]_i_7_n_0 ),
        .O(\bank[2][4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF41004145044504)) 
    \bank[2][4]_i_19 
       (.I0(Q[10]),
        .I1(\bank_reg[14][7]_0 [2]),
        .I2(\bank[2][4]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(\bank_reg[2][7]_i_30_n_7 ),
        .I5(Q[9]),
        .O(\bank[2][4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2202222222020202)) 
    \bank[2][4]_i_2 
       (.I0(\bank[2][4]_i_6_n_0 ),
        .I1(\bank[2][4]_i_7_n_0 ),
        .I2(\store_register[2]_i_3_n_0 ),
        .I3(\bank[2][4]_i_8_n_0 ),
        .I4(\store_register[2]_i_5_n_0 ),
        .I5(\bank[2][4]_i_9_n_0 ),
        .O(\bank[2][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hCCCA)) 
    \bank[2][4]_i_20 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(Q[5]),
        .I3(Q[4]),
        .O(\bank[2][4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bank[2][4]_i_21 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .I1(Q[5]),
        .O(\bank[2][4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hCEFE)) 
    \bank[2][4]_i_22 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(D[6]),
        .O(\bank[2][4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    \bank[2][4]_i_3 
       (.I0(\bank[2][4]_i_10_n_0 ),
        .I1(\bank[2][4]_i_11_n_0 ),
        .I2(\bank[2][4]_i_12_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][4]_i_13_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(\bank_reg[14][7]_0 [2]));
  LUT6 #(
    .INIT(64'h0404045454540454)) 
    \bank[2][4]_i_4 
       (.I0(\bank[2][6]_i_9_n_0 ),
        .I1(Q[7]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][4]_i_14_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(\bank[2][4]_i_2_n_0 ),
        .O(\bank[2][4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F888F888)) 
    \bank[2][4]_i_5 
       (.I0(data_load0[4]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][6]_i_12_n_0 ),
        .I3(io_load[4]),
        .I4(\bank_reg[14][7]_0 [2]),
        .I5(\bank[2][7]_i_7_n_0 ),
        .O(\bank[2][4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFFFFBFFFFF)) 
    \bank[2][4]_i_6 
       (.I0(Q[2]),
        .I1(\bank_reg[3] [4]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(\bank_reg[1] [4]),
        .O(\bank[2][4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \bank[2][4]_i_7 
       (.I0(\bank_reg[2] [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[2]),
        .O(\bank[2][4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7545)) 
    \bank[2][4]_i_8 
       (.I0(\bank_reg_n_0_[8][4] ),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank[9][4]_i_3_n_0 ),
        .O(\bank[2][4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bank[2][4]_i_9 
       (.I0(\bank_reg[10] [4]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[11] [4]),
        .O(\bank[2][4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[2][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][5]_i_11 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [5]),
        .I5(\bank[2][7]_i_9_1 [5]),
        .O(io_load[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAA32AA02)) 
    \bank[2][5]_i_12 
       (.I0(\bank_reg[4] [5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\bank_reg[5] [5]),
        .O(\bank[2][5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2202AA8AAA8AAA8A)) 
    \bank[2][5]_i_13 
       (.I0(\bank[2][5]_i_16_n_0 ),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(\bank[2][5]_i_17_n_0 ),
        .I4(\bank[2][6]_i_22_n_0 ),
        .I5(D[6]),
        .O(\bank[2][5]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][5]_i_14 
       (.I0(\bank[2][5]_i_18_n_0 ),
        .I1(Q[5]),
        .I2(\bank[2][5]_i_19_n_0 ),
        .I3(Q[4]),
        .I4(\bank[2][5]_i_20_n_0 ),
        .O(\bank[2][5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF14001415011501)) 
    \bank[2][5]_i_15 
       (.I0(Q[10]),
        .I1(\bank[2][5]_i_2_n_0 ),
        .I2(a_sub_b_carry__0_i_7_n_0),
        .I3(Q[8]),
        .I4(\bank_reg[2][7]_i_30_n_6 ),
        .I5(Q[9]),
        .O(\bank[2][5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFECCCCCCFE)) 
    \bank[2][5]_i_16 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(Q[6]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\bank[5][7]_i_6_n_0 ),
        .O(\bank[2][5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFECE)) 
    \bank[2][5]_i_17 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[2][5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFBAB)) 
    \bank[2][5]_i_18 
       (.I0(Q[4]),
        .I1(D[1]),
        .I2(Q[3]),
        .I3(\store_register[0]_i_2_n_0 ),
        .O(\bank[2][5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[2][5]_i_19 
       (.I0(D[2]),
        .I1(Q[3]),
        .I2(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][5]_i_2 
       (.I0(\bank[2][5]_i_5_n_0 ),
        .I1(\bank[2][5]_i_6_n_0 ),
        .I2(\store_register[3]_i_11_n_0 ),
        .I3(\bank[2][5]_i_7_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][5]_i_8_n_0 ),
        .O(\bank[2][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[2][5]_i_20 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(a_sub_b_carry__0_i_7_n_0),
        .O(\bank[2][5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0404045454540454)) 
    \bank[2][5]_i_3 
       (.I0(\bank[2][6]_i_9_n_0 ),
        .I1(Q[8]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][5]_i_9_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(a_sub_b_carry__0_i_7_n_0),
        .O(\bank[2][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFF888F888)) 
    \bank[2][5]_i_4 
       (.I0(data_load0[5]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][6]_i_12_n_0 ),
        .I3(io_load[5]),
        .I4(\bank[2][5]_i_2_n_0 ),
        .I5(\bank[2][7]_i_7_n_0 ),
        .O(\bank[2][5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F004F703F304F7)) 
    \bank[2][5]_i_5 
       (.I0(\bank_reg[14] [5]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\bank_reg_n_0_[12][5] ),
        .I4(Q[3]),
        .I5(\bank_reg[13][5]_0 [4]),
        .O(\bank[2][5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3F3F505F3030)) 
    \bank[2][5]_i_6 
       (.I0(\bank_reg[10] [5]),
        .I1(\bank_reg[11] [5]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg_n_0_[8][5] ),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank[9][5]_i_2_n_0 ),
        .O(\bank[2][5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10551555)) 
    \bank[2][5]_i_7 
       (.I0(\bank[2][5]_i_12_n_0 ),
        .I1(\bank_reg[7] [5]),
        .I2(Q[3]),
        .I3(\bank[6][7]_i_3_n_0 ),
        .I4(\bank_reg[6] [5]),
        .O(\bank[2][5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF35FF0FFF35FFFF)) 
    \bank[2][5]_i_8 
       (.I0(\bank_reg[2] [5]),
        .I1(\bank_reg[3] [5]),
        .I2(Q[3]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[4]),
        .I5(\bank_reg[1] [5]),
        .O(\bank[2][5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0CFAFCF)) 
    \bank[2][5]_i_9 
       (.I0(\bank[2][5]_i_13_n_0 ),
        .I1(\bank[2][5]_i_14_n_0 ),
        .I2(\bank[2][6]_i_19_n_0 ),
        .I3(\bank[2][6]_i_20_n_0 ),
        .I4(\bank[8][0]_i_7_0 [1]),
        .I5(\bank[2][5]_i_15_n_0 ),
        .O(\bank[2][5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[2][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[2][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0CFAFCF)) 
    \bank[2][6]_i_10 
       (.I0(\bank[2][6]_i_17_n_0 ),
        .I1(\bank[2][6]_i_18_n_0 ),
        .I2(\bank[2][6]_i_19_n_0 ),
        .I3(\bank[2][6]_i_20_n_0 ),
        .I4(\bank[8][0]_i_7_0 [2]),
        .I5(\bank[2][6]_i_21_n_0 ),
        .O(\bank[2][6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC0C0C00000400)) 
    \bank[2][6]_i_12 
       (.I0(Q[11]),
        .I1(words_reg_0_255_0_0_i_15_n_0),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(Q[14]),
        .O(\bank[2][6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][6]_i_13 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [6]),
        .I5(\bank[2][7]_i_9_1 [6]),
        .O(io_load[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \bank[2][6]_i_14 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .O(\bank[2][6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF2F30200)) 
    \bank[2][6]_i_15 
       (.I0(\bank_reg[10] [6]),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\bank_reg_n_0_[8][6] ),
        .O(\bank[2][6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \bank[2][6]_i_16 
       (.I0(Q[4]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[3]),
        .O(\bank[2][6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF3F35100FFFF5504)) 
    \bank[2][6]_i_17 
       (.I0(\bank[9][7]_i_5_n_0 ),
        .I1(\bank[2][6]_i_22_n_0 ),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(\bank[5][7]_i_6_n_0 ),
        .I5(D[6]),
        .O(\bank[2][6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \bank[2][6]_i_18 
       (.I0(\bank[2][6]_i_23_n_0 ),
        .I1(Q[5]),
        .I2(\bank[2][6]_i_24_n_0 ),
        .I3(\bank[2][6]_i_25_n_0 ),
        .I4(Q[4]),
        .O(\bank[2][6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bank[2][6]_i_19 
       (.I0(Q[10]),
        .I1(Q[9]),
        .O(\bank[2][6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h88CC88CC0F000FFF)) 
    \bank[2][6]_i_2 
       (.I0(\bank[2][6]_i_5_n_0 ),
        .I1(\bank[2][6]_i_6_n_0 ),
        .I2(\bank[2][6]_i_7_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][6]_i_8_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(\bank_reg[14][7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \bank[2][6]_i_20 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(\bank[2][6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF14001454405440)) 
    \bank[2][6]_i_21 
       (.I0(Q[10]),
        .I1(\bank_reg[14][7]_0 [3]),
        .I2(D[6]),
        .I3(Q[8]),
        .I4(\bank_reg[2][7]_i_30_n_5 ),
        .I5(Q[9]),
        .O(\bank[2][6]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bank[2][6]_i_22 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\bank[2][6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCF88CFBB)) 
    \bank[2][6]_i_23 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(Q[4]),
        .I2(D[1]),
        .I3(Q[3]),
        .I4(D[2]),
        .O(\bank[2][6]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[2][6]_i_24 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(Q[3]),
        .I2(\bank[2][4]_i_2_n_0 ),
        .O(\bank[2][6]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[2][6]_i_25 
       (.I0(D[5]),
        .I1(Q[3]),
        .I2(D[6]),
        .O(\bank[2][6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h5454045404040454)) 
    \bank[2][6]_i_3 
       (.I0(\bank[2][6]_i_9_n_0 ),
        .I1(Q[9]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][6]_i_10_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(D[6]),
        .O(\bank[2][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000F888F888)) 
    \bank[2][6]_i_4 
       (.I0(data_load0[6]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][6]_i_12_n_0 ),
        .I3(io_load[6]),
        .I4(\bank_reg[14][7]_0 [3]),
        .I5(\bank[2][7]_i_7_n_0 ),
        .O(\bank[2][6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFB08FC0CFB08)) 
    \bank[2][6]_i_5 
       (.I0(\bank_reg[14] [6]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\bank_reg_n_0_[12][6] ),
        .I4(Q[3]),
        .I5(addr1[8]),
        .O(\bank[2][6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFF1FFF1)) 
    \bank[2][6]_i_6 
       (.I0(\store_register[6]_i_4_n_0 ),
        .I1(\bank[2][6]_i_14_n_0 ),
        .I2(\bank[2][6]_i_15_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][6]_i_16_n_0 ),
        .I5(\bank_reg[11] [6]),
        .O(\bank[2][6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \bank[2][6]_i_7 
       (.I0(\bank_reg[4] [6]),
        .I1(\bank_reg[5] [6]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[6] [6]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[7] [6]),
        .O(\bank[2][6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCFFFFDFDCFFF)) 
    \bank[2][6]_i_8 
       (.I0(\bank_reg[1] [6]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\bank_reg[2] [6]),
        .I4(Q[3]),
        .I5(\bank_reg[3] [6]),
        .O(\bank[2][6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0020ECFF2020ECFF)) 
    \bank[2][6]_i_9 
       (.I0(Q[7]),
        .I1(Q[14]),
        .I2(flags[7]),
        .I3(Q[11]),
        .I4(Q[13]),
        .I5(Q[12]),
        .O(\bank[2][6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h80808080808080BB)) 
    \bank[2][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[2][7]_i_5_n_0 ),
        .I3(Q[2]),
        .I4(\store_register[2]_i_5_n_0 ),
        .I5(Q[0]),
        .O(\bank[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h30A0)) 
    \bank[2][7]_i_10 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[2][7]_i_5_n_0 ),
        .O(\bank[2][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF0FFB08FC0CFB08)) 
    \bank[2][7]_i_11 
       (.I0(\bank_reg[14] [7]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\bank_reg_n_0_[12][7] ),
        .I4(Q[3]),
        .I5(addr1[9]),
        .O(\bank[2][7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \bank[2][7]_i_12 
       (.I0(\bank[2][7]_i_22_n_0 ),
        .I1(\bank[9][7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(\bank[5][7]_i_4_n_0 ),
        .O(\bank[2][7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_13 
       (.I0(\bank_reg[6] [7]),
        .I1(\bank_reg[7] [7]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[4] [7]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(\bank_reg[5] [7]),
        .O(\bank[2][7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h3232300002023000)) 
    \bank[2][7]_i_14 
       (.I0(\bank_reg[1] [7]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[4]),
        .I3(\bank_reg[2] [7]),
        .I4(Q[3]),
        .I5(\bank_reg[3] [7]),
        .O(\bank[2][7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFFFDCCCCFDFD)) 
    \bank[2][7]_i_15 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(flags[7]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(\bank[2][7]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8B00BBFF)) 
    \bank[2][7]_i_16 
       (.I0(\bank[2][7]_i_23_n_0 ),
        .I1(Q[9]),
        .I2(\bank[8][0]_i_7_0 [3]),
        .I3(Q[10]),
        .I4(\bank[2][7]_i_24_n_0 ),
        .O(\bank[2][7]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bank[2][7]_i_17 
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[9]),
        .O(\bank[2][7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF7FFFF)) 
    \bank[2][7]_i_19 
       (.I0(addr_0[7]),
        .I1(addr_0[6]),
        .I2(words_reg_0_255_0_0_i_27_n_0),
        .I3(\bank[2][7]_i_25_n_0 ),
        .I4(addr_0[8]),
        .I5(\bank[2][7]_i_15_n_0 ),
        .O(\bank[2][7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[2][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[2][7]_i_10_n_0 ),
        .O(\bank[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bank[2][7]_i_20 
       (.I0(addr_0[8]),
        .I1(addr_0[2]),
        .I2(addr_0[3]),
        .I3(addr_0[9]),
        .I4(addr_0[1]),
        .I5(\bank[2][7]_i_26_n_0 ),
        .O(\bank[2][7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF002E00D1000000)) 
    \bank[2][7]_i_21 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\bank[2][6]_i_12_n_0 ),
        .I4(\bank[2][7]_i_9_0 [7]),
        .I5(\bank[2][7]_i_9_1 [7]),
        .O(io_load[7]));
  LUT6 #(
    .INIT(64'hCCF0CCACCC00CCAC)) 
    \bank[2][7]_i_22 
       (.I0(\bank_reg[10] [7]),
        .I1(flags[7]),
        .I2(Q[4]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\bank_reg[11] [7]),
        .O(\bank[2][7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[2][7]_i_23 
       (.I0(\bank[2][7]_i_27_n_0 ),
        .I1(\bank[2][6]_i_20_n_0 ),
        .I2(\bank[2][7]_i_28_n_0 ),
        .I3(Q[5]),
        .I4(\bank[2][7]_i_29_n_0 ),
        .O(\bank[2][7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBFFFFB88BCF0C)) 
    \bank[2][7]_i_24 
       (.I0(\bank_reg[2][7]_i_30_n_4 ),
        .I1(Q[8]),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(\bank_reg[14][7]_0 [4]),
        .I4(Q[9]),
        .I5(Q[10]),
        .O(\bank[2][7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h757FFFFFFFFFFFFF)) 
    \bank[2][7]_i_25 
       (.I0(addr_0[2]),
        .I1(Q[6]),
        .I2(Q[14]),
        .I3(addr0[3]),
        .I4(addr_0[9]),
        .I5(addr_0[1]),
        .O(\bank[2][7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4540050040400000)) 
    \bank[2][7]_i_26 
       (.I0(words_reg_0_255_0_0_i_27_n_0),
        .I1(Q[9]),
        .I2(Q[14]),
        .I3(addr0[6]),
        .I4(Q[10]),
        .I5(addr0[7]),
        .O(\bank[2][7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFAFAFAEA)) 
    \bank[2][7]_i_27 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(Q[3]),
        .O(\bank[2][7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \bank[2][7]_i_28 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(D[1]),
        .I2(Q[4]),
        .I3(D[2]),
        .I4(Q[3]),
        .I5(\store_register[3]_i_6_n_0 ),
        .O(\bank[2][7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \bank[2][7]_i_29 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(a_sub_b_carry__0_i_7_n_0),
        .I2(Q[4]),
        .I3(D[6]),
        .I4(Q[3]),
        .I5(\bank[5][7]_i_6_n_0 ),
        .O(\bank[2][7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000001010)) 
    \bank[2][7]_i_3 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(flags[7]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(\bank[2][7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bank[2][7]_i_31 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .O(\bank[2][7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    \bank[2][7]_i_32 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .I1(\bank[2][7]_i_14_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_13_n_0 ),
        .I4(\store_register[3]_i_11_n_0 ),
        .I5(\bank[2][7]_i_36_n_0 ),
        .O(\bank[2][7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAA999A9)) 
    \bank[2][7]_i_33 
       (.I0(D[6]),
        .I1(\store_register[3]_i_11_n_0 ),
        .I2(\bank[2][6]_i_8_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][6]_i_7_n_0 ),
        .I5(\bank[8][0]_i_19_n_0 ),
        .O(\bank[2][7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \bank[2][7]_i_34 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(\bank[2][7]_i_37_n_0 ),
        .I2(\store_register[3]_i_11_n_0 ),
        .I3(\bank[2][5]_i_6_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][5]_i_5_n_0 ),
        .O(\bank[2][7]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \bank[2][7]_i_35 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank_reg[14][7]_0 [2]),
        .O(\bank[2][7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B8BB)) 
    \bank[2][7]_i_36 
       (.I0(\bank[2][7]_i_11_n_0 ),
        .I1(\bank[5][7]_i_3_n_0 ),
        .I2(\bank[2][7]_i_22_n_0 ),
        .I3(\bank[9][7]_i_2_n_0 ),
        .I4(Q[4]),
        .I5(\bank[5][7]_i_4_n_0 ),
        .O(\bank[2][7]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \bank[2][7]_i_37 
       (.I0(\bank[2][5]_i_12_n_0 ),
        .I1(\bank[2][7]_i_38_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[2][5]_i_8_n_0 ),
        .O(\bank[2][7]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h0C080008)) 
    \bank[2][7]_i_38 
       (.I0(\bank_reg[6] [5]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\bank_reg[7] [5]),
        .O(\bank[2][7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC0074CCCC7474)) 
    \bank[2][7]_i_4 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(flags[7]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(\bank[2][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \bank[2][7]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[5]),
        .O(\bank[2][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \bank[2][7]_i_6 
       (.I0(\bank[2][7]_i_11_n_0 ),
        .I1(\bank[2][7]_i_12_n_0 ),
        .I2(\store_register[3]_i_11_n_0 ),
        .I3(\bank[2][7]_i_13_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][7]_i_14_n_0 ),
        .O(\bank_reg[14][7]_0 [4]));
  LUT6 #(
    .INIT(64'h00007F0100000101)) 
    \bank[2][7]_i_7 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(flags[7]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(\bank[2][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h080808A8A8A808A8)) 
    \bank[2][7]_i_8 
       (.I0(\bank[2][7]_i_15_n_0 ),
        .I1(Q[10]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[2][7]_i_16_n_0 ),
        .I4(\bank[2][7]_i_17_n_0 ),
        .I5(\bank[5][7]_i_6_n_0 ),
        .O(\bank[2][7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0F080008)) 
    \bank[2][7]_i_9 
       (.I0(data_load0[7]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][7]_i_15_n_0 ),
        .I3(\bank[2][7]_i_20_n_0 ),
        .I4(io_load[7]),
        .O(\bank[2][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[3][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[3][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[3][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[3][1]_i_2_n_0 ),
        .O(\bank[3][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hC0A0)) 
    \bank[3][1]_i_2 
       (.I0(reg_b),
        .I1(D[1]),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[3][7]_i_3_n_0 ),
        .O(\bank[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[3][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[3][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[3][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[3][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[3][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[3][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[3][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[3][7]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[3][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[3][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080BB8080)) 
    \bank[3][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[3][7]_i_3_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\bank[3][7]_i_4_n_0 ),
        .O(\bank[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[3][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[3][7]_i_5_n_0 ),
        .O(\bank[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \bank[3][7]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[5]),
        .O(\bank[3][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bank[3][7]_i_4 
       (.I0(\bank[4][7]_i_3_n_0 ),
        .I1(Q[0]),
        .O(\bank[3][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h30A0)) 
    \bank[3][7]_i_5 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[5][7]_i_6_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[3][7]_i_3_n_0 ),
        .O(\bank[3][7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    \bank[4][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[4][6]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(\bank[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[4][1]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][1]_i_3_n_0 ),
        .I4(\bank[2][1]_i_4_n_0 ),
        .I5(\bank[4][1]_i_2_n_0 ),
        .O(\bank[4][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[4][1]_i_2 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][6]_i_2_n_0 ),
        .I3(D[1]),
        .O(\bank[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[4][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[4][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][2]_i_3_n_0 ),
        .I5(\bank[2][2]_i_4_n_0 ),
        .O(\bank[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[4][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[4][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF74FF74FF7400)) 
    \bank[4][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[4][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][4]_i_4_n_0 ),
        .I5(\bank[2][4]_i_5_n_0 ),
        .O(\bank[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FFC5FFC5FFC500)) 
    \bank[4][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[4][6]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_3_n_0 ),
        .I5(\bank[2][5]_i_4_n_0 ),
        .O(\bank[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \bank[4][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[4][6]_i_2_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_3_n_0 ),
        .I5(\bank[2][6]_i_4_n_0 ),
        .O(\bank[4][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \bank[4][6]_i_2 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[3]),
        .O(\bank[4][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \bank[4][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\bank[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF45454540)) 
    \bank[4][7]_i_2 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[2][7]_i_9_n_0 ),
        .I5(\bank[4][7]_i_4_n_0 ),
        .O(\bank[4][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00007F0000000000)) 
    \bank[4][7]_i_3 
       (.I0(Q[12]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(flags[7]),
        .I4(Q[14]),
        .I5(Q[7]),
        .O(\bank[4][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[4][7]_i_4 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[4][6]_i_2_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[4][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \bank[5][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[5][7]_i_5_n_0 ),
        .O(\bank[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[5][1]_i_1 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[5][7]_i_5_n_0 ),
        .I3(D[1]),
        .O(\bank[5][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[5][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[5][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[5][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[5][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[5][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[5][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \bank[5][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[5][7]_i_5_n_0 ),
        .O(\bank[5][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[5][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[5][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \bank[5][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[5][7]_i_4_n_0 ),
        .I4(Q[4]),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[5][7]_i_2 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[5][7]_i_5_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[5][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bank[5][7]_i_3 
       (.I0(Q[5]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .O(\bank[5][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bank[5][7]_i_4 
       (.I0(\bank[4][7]_i_3_n_0 ),
        .I1(Q[3]),
        .O(\bank[5][7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \bank[5][7]_i_5 
       (.I0(Q[6]),
        .I1(\bank[5][7]_i_3_n_0 ),
        .I2(\bank[5][7]_i_4_n_0 ),
        .I3(Q[4]),
        .O(\bank[5][7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFF00FE0000)) 
    \bank[5][7]_i_6 
       (.I0(\bank[9][7]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(\bank[3][7]_i_4_n_0 ),
        .I3(\bank[5][7]_i_7_n_0 ),
        .I4(\store_register[2]_i_3_n_0 ),
        .I5(\bank[5][7]_i_8_n_0 ),
        .O(\bank[5][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFC0FFAF00C000A0)) 
    \bank[5][7]_i_7 
       (.I0(\bank_reg[10] [7]),
        .I1(\bank_reg[11] [7]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(flags[7]),
        .O(\bank[5][7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCFFFFDFDCFFF)) 
    \bank[5][7]_i_8 
       (.I0(\bank_reg[1] [7]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\bank_reg[2] [7]),
        .I4(Q[0]),
        .I5(\bank_reg[3] [7]),
        .O(\bank[5][7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \bank[6][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[6][7]_i_4_n_0 ),
        .O(\bank[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[6][1]_i_1 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[6][7]_i_4_n_0 ),
        .I3(D[1]),
        .O(\bank[6][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[6][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[6][7]_i_4_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[6][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[6][7]_i_4_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[6][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[6][7]_i_4_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \bank[6][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[6][7]_i_4_n_0 ),
        .O(\bank[6][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[6][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[6][7]_i_4_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \bank[6][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[6][7]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[6][7]_i_2 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[6][7]_i_4_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bank[6][7]_i_3 
       (.I0(Q[4]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .O(\bank[6][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \bank[6][7]_i_4 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\bank[6][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \bank[7][0]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .O(\bank[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[7][1]_i_1 
       (.I0(reg_b),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(D[1]),
        .O(\bank[7][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[7][2]_i_1 
       (.I0(D[2]),
        .I1(\bank[7][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[7][3]_i_1 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[7][4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[7][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \bank[7][5]_i_1 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(D[5]),
        .I2(\bank[7][7]_i_3_n_0 ),
        .O(\bank[7][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[7][6]_i_1 
       (.I0(D[6]),
        .I1(\bank[7][7]_i_3_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \bank[7][7]_i_1 
       (.I0(\bank[2][7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\bank[6][7]_i_3_n_0 ),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[7][7]_i_2 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[7][7]_i_3_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .O(\bank[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \bank[7][7]_i_3 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[4]),
        .O(\bank[7][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B8FFB8FF)) 
    \bank[8][0]_i_1 
       (.I0(\bank[8][0]_i_2_n_0 ),
        .I1(\bank[8][0]_i_3_n_0 ),
        .I2(flags[0]),
        .I3(\bank[8][7]_i_5_n_0 ),
        .I4(\bank[8][0]_i_4_n_0 ),
        .I5(\bank[8][0]_i_5_n_0 ),
        .O(\bank[8][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \bank[8][0]_i_10 
       (.I0(Q[9]),
        .I1(\bank[8][0]_i_7_0 [3]),
        .I2(Q[10]),
        .O(\bank[8][0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hCC5C5C5C)) 
    \bank[8][0]_i_11 
       (.I0(\bank[8][0]_i_7_0 [2]),
        .I1(\bank[8][0]_i_14_n_0 ),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(\bank[8][0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \bank[8][0]_i_12 
       (.I0(\bank[2][6]_i_17_n_0 ),
        .I1(\bank[2][6]_i_20_n_0 ),
        .I2(\bank[2][6]_i_23_n_0 ),
        .I3(Q[5]),
        .I4(\bank[8][0]_i_15_n_0 ),
        .O(\bank[8][0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5353535C0C0C0CCF)) 
    \bank[8][0]_i_13 
       (.I0(\bank_reg[2][3]_i_19_n_7 ),
        .I1(\store_register[0]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(\bank[8][0]_i_16_n_0 ),
        .I4(\bank[8][0]_i_17_n_0 ),
        .I5(Q[9]),
        .O(\instruction_reg_reg[9] ));
  LUT6 #(
    .INIT(64'h2A252A252A25257F)) 
    \bank[8][0]_i_14 
       (.I0(Q[9]),
        .I1(\bank_reg[2][7]_i_30_n_5 ),
        .I2(Q[8]),
        .I3(D[6]),
        .I4(\bank[8][0]_i_18_n_0 ),
        .I5(\bank[8][0]_i_19_n_0 ),
        .O(\bank[8][0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAACCAACC0F000FFF)) 
    \bank[8][0]_i_15 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[2][4]_i_2_n_0 ),
        .I2(D[5]),
        .I3(Q[3]),
        .I4(D[6]),
        .I5(Q[4]),
        .O(\bank[8][0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h3531353135313031)) 
    \bank[8][0]_i_16 
       (.I0(Q[6]),
        .I1(\store_register[3]_i_10_n_0 ),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[5]),
        .I4(\store_register[3]_i_15_n_0 ),
        .I5(\bank[8][0]_i_20_n_0 ),
        .O(\bank[8][0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \bank[8][0]_i_17 
       (.I0(\store_register[3]_i_11_n_0 ),
        .I1(\bank[8][0]_i_21_n_0 ),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank[8][0]_i_22_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\store_register[3]_i_7_n_0 ),
        .O(\bank[8][0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0151010101515151)) 
    \bank[8][0]_i_18 
       (.I0(\store_register[3]_i_11_n_0 ),
        .I1(\bank[2][6]_i_8_n_0 ),
        .I2(\bank[5][7]_i_3_n_0 ),
        .I3(\bank[8][0]_i_23_n_0 ),
        .I4(\bank[6][7]_i_3_n_0 ),
        .I5(\bank[8][0]_i_24_n_0 ),
        .O(\bank[8][0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE000000FE00)) 
    \bank[8][0]_i_19 
       (.I0(\bank[8][0]_i_25_n_0 ),
        .I1(\bank[2][6]_i_15_n_0 ),
        .I2(\bank[8][0]_i_26_n_0 ),
        .I3(\store_register[3]_i_11_n_0 ),
        .I4(\bank[5][7]_i_3_n_0 ),
        .I5(\bank[2][6]_i_5_n_0 ),
        .O(\bank[8][0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \bank[8][0]_i_2 
       (.I0(\bank[8][0]_i_6_n_0 ),
        .I1(\bank[2][3]_i_9_n_0 ),
        .I2(\bank[2][2]_i_9_n_0 ),
        .I3(\bank[8][0]_i_7_n_0 ),
        .I4(\bank[2][5]_i_9_n_0 ),
        .I5(\bank[2][4]_i_14_n_0 ),
        .O(\bank[8][0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0C080008)) 
    \bank[8][0]_i_20 
       (.I0(\bank_reg[6] [0]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\bank_reg[7] [0]),
        .O(\bank[8][0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h08FB)) 
    \bank[8][0]_i_21 
       (.I0(\bank_reg[9]__0 [0]),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(flags[0]),
        .O(\bank[8][0]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bank[8][0]_i_22 
       (.I0(\bank_reg[10] [0]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank_reg[11] [0]),
        .O(\bank[8][0]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4575)) 
    \bank[8][0]_i_23 
       (.I0(\bank_reg[6] [6]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank_reg[7] [6]),
        .O(\bank[8][0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \bank[8][0]_i_24 
       (.I0(\bank_reg[4] [6]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(\bank_reg[5] [6]),
        .O(\bank[8][0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0E0A0A0A)) 
    \bank[8][0]_i_25 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(\bank_reg[11] [6]),
        .O(\bank[8][0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h04000004)) 
    \bank[8][0]_i_26 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(\store_register[6]_i_5_n_0 ),
        .I4(\bank_reg[9]_0 [6]),
        .O(\bank[8][0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \bank[8][0]_i_3 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(Q[7]),
        .I3(flags[7]),
        .I4(Q[12]),
        .I5(Q[11]),
        .O(\bank[8][0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \bank[8][0]_i_4 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\store_register[3]_i_3_n_0 ),
        .I2(\bank[8][7]_i_9_n_0 ),
        .I3(\store_register[0]_i_2_n_0 ),
        .O(\bank[8][0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABBBABABABB)) 
    \bank[8][0]_i_5 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank[2][0]_i_4_n_0 ),
        .I2(\bank[2][6]_i_9_n_0 ),
        .I3(Q[3]),
        .I4(\bank[8][0]_i_3_n_0 ),
        .I5(\bank[2][0]_i_3_n_0 ),
        .O(\bank[8][0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FBBFFFFFFBBFF)) 
    \bank[8][0]_i_6 
       (.I0(\bank[2][1]_i_14_n_0 ),
        .I1(\bank[8][0]_i_2_0 ),
        .I2(\bank[2][1]_i_13_n_0 ),
        .I3(\bank[8][0]_i_2_1 ),
        .I4(\bank[2][6]_i_19_n_0 ),
        .I5(\bank[2][0]_i_5_n_0 ),
        .O(\bank[8][0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2F2F22FFFFFF22FF)) 
    \bank[8][0]_i_7 
       (.I0(\bank[2][7]_i_24_n_0 ),
        .I1(\bank[8][0]_i_10_n_0 ),
        .I2(\bank[2][7]_i_23_n_0 ),
        .I3(\bank[8][0]_i_11_n_0 ),
        .I4(\bank[2][6]_i_19_n_0 ),
        .I5(\bank[8][0]_i_12_n_0 ),
        .O(\bank[8][0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAFE)) 
    \bank[8][1]_i_1 
       (.I0(\bank[8][1]_i_2_n_0 ),
        .I1(\bank[8][1]_i_3_n_0 ),
        .I2(\bank[2][1]_i_3_n_0 ),
        .I3(\bank[8][1]_i_4_n_0 ),
        .I4(\bank[8][1]_i_5_n_0 ),
        .O(\bank[8][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \bank[8][1]_i_2 
       (.I0(\bank[8][7]_i_5_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(D[1]),
        .I3(\bank[8][7]_i_9_n_0 ),
        .I4(reg_b),
        .O(\bank[8][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    \bank[8][1]_i_3 
       (.I0(data_load0[1]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(io_load[1]),
        .I4(\bank[2][2]_i_12_n_0 ),
        .O(\bank[8][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \bank[8][1]_i_4 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(reg_b),
        .I2(\bank[2][7]_i_7_n_0 ),
        .O(\bank[8][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF900F9000000F900)) 
    \bank[8][1]_i_5 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .I1(\bank[2][7]_i_16_n_0 ),
        .I2(\bank[8][1]_i_6_n_0 ),
        .I3(\bank[8][7]_i_5_n_0 ),
        .I4(flags[1]),
        .I5(\bank[8][0]_i_3_n_0 ),
        .O(\bank[8][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFFFCFFF7F7FFF)) 
    \bank[8][1]_i_6 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(\bank[8][0]_i_3_n_0 ),
        .I3(\bank[5][7]_i_6_n_0 ),
        .I4(\bank_reg[14][7]_0 [4]),
        .I5(Q[10]),
        .O(\bank[8][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7747774777477444)) 
    \bank[8][2]_i_1 
       (.I0(\bank[8][2]_i_2_n_0 ),
        .I1(\bank[8][7]_i_5_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[8][2]_i_3_n_0 ),
        .I4(\bank[2][2]_i_4_n_0 ),
        .I5(\bank[2][2]_i_3_n_0 ),
        .O(\bank[8][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \bank[8][2]_i_2 
       (.I0(\bank[2][7]_i_16_n_0 ),
        .I1(\bank[8][0]_i_3_n_0 ),
        .I2(flags[2]),
        .O(\bank[8][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][2]_i_3 
       (.I0(D[2]),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[8][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \bank[8][3]_i_1 
       (.I0(\bank[8][3]_i_2_n_0 ),
        .I1(\bank[8][7]_i_5_n_0 ),
        .I2(\bank[8][3]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][3]_i_3_n_0 ),
        .I5(\bank[2][3]_i_4_n_0 ),
        .O(\bank[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABAFFFFAABA0000)) 
    \bank[8][3]_i_2 
       (.I0(\bank[8][3]_i_4_n_0 ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(\bank_reg[8][3]_i_5_n_3 ),
        .I4(\bank[8][0]_i_3_n_0 ),
        .I5(flags[3]),
        .O(\bank[8][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[8][3]_i_3 
       (.I0(\store_register[3]_i_6_n_0 ),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .O(\bank[8][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAE0000000000)) 
    \bank[8][3]_i_4 
       (.I0(\bank[8][3]_i_6_n_0 ),
        .I1(Q[5]),
        .I2(\bank[8][3]_i_7_n_0 ),
        .I3(Q[10]),
        .I4(\bank_reg[8][3]_i_8_n_3 ),
        .I5(\bank[8][3]_i_9_n_0 ),
        .O(\bank[8][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h33BB333333BB33F3)) 
    \bank[8][3]_i_6 
       (.I0(\bank[2][6]_i_25_n_0 ),
        .I1(Q[10]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(\bank[5][7]_i_6_n_0 ),
        .O(\bank[8][3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \bank[8][3]_i_7 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(Q[4]),
        .I3(\store_register[3]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\bank[2][4]_i_2_n_0 ),
        .O(\bank[8][3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bank[8][3]_i_9 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\bank[8][3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000DDD8DDD8)) 
    \bank[8][4]_i_1 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank[8][4]_i_2_n_0 ),
        .I2(\bank[2][4]_i_5_n_0 ),
        .I3(\bank[2][4]_i_4_n_0 ),
        .I4(\bank_reg_n_0_[8][4] ),
        .I5(\bank[8][7]_i_5_n_0 ),
        .O(\bank[8][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bank[8][4]_i_2 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank_reg[14][7]_0 [2]),
        .O(\bank[8][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8B8B8B8BBBBBBB88)) 
    \bank[8][5]_i_1 
       (.I0(\bank_reg_n_0_[8][5] ),
        .I1(\bank[8][7]_i_5_n_0 ),
        .I2(\bank[8][5]_i_2_n_0 ),
        .I3(\bank[2][5]_i_3_n_0 ),
        .I4(\bank[2][5]_i_4_n_0 ),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[8][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][5]_i_2 
       (.I0(a_sub_b_carry__0_i_7_n_0),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank[2][5]_i_2_n_0 ),
        .O(\bank[8][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8BBBBBB88)) 
    \bank[8][6]_i_1 
       (.I0(\bank_reg_n_0_[8][6] ),
        .I1(\bank[8][7]_i_5_n_0 ),
        .I2(\bank[8][6]_i_2_n_0 ),
        .I3(\bank[2][6]_i_3_n_0 ),
        .I4(\bank[2][6]_i_4_n_0 ),
        .I5(\bank[2][7]_i_4_n_0 ),
        .O(\bank[8][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[8][6]_i_2 
       (.I0(D[6]),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank_reg[14][7]_0 [3]),
        .O(\bank[8][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAEAA)) 
    \bank[8][7]_i_1 
       (.I0(\bank[8][7]_i_3_n_0 ),
        .I1(Q[13]),
        .I2(Q[14]),
        .I3(Q[12]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(Q[11]),
        .O(\bank[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000070077777)) 
    \bank[8][7]_i_10 
       (.I0(Q[5]),
        .I1(flags[2]),
        .I2(flags[0]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\bank[8][7]_i_11_n_0 ),
        .O(\bank[8][7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2828FF28FF282828)) 
    \bank[8][7]_i_11 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(flags[3]),
        .I3(Q[4]),
        .I4(Q[1]),
        .I5(flags[1]),
        .O(\bank[8][7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB8B8B8B88)) 
    \bank[8][7]_i_2 
       (.I0(\bank[8][7]_i_4_n_0 ),
        .I1(\bank[8][7]_i_5_n_0 ),
        .I2(\bank[8][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_8_n_0 ),
        .I4(\bank[8][7]_i_7_n_0 ),
        .I5(\bank[8][7]_i_8_n_0 ),
        .O(\bank[8][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCF88888888888888)) 
    \bank[8][7]_i_3 
       (.I0(\bank[8][7]_i_9_n_0 ),
        .I1(\bank[2][7]_i_3_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\store_register[2]_i_3_n_0 ),
        .I4(\bank[3][7]_i_4_n_0 ),
        .I5(\store_register[2]_i_5_n_0 ),
        .O(\bank[8][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAEE4455FAEE4400)) 
    \bank[8][7]_i_4 
       (.I0(\bank[8][0]_i_3_n_0 ),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(\bank[8][7]_i_10_n_0 ),
        .I4(flags[7]),
        .I5(Q[8]),
        .O(\bank[8][7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020020)) 
    \bank[8][7]_i_5 
       (.I0(Q[13]),
        .I1(Q[14]),
        .I2(Q[12]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[11]),
        .I5(\bank[8][7]_i_3_n_0 ),
        .O(\bank[8][7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \bank[8][7]_i_6 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\bank_reg[14][7]_0 [4]),
        .I2(\bank[2][7]_i_7_n_0 ),
        .O(\bank[8][7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF0F8F8)) 
    \bank[8][7]_i_7 
       (.I0(data_load0[7]),
        .I1(\bank[2][7]_i_19_n_0 ),
        .I2(\bank[2][7]_i_7_n_0 ),
        .I3(io_load[7]),
        .I4(\bank[2][7]_i_20_n_0 ),
        .I5(\bank[2][7]_i_15_n_0 ),
        .O(\bank[8][7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    \bank[8][7]_i_8 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[8][7]_i_9_n_0 ),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .O(\bank[8][7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \bank[8][7]_i_9 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[3]),
        .O(\bank[8][7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h47774744)) 
    \bank[9][0]_i_1 
       (.I0(\bank_reg[9]__0 [0]),
        .I1(\bank[9][7]_i_3_n_0 ),
        .I2(\bank[9][0]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][0]_i_2_n_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][0]_i_2 
       (.I0(\store_register[0]_i_2_n_0 ),
        .I1(\bank[9][7]_i_5_n_0 ),
        .I2(\store_register[3]_i_3_n_0 ),
        .O(\bank[9][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000AAFEAAFE)) 
    \bank[9][1]_i_1 
       (.I0(\bank[9][1]_i_2_n_0 ),
        .I1(\bank[8][1]_i_3_n_0 ),
        .I2(\bank[2][1]_i_3_n_0 ),
        .I3(\bank[8][1]_i_4_n_0 ),
        .I4(\bank[9][1]_i_3_n_0 ),
        .I5(\bank[9][7]_i_3_n_0 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \bank[9][1]_i_2 
       (.I0(reg_b),
        .I1(\bank[9][7]_i_5_n_0 ),
        .I2(D[1]),
        .I3(\bank[2][7]_i_4_n_0 ),
        .O(\bank[9][1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bank[9][1]_i_3 
       (.I0(\bank_reg[9]__0 [0]),
        .I1(\bank_reg[9]__0 [1]),
        .O(\bank[9][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7747774777477444)) 
    \bank[9][2]_i_1 
       (.I0(\bank[9][2]_i_2_n_0 ),
        .I1(\bank[9][7]_i_3_n_0 ),
        .I2(\bank[2][7]_i_4_n_0 ),
        .I3(\bank[9][2]_i_3_n_0 ),
        .I4(\bank[2][2]_i_4_n_0 ),
        .I5(\bank[2][2]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'h95)) 
    \bank[9][2]_i_2 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(\bank_reg[9]__0 [1]),
        .I2(\bank_reg[9]__0 [0]),
        .O(\bank[9][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bank[9][2]_i_3 
       (.I0(D[2]),
        .I1(\bank[9][7]_i_5_n_0 ),
        .I2(\bank_reg[14][7]_0 [0]),
        .O(\bank[9][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500FCFFFF)) 
    \bank[9][3]_i_1 
       (.I0(\bank[9][3]_i_2_n_0 ),
        .I1(\bank[2][3]_i_4_n_0 ),
        .I2(\bank[2][3]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[9][3]_i_3_n_0 ),
        .I5(\bank[9][7]_i_3_n_0 ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \bank[9][3]_i_2 
       (.I0(\bank_reg[9]_0 [3]),
        .I1(\bank_reg[9]_0 [2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .O(\bank[9][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hDD5F)) 
    \bank[9][3]_i_3 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(\store_register[3]_i_6_n_0 ),
        .I2(\bank_reg[14][7]_0 [1]),
        .I3(\bank[9][7]_i_5_n_0 ),
        .O(\bank[9][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFAAFEAAFE)) 
    \bank[9][4]_i_1 
       (.I0(\bank[9][4]_i_2_n_0 ),
        .I1(\bank[2][4]_i_5_n_0 ),
        .I2(\bank[2][4]_i_4_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[9][4]_i_3_n_0 ),
        .I5(\bank[9][7]_i_3_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h08C8)) 
    \bank[9][4]_i_2 
       (.I0(\bank_reg[14][7]_0 [2]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[9][7]_i_5_n_0 ),
        .I3(\bank[2][4]_i_2_n_0 ),
        .O(\bank[9][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h95555555)) 
    \bank[9][4]_i_3 
       (.I0(\bank_reg[9]_0 [4]),
        .I1(\bank_reg[9]__0 [1]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]_0 [2]),
        .I4(\bank_reg[9]_0 [3]),
        .O(\bank[9][4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7477747774777474)) 
    \bank[9][5]_i_1 
       (.I0(\bank[9][5]_i_2_n_0 ),
        .I1(\bank[9][7]_i_3_n_0 ),
        .I2(\bank[9][5]_i_3_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][5]_i_4_n_0 ),
        .I5(\bank[2][5]_i_3_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h9555555555555555)) 
    \bank[9][5]_i_2 
       (.I0(\bank_reg[9]_0 [5]),
        .I1(\bank_reg[9]_0 [3]),
        .I2(\bank_reg[9]_0 [2]),
        .I3(\bank_reg[9]__0 [0]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]_0 [4]),
        .O(\bank[9][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h04C4)) 
    \bank[9][5]_i_3 
       (.I0(\bank[2][5]_i_2_n_0 ),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[9][7]_i_5_n_0 ),
        .I3(a_sub_b_carry__0_i_7_n_0),
        .O(\bank[9][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7477747774777474)) 
    \bank[9][6]_i_1 
       (.I0(\store_register[6]_i_4_n_0 ),
        .I1(\bank[9][7]_i_3_n_0 ),
        .I2(\bank[9][6]_i_2_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .I4(\bank[2][6]_i_4_n_0 ),
        .I5(\bank[2][6]_i_3_n_0 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hC808)) 
    \bank[9][6]_i_2 
       (.I0(\bank_reg[14][7]_0 [3]),
        .I1(\bank[2][7]_i_4_n_0 ),
        .I2(\bank[9][7]_i_5_n_0 ),
        .I3(D[6]),
        .O(\bank[9][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7474747477777774)) 
    \bank[9][7]_i_1 
       (.I0(\bank[9][7]_i_2_n_0 ),
        .I1(\bank[9][7]_i_3_n_0 ),
        .I2(\bank[9][7]_i_4_n_0 ),
        .I3(\bank[8][7]_i_7_n_0 ),
        .I4(\bank[2][7]_i_8_n_0 ),
        .I5(\bank[8][7]_i_6_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h59)) 
    \bank[9][7]_i_2 
       (.I0(\bank_reg[9]_0 [7]),
        .I1(\bank_reg[9]_0 [6]),
        .I2(\store_register[6]_i_5_n_0 ),
        .O(\bank[9][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCFFFEFFFEFF)) 
    \bank[9][7]_i_3 
       (.I0(\bank[2][7]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\bank[3][7]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(\bank[9][7]_i_5_n_0 ),
        .I5(\bank[2][7]_i_3_n_0 ),
        .O(\bank[9][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    \bank[9][7]_i_4 
       (.I0(\bank_reg[14][7]_0 [4]),
        .I1(\bank[9][7]_i_5_n_0 ),
        .I2(\bank[5][7]_i_6_n_0 ),
        .I3(\bank[2][7]_i_4_n_0 ),
        .O(\bank[9][7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \bank[9][7]_i_5 
       (.I0(Q[4]),
        .I1(\bank[5][7]_i_4_n_0 ),
        .I2(Q[6]),
        .I3(\bank[5][7]_i_3_n_0 ),
        .O(\bank[9][7]_i_5_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][0] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][0]_i_1_n_0 ),
        .Q(\bank_reg[10] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][1] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][1]_i_1_n_0 ),
        .Q(\bank_reg[10] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][2] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][2]_i_1_n_0 ),
        .Q(\bank_reg[10] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][3] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][3]_i_1_n_0 ),
        .Q(\bank_reg[10] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][4] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][4]_i_1_n_0 ),
        .Q(\bank_reg[10] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][5] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][5]_i_1_n_0 ),
        .Q(\bank_reg[10] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][6] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][6]_i_1_n_0 ),
        .Q(\bank_reg[10] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[10][7] 
       (.C(sysclk),
        .CE(\bank[10][7]_i_1_n_0 ),
        .D(\bank[10][7]_i_2_n_0 ),
        .Q(\bank_reg[10] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][0] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][0]_i_1_n_0 ),
        .Q(\bank_reg[11] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][1] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][1]_i_1_n_0 ),
        .Q(\bank_reg[11] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][2] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][2]_i_1_n_0 ),
        .Q(\bank_reg[11] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][3] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][3]_i_1_n_0 ),
        .Q(\bank_reg[11] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][4] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][4]_i_1_n_0 ),
        .Q(\bank_reg[11] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][5] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][5]_i_1_n_0 ),
        .Q(\bank_reg[11] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][6] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][6]_i_1_n_0 ),
        .Q(\bank_reg[11] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[11][7] 
       (.C(sysclk),
        .CE(\bank[11][7]_i_1_n_0 ),
        .D(\bank[11][7]_i_2_n_0 ),
        .Q(\bank_reg[11] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][0] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][0]_i_1_n_0 ),
        .Q(instruction_addr0[2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][1] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][1]_i_1_n_0 ),
        .Q(instruction_addr0[3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][2] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][2]_i_1_n_0 ),
        .Q(instruction_addr0[4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][3] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][3]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[12][3] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][4] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][4]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[12][4] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][5] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][5]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[12][5] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][6] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][6]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[12][6] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[12][7] 
       (.C(sysclk),
        .CE(\bank[12][7]_i_1_n_0 ),
        .D(\bank[12][7]_i_2_n_0 ),
        .Q(\bank_reg_n_0_[12][7] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][0] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][0]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][1] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][1]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][2] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][2]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][3] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][3]_i_1_n_0 ),
        .Q(addr1[5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][4] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][4]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][5] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][5]_i_1_n_0 ),
        .Q(\bank_reg[13][5]_0 [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][6] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][6]_i_1_n_0 ),
        .Q(addr1[8]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[13][7] 
       (.C(sysclk),
        .CE(\bank[13][7]_i_1_n_0 ),
        .D(\bank[13][7]_i_2_n_0 ),
        .Q(addr1[9]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][0] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][0]_i_1_n_0 ),
        .Q(\bank_reg[14] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][1] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][1]_i_1_n_0 ),
        .Q(\bank_reg[14] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][2] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][2]_i_1_n_0 ),
        .Q(\bank_reg[14] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][3] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][3]_i_1_n_0 ),
        .Q(\bank_reg[14] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][4] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][4]_i_1_n_0 ),
        .Q(\bank_reg[14] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][5] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][5]_i_1_n_0 ),
        .Q(\bank_reg[14] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][6] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][6]_i_1_n_0 ),
        .Q(\bank_reg[14] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[14][7] 
       (.C(sysclk),
        .CE(\bank[14][7]_i_1_n_0 ),
        .D(\bank[14][7]_i_2_n_0 ),
        .Q(\bank_reg[14] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][0] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][0]_i_1_n_0 ),
        .Q(\bank_reg[1] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][1] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][1]_i_1_n_0 ),
        .Q(\bank_reg[1] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][2] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][2]_i_1_n_0 ),
        .Q(\bank_reg[1] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][3] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][3]_i_1_n_0 ),
        .Q(\bank_reg[1] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][4] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][4]_i_1_n_0 ),
        .Q(\bank_reg[1] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][5] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][5]_i_1_n_0 ),
        .Q(\bank_reg[1] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][6] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][6]_i_1_n_0 ),
        .Q(\bank_reg[1] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[1][7] 
       (.C(sysclk),
        .CE(bank),
        .D(\bank[1][7]_i_2_n_0 ),
        .Q(\bank_reg[1] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][0] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][0]_i_1_n_0 ),
        .Q(\bank_reg[2] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][1] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][1]_i_1_n_0 ),
        .Q(\bank_reg[2] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][2] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][2]_i_1_n_0 ),
        .Q(\bank_reg[2] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][3] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][3]_i_1_n_0 ),
        .Q(\bank_reg[2] [3]),
        .R(\bank_reg[9][0]_0 ));
  CARRY4 \bank_reg[2][3]_i_19 
       (.CI(1'b0),
        .CO({\bank_reg[2][3]_i_19_n_0 ,\bank_reg[2][3]_i_19_n_1 ,\bank_reg[2][3]_i_19_n_2 ,\bank_reg[2][3]_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({\bank[2][3]_i_20_n_0 ,D[2:0]}),
        .O({\bank_reg[2][3]_i_19_n_4 ,\bank_reg[2][3]_i_19_n_5 ,\bank_reg[2][3]_i_19_n_6 ,\bank_reg[2][3]_i_19_n_7 }),
        .S({\bank[2][3]_i_21_n_0 ,\bank[2][3]_i_22_n_0 ,\bank[2][3]_i_23_n_0 ,\bank[2][3]_i_24_n_0 }));
  MUXF7 \bank_reg[2][3]_i_25 
       (.I0(\bank[2][2]_i_8_n_0 ),
        .I1(\bank[2][2]_i_7_n_0 ),
        .O(\bank_reg[2][3]_i_25_n_0 ),
        .S(\bank[5][7]_i_3_n_0 ));
  MUXF7 \bank_reg[2][3]_i_26 
       (.I0(\bank[2][1]_i_9_n_0 ),
        .I1(\bank[2][1]_i_8_n_0 ),
        .O(\bank_reg[2][3]_i_26_n_0 ),
        .S(\bank[5][7]_i_3_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][4] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][4]_i_1_n_0 ),
        .Q(\bank_reg[2] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][5] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][5]_i_1_n_0 ),
        .Q(\bank_reg[2] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][6] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][6]_i_1_n_0 ),
        .Q(\bank_reg[2] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[2][7] 
       (.C(sysclk),
        .CE(\bank[2][7]_i_1_n_0 ),
        .D(\bank[2][7]_i_2_n_0 ),
        .Q(\bank_reg[2] [7]),
        .R(\bank_reg[9][0]_0 ));
  CARRY4 \bank_reg[2][7]_i_30 
       (.CI(\bank_reg[2][3]_i_19_n_0 ),
        .CO({\bank_reg[2][7]_i_30_n_0 ,\bank_reg[2][7]_i_30_n_1 ,\bank_reg[2][7]_i_30_n_2 ,\bank_reg[2][7]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({D[7:5],\bank[2][7]_i_31_n_0 }),
        .O({\bank_reg[2][7]_i_30_n_4 ,\bank_reg[2][7]_i_30_n_5 ,\bank_reg[2][7]_i_30_n_6 ,\bank_reg[2][7]_i_30_n_7 }),
        .S({\bank[2][7]_i_32_n_0 ,\bank[2][7]_i_33_n_0 ,\bank[2][7]_i_34_n_0 ,\bank[2][7]_i_35_n_0 }));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][0] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][0]_i_1_n_0 ),
        .Q(\bank_reg[3] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][1] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][1]_i_1_n_0 ),
        .Q(\bank_reg[3] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][2] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][2]_i_1_n_0 ),
        .Q(\bank_reg[3] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][3] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][3]_i_1_n_0 ),
        .Q(\bank_reg[3] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][4] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][4]_i_1_n_0 ),
        .Q(\bank_reg[3] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][5] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][5]_i_1_n_0 ),
        .Q(\bank_reg[3] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][6] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][6]_i_1_n_0 ),
        .Q(\bank_reg[3] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[3][7] 
       (.C(sysclk),
        .CE(\bank[3][7]_i_1_n_0 ),
        .D(\bank[3][7]_i_2_n_0 ),
        .Q(\bank_reg[3] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][0] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][0]_i_1_n_0 ),
        .Q(\bank_reg[4] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][1] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][1]_i_1_n_0 ),
        .Q(\bank_reg[4] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][2] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][2]_i_1_n_0 ),
        .Q(\bank_reg[4] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][3] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][3]_i_1_n_0 ),
        .Q(\bank_reg[4] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][4] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][4]_i_1_n_0 ),
        .Q(\bank_reg[4] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][5] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][5]_i_1_n_0 ),
        .Q(\bank_reg[4] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][6] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][6]_i_1_n_0 ),
        .Q(\bank_reg[4] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[4][7] 
       (.C(sysclk),
        .CE(\bank[4][7]_i_1_n_0 ),
        .D(\bank[4][7]_i_2_n_0 ),
        .Q(\bank_reg[4] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][0] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][0]_i_1_n_0 ),
        .Q(\bank_reg[5] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][1] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][1]_i_1_n_0 ),
        .Q(\bank_reg[5] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][2] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][2]_i_1_n_0 ),
        .Q(\bank_reg[5] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][3] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][3]_i_1_n_0 ),
        .Q(\bank_reg[5] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][4] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][4]_i_1_n_0 ),
        .Q(\bank_reg[5] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][5] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][5]_i_1_n_0 ),
        .Q(\bank_reg[5] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][6] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][6]_i_1_n_0 ),
        .Q(\bank_reg[5] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[5][7] 
       (.C(sysclk),
        .CE(\bank[5][7]_i_1_n_0 ),
        .D(\bank[5][7]_i_2_n_0 ),
        .Q(\bank_reg[5] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][0] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][0]_i_1_n_0 ),
        .Q(\bank_reg[6] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][1] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][1]_i_1_n_0 ),
        .Q(\bank_reg[6] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][2] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][2]_i_1_n_0 ),
        .Q(\bank_reg[6] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][3] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][3]_i_1_n_0 ),
        .Q(\bank_reg[6] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][4] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][4]_i_1_n_0 ),
        .Q(\bank_reg[6] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][5] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][5]_i_1_n_0 ),
        .Q(\bank_reg[6] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][6] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][6]_i_1_n_0 ),
        .Q(\bank_reg[6] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[6][7] 
       (.C(sysclk),
        .CE(\bank[6][7]_i_1_n_0 ),
        .D(\bank[6][7]_i_2_n_0 ),
        .Q(\bank_reg[6] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][0] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][0]_i_1_n_0 ),
        .Q(\bank_reg[7] [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][1] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][1]_i_1_n_0 ),
        .Q(\bank_reg[7] [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][2] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][2]_i_1_n_0 ),
        .Q(\bank_reg[7] [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][3] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][3]_i_1_n_0 ),
        .Q(\bank_reg[7] [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][4] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][4]_i_1_n_0 ),
        .Q(\bank_reg[7] [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][5] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][5]_i_1_n_0 ),
        .Q(\bank_reg[7] [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][6] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][6]_i_1_n_0 ),
        .Q(\bank_reg[7] [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[7][7] 
       (.C(sysclk),
        .CE(\bank[7][7]_i_1_n_0 ),
        .D(\bank[7][7]_i_2_n_0 ),
        .Q(\bank_reg[7] [7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][0] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][0]_i_1_n_0 ),
        .Q(flags[0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][1] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][1]_i_1_n_0 ),
        .Q(flags[1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][2] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][2]_i_1_n_0 ),
        .Q(flags[2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][3] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][3]_i_1_n_0 ),
        .Q(flags[3]),
        .R(\bank_reg[9][0]_0 ));
  CARRY4 \bank_reg[8][3]_i_5 
       (.CI(CO),
        .CO({\NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED [3:1],\bank_reg[8][3]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bank_reg[8][3]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \bank_reg[8][3]_i_8 
       (.CI(\bank_reg[2][7]_i_30_n_0 ),
        .CO({\NLW_bank_reg[8][3]_i_8_CO_UNCONNECTED [3:1],\bank_reg[8][3]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_bank_reg[8][3]_i_8_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][4] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][4]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][4] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][5] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][5]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][5] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][6] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][6]_i_1_n_0 ),
        .Q(\bank_reg_n_0_[8][6] ),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[8][7] 
       (.C(sysclk),
        .CE(\bank[8][7]_i_1_n_0 ),
        .D(\bank[8][7]_i_2_n_0 ),
        .Q(flags[7]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][0] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(\bank_reg[9]__0 [0]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][1] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(\bank_reg[9]__0 [1]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][2] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(\bank_reg[9]_0 [2]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][3] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(\bank_reg[9]_0 [3]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][4] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(\bank_reg[9]_0 [4]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][5] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(\bank_reg[9]_0 [5]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][6] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(\bank_reg[9]_0 [6]),
        .R(\bank_reg[9][0]_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \bank_reg[9][7] 
       (.C(sysclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(\bank_reg[9]_0 [7]),
        .R(\bank_reg[9][0]_0 ));
  LUT6 #(
    .INIT(64'h00000009FF696F6F)) 
    \instruction_reg[0]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[3]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [0]));
  LUT6 #(
    .INIT(64'h0000000069F0F90F)) 
    \instruction_reg[10]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[3]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [9]));
  LUT6 #(
    .INIT(64'h00000000099F9066)) 
    \instruction_reg[11]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(sel[3]),
        .I3(\bank_reg[9]__0 [0]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [10]));
  LUT6 #(
    .INIT(64'h00000F9F00099F96)) 
    \instruction_reg[12]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[4]),
        .I5(sel[3]),
        .O(\bank_reg[9][2]_0 [11]));
  LUT6 #(
    .INIT(64'h00000009FF6969FF)) 
    \instruction_reg[13]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[3]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [12]));
  LUT6 #(
    .INIT(64'h00000009F6FFFFF9)) 
    \instruction_reg[14]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[3]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [13]));
  LUT4 #(
    .INIT(16'h8778)) 
    \instruction_reg[14]_i_2 
       (.I0(instruction_addr0[2]),
        .I1(\bank_reg[9]_0 [2]),
        .I2(instruction_addr0[3]),
        .I3(\bank_reg[9]_0 [3]),
        .O(sel[3]));
  LUT6 #(
    .INIT(64'h0000000000C32828)) 
    \instruction_reg[15]_i_1 
       (.I0(\instruction_reg[15]_i_2_n_0 ),
        .I1(\bank_reg[9]_0 [2]),
        .I2(instruction_addr0[2]),
        .I3(sel[4]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\bank_reg[9][2]_0 [14]));
  LUT6 #(
    .INIT(64'h0666600060000999)) 
    \instruction_reg[15]_i_2 
       (.I0(\bank_reg[9]_0 [4]),
        .I1(instruction_addr0[4]),
        .I2(\bank_reg[9]_0 [2]),
        .I3(instruction_addr0[2]),
        .I4(\bank_reg[9]_0 [3]),
        .I5(instruction_addr0[3]),
        .O(\instruction_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \instruction_reg[15]_i_3 
       (.I0(instruction_addr0[3]),
        .I1(\bank_reg[9]_0 [3]),
        .I2(instruction_addr0[2]),
        .I3(\bank_reg[9]_0 [2]),
        .I4(instruction_addr0[4]),
        .I5(\bank_reg[9]_0 [4]),
        .O(sel[4]));
  LUT6 #(
    .INIT(64'h00990000000000F6)) 
    \instruction_reg[1]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(sel[4]),
        .I4(sel[3]),
        .I5(\bank_reg[9]__0 [1]),
        .O(\bank_reg[9][2]_0 [1]));
  LUT6 #(
    .INIT(64'h0006006000690900)) 
    \instruction_reg[3]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [1]),
        .I3(sel[4]),
        .I4(sel[3]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\bank_reg[9][2]_0 [2]));
  LUT6 #(
    .INIT(64'h0000000090060FF9)) 
    \instruction_reg[4]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [1]),
        .I3(\bank_reg[9]__0 [0]),
        .I4(sel[3]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [3]));
  LUT6 #(
    .INIT(64'h0000FF6000096966)) 
    \instruction_reg[5]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(sel[4]),
        .I5(sel[3]),
        .O(\bank_reg[9][2]_0 [4]));
  LUT6 #(
    .INIT(64'h0000000009090906)) 
    \instruction_reg[6]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(sel[4]),
        .I3(sel[3]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\bank_reg[9][2]_0 [5]));
  LUT6 #(
    .INIT(64'h0000000000EB0014)) 
    \instruction_reg[7]_i_1 
       (.I0(sel[3]),
        .I1(\bank_reg[9]_0 [2]),
        .I2(instruction_addr0[2]),
        .I3(sel[4]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\bank_reg[9][2]_0 [6]));
  LUT6 #(
    .INIT(64'h0014002800C30014)) 
    \instruction_reg[8]_i_1 
       (.I0(sel[3]),
        .I1(\bank_reg[9]_0 [2]),
        .I2(instruction_addr0[2]),
        .I3(sel[4]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\bank_reg[9][2]_0 [7]));
  LUT6 #(
    .INIT(64'h00000000FF99F606)) 
    \instruction_reg[9]_i_1 
       (.I0(\bank_reg[9]_0 [2]),
        .I1(instruction_addr0[2]),
        .I2(sel[3]),
        .I3(\bank_reg[9]__0 [0]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(sel[4]),
        .O(\bank_reg[9][2]_0 [8]));
  LUT1 #(
    .INIT(2'h1)) 
    \store_register[0]_i_1 
       (.I0(\store_register[0]_i_2_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h0355)) 
    \store_register[0]_i_2 
       (.I0(\store_register[0]_i_3_n_0 ),
        .I1(\store_register[0]_i_4_n_0 ),
        .I2(\store_register[0]_i_5_n_0 ),
        .I3(\store_register[2]_i_3_n_0 ),
        .O(\store_register[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3232300002023000)) 
    \store_register[0]_i_3 
       (.I0(\bank_reg[1] [0]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\bank_reg[2] [0]),
        .I4(Q[0]),
        .I5(\bank_reg[3] [0]),
        .O(\store_register[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h008A0080)) 
    \store_register[0]_i_4 
       (.I0(Q[1]),
        .I1(\bank_reg[11] [0]),
        .I2(Q[0]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\bank_reg[10] [0]),
        .O(\store_register[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFF150010)) 
    \store_register[0]_i_5 
       (.I0(Q[1]),
        .I1(\bank_reg[9]__0 [0]),
        .I2(Q[0]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(flags[0]),
        .O(\store_register[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEEEFFFFFFFF)) 
    \store_register[1]_i_1 
       (.I0(\store_register[1]_i_2_n_0 ),
        .I1(\store_register[2]_i_3_n_0 ),
        .I2(\store_register[1]_i_3_n_0 ),
        .I3(\store_register[2]_i_5_n_0 ),
        .I4(\store_register[1]_i_4_n_0 ),
        .I5(\store_register[1]_i_5_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \store_register[1]_i_2 
       (.I0(\bank_reg[2] [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[2]),
        .O(\store_register[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h75454575)) 
    \store_register[1]_i_3 
       (.I0(flags[1]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(\bank_reg[9]__0 [0]),
        .O(\store_register[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \store_register[1]_i_4 
       (.I0(\bank_reg[10] [1]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[11] [1]),
        .O(\store_register[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBAFFFFFFBFFFFF)) 
    \store_register[1]_i_5 
       (.I0(Q[2]),
        .I1(\bank_reg[3] [1]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(\bank_reg[1] [1]),
        .O(\store_register[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAEEEFFFFFFFF)) 
    \store_register[2]_i_1 
       (.I0(\store_register[2]_i_2_n_0 ),
        .I1(\store_register[2]_i_3_n_0 ),
        .I2(\store_register[2]_i_4_n_0 ),
        .I3(\store_register[2]_i_5_n_0 ),
        .I4(\store_register[2]_i_6_n_0 ),
        .I5(\store_register[2]_i_7_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \store_register[2]_i_2 
       (.I0(\bank_reg[3] [2]),
        .I1(Q[0]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\store_register[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[2]_i_3 
       (.I0(Q[2]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .O(\store_register[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7545457545754575)) 
    \store_register[2]_i_4 
       (.I0(flags[2]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[9]_0 [2]),
        .I4(\bank_reg[9]__0 [1]),
        .I5(\bank_reg[9]__0 [0]),
        .O(\store_register[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \store_register[2]_i_5 
       (.I0(\bank[4][7]_i_3_n_0 ),
        .I1(Q[1]),
        .O(\store_register[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \store_register[2]_i_6 
       (.I0(\bank_reg[10] [2]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[11] [2]),
        .O(\store_register[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFBFFFFFFFBFF)) 
    \store_register[2]_i_7 
       (.I0(Q[2]),
        .I1(\bank_reg[2] [2]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[1] [2]),
        .O(\store_register[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000D100)) 
    \store_register[3]_i_1 
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[14]),
        .I2(Q[3]),
        .I3(\store_register[3]_i_4_n_0 ),
        .I4(\store_register[3]_i_5_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF305FFFFF3F5F)) 
    \store_register[3]_i_10 
       (.I0(\bank_reg[2] [0]),
        .I1(\bank_reg[3] [0]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(\bank_reg[1] [0]),
        .O(\store_register[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \store_register[3]_i_11 
       (.I0(Q[6]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .O(\store_register[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00C000A000A0)) 
    \store_register[3]_i_12 
       (.I0(\bank_reg[2] [3]),
        .I1(\bank_reg[3] [3]),
        .I2(Q[1]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\bank_reg[1] [3]),
        .I5(Q[0]),
        .O(\store_register[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h008A0080)) 
    \store_register[3]_i_13 
       (.I0(Q[1]),
        .I1(\bank_reg[11] [3]),
        .I2(Q[0]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(\bank_reg[10] [3]),
        .O(\store_register[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFF150010)) 
    \store_register[3]_i_14 
       (.I0(Q[1]),
        .I1(\bank[9][3]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\bank[4][7]_i_3_n_0 ),
        .I4(flags[3]),
        .O(\store_register[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0FB0008)) 
    \store_register[3]_i_15 
       (.I0(\bank_reg[5] [0]),
        .I1(Q[3]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[4]),
        .I4(\bank_reg[4] [0]),
        .O(\store_register[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \store_register[3]_i_2 
       (.I0(\store_register[3]_i_6_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \store_register[3]_i_3 
       (.I0(\store_register[3]_i_7_n_0 ),
        .I1(\store_register[3]_i_8_n_0 ),
        .I2(\store_register[3]_i_9_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\store_register[3]_i_10_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(\store_register[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF70000007700)) 
    \store_register[3]_i_4 
       (.I0(Q[7]),
        .I1(flags[7]),
        .I2(Q[12]),
        .I3(Q[11]),
        .I4(Q[14]),
        .I5(Q[13]),
        .O(\store_register[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5545FFFF)) 
    \store_register[3]_i_5 
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .O(\store_register[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0355)) 
    \store_register[3]_i_6 
       (.I0(\store_register[3]_i_12_n_0 ),
        .I1(\store_register[3]_i_13_n_0 ),
        .I2(\store_register[3]_i_14_n_0 ),
        .I3(\store_register[2]_i_3_n_0 ),
        .O(\store_register[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F004F703F304F7)) 
    \store_register[3]_i_7 
       (.I0(\bank_reg[14] [0]),
        .I1(Q[4]),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(instruction_addr0[2]),
        .I4(Q[3]),
        .I5(\bank_reg[13][5]_0 [0]),
        .O(\store_register[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h50503F305F5F3F30)) 
    \store_register[3]_i_8 
       (.I0(\bank_reg[10] [0]),
        .I1(\bank_reg[11] [0]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[9]__0 [0]),
        .I4(\bank[5][7]_i_4_n_0 ),
        .I5(flags[0]),
        .O(\store_register[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \store_register[3]_i_9 
       (.I0(\bank_reg[7] [0]),
        .I1(Q[3]),
        .I2(\bank[6][7]_i_3_n_0 ),
        .I3(\bank_reg[6] [0]),
        .I4(\store_register[3]_i_15_n_0 ),
        .O(\store_register[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \store_register[4]_i_1 
       (.I0(\bank[2][4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00020A02F5F7FFF7)) 
    \store_register[5]_i_1 
       (.I0(Q[2]),
        .I1(\store_register[5]_i_2_n_0 ),
        .I2(\bank[4][7]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\store_register[5]_i_3_n_0 ),
        .I5(\store_register[5]_i_4_n_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h7545)) 
    \store_register[5]_i_2 
       (.I0(\bank_reg_n_0_[8][5] ),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank[9][5]_i_2_n_0 ),
        .O(\store_register[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4575)) 
    \store_register[5]_i_3 
       (.I0(\bank_reg[10] [5]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(\bank_reg[11] [5]),
        .O(\store_register[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF503FFFFF5F3F)) 
    \store_register[5]_i_4 
       (.I0(\bank_reg[3] [5]),
        .I1(\bank_reg[2] [5]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(\bank_reg[1] [5]),
        .O(\store_register[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCFAAAAAAAA)) 
    \store_register[6]_i_1 
       (.I0(\store_register[6]_i_2_n_0 ),
        .I1(\store_register[6]_i_3_n_0 ),
        .I2(\store_register[6]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(\bank[3][7]_i_4_n_0 ),
        .I5(\store_register[2]_i_3_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h3232300002023000)) 
    \store_register[6]_i_2 
       (.I0(\bank_reg[1] [6]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(\bank_reg[2] [6]),
        .I4(Q[0]),
        .I5(\bank_reg[3] [6]),
        .O(\store_register[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC0AF0000C0A0)) 
    \store_register[6]_i_3 
       (.I0(\bank_reg[10] [6]),
        .I1(\bank_reg[11] [6]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\bank[4][7]_i_3_n_0 ),
        .I5(\bank_reg_n_0_[8][6] ),
        .O(\store_register[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \store_register[6]_i_4 
       (.I0(\bank_reg[9]_0 [6]),
        .I1(\store_register[6]_i_5_n_0 ),
        .O(\store_register[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \store_register[6]_i_5 
       (.I0(\bank_reg[9]_0 [3]),
        .I1(\bank_reg[9]_0 [2]),
        .I2(\bank_reg[9]__0 [0]),
        .I3(\bank_reg[9]__0 [1]),
        .I4(\bank_reg[9]_0 [4]),
        .I5(\bank_reg[9]_0 [5]),
        .O(\store_register[6]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \store_register[7]_i_1 
       (.I0(\bank[5][7]_i_6_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_10
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[1]),
        .O(addr[1]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_11
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[0]),
        .O(addr[0]));
  LUT6 #(
    .INIT(64'h0000000050045000)) 
    words_reg_0_255_0_0_i_12
       (.I0(\bank[4][7]_i_3_n_0 ),
        .I1(Q[11]),
        .I2(Q[14]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(\bank[2][7]_i_20_n_0 ),
        .O(en_store));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_13
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[8]),
        .O(\instruction_reg_reg[15] ));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_14
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[9]),
        .O(\instruction_reg_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    words_reg_0_255_0_0_i_15
       (.I0(words_reg_0_255_0_0_i_26_n_0),
        .I1(addr_0[9]),
        .I2(addr_0[3]),
        .I3(addr_0[2]),
        .I4(addr_0[6]),
        .I5(words_reg_0_255_0_0_i_27_n_0),
        .O(words_reg_0_255_0_0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_16
       (.I0(Q[10]),
        .I1(Q[14]),
        .I2(addr0[7]),
        .O(addr_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_17
       (.I0(Q[9]),
        .I1(Q[14]),
        .I2(addr0[6]),
        .O(addr_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_18
       (.I0(Q[8]),
        .I1(Q[14]),
        .I2(addr0[5]),
        .O(addr_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_19
       (.I0(Q[7]),
        .I1(Q[14]),
        .I2(addr0[4]),
        .O(addr_0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_0_0_i_2
       (.I0(D[0]),
        .I1(en_store),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_20
       (.I0(Q[6]),
        .I1(Q[14]),
        .I2(addr0[3]),
        .O(addr_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_21
       (.I0(Q[5]),
        .I1(Q[14]),
        .I2(addr0[2]),
        .O(addr_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_22
       (.I0(Q[4]),
        .I1(Q[14]),
        .I2(addr0[1]),
        .O(addr_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    words_reg_0_255_0_0_i_23
       (.I0(\store_register[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[14]),
        .O(addr_0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_24
       (.I0(Q[11]),
        .I1(Q[14]),
        .I2(addr0[8]),
        .O(addr_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    words_reg_0_255_0_0_i_25
       (.I0(Q[12]),
        .I1(Q[14]),
        .I2(addr0[9]),
        .O(addr_0[9]));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    words_reg_0_255_0_0_i_26
       (.I0(addr0[8]),
        .I1(Q[11]),
        .I2(addr_0[1]),
        .I3(Q[10]),
        .I4(Q[14]),
        .I5(addr0[7]),
        .O(words_reg_0_255_0_0_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    words_reg_0_255_0_0_i_27
       (.I0(addr0[4]),
        .I1(Q[7]),
        .I2(addr0[5]),
        .I3(Q[14]),
        .I4(Q[8]),
        .O(words_reg_0_255_0_0_i_27_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_28
       (.CI(words_reg_0_255_0_0_i_29_n_0),
        .CO({words_reg_0_255_0_0_i_28_n_0,words_reg_0_255_0_0_i_28_n_1,words_reg_0_255_0_0_i_28_n_2,words_reg_0_255_0_0_i_28_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\bank_reg[13][5]_0 [4:3],addr1[5]}),
        .O(addr0[8:5]),
        .S({addr1[8],words_reg_0_255_0_0_i_27_0,words_reg_0_255_0_0_i_33_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_29
       (.CI(1'b0),
        .CO({words_reg_0_255_0_0_i_29_n_0,words_reg_0_255_0_0_i_29_n_1,words_reg_0_255_0_0_i_29_n_2,words_reg_0_255_0_0_i_29_n_3}),
        .CYINIT(1'b0),
        .DI({\bank_reg[13][5]_0 [2:0],1'b0}),
        .O(addr0[4:1]),
        .S({words_reg_0_255_0_0_i_22_0,words_reg_0_255_0_0_i_37_n_0}));
  LUT3 #(
    .INIT(8'h02)) 
    words_reg_0_255_0_0_i_3
       (.I0(en_store),
        .I1(\instruction_reg_reg[15] ),
        .I2(\instruction_reg_reg[15]_0 ),
        .O(\instruction_reg_reg[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 words_reg_0_255_0_0_i_30
       (.CI(words_reg_0_255_0_0_i_28_n_0),
        .CO(NLW_words_reg_0_255_0_0_i_30_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_words_reg_0_255_0_0_i_30_O_UNCONNECTED[3:1],addr0[9]}),
        .S({1'b0,1'b0,1'b0,addr1[9]}));
  LUT2 #(
    .INIT(4'h9)) 
    words_reg_0_255_0_0_i_33
       (.I0(addr1[5]),
        .I1(\bank[2][5]_i_2_n_0 ),
        .O(words_reg_0_255_0_0_i_33_n_0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    words_reg_0_255_0_0_i_37
       (.I0(\bank[2][1]_i_6_n_0 ),
        .I1(\bank[2][1]_i_7_n_0 ),
        .I2(\bank[2][1]_i_8_n_0 ),
        .I3(\bank[5][7]_i_3_n_0 ),
        .I4(\bank[2][1]_i_9_n_0 ),
        .I5(\store_register[3]_i_11_n_0 ),
        .O(words_reg_0_255_0_0_i_37_n_0));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_4
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[7]),
        .O(addr[7]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_5
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[6]),
        .O(addr[6]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_6
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[5]),
        .O(addr[5]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_7
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[4]),
        .O(addr[4]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_8
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[3]),
        .O(addr[3]));
  LUT6 #(
    .INIT(64'h0000AABA00000000)) 
    words_reg_0_255_0_0_i_9
       (.I0(Q[14]),
        .I1(\bank[4][7]_i_3_n_0 ),
        .I2(Q[12]),
        .I3(Q[13]),
        .I4(words_reg_0_255_0_0_i_15_n_0),
        .I5(addr_0[2]),
        .O(addr[2]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_1_1_i_1
       (.I0(D[1]),
        .I1(en_store),
        .O(data_out[1]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_2_2_i_1
       (.I0(D[2]),
        .I1(en_store),
        .O(data_out[2]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_3_3_i_1
       (.I0(D[3]),
        .I1(en_store),
        .O(data_out[3]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_4_4_i_1
       (.I0(D[4]),
        .I1(en_store),
        .O(data_out[4]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_5_5_i_1
       (.I0(D[5]),
        .I1(en_store),
        .O(data_out[5]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_6_6_i_1
       (.I0(D[6]),
        .I1(en_store),
        .O(data_out[6]));
  LUT2 #(
    .INIT(4'h8)) 
    words_reg_0_255_7_7_i_1
       (.I0(D[7]),
        .I1(en_store),
        .O(data_out[7]));
  LUT3 #(
    .INIT(8'h40)) 
    words_reg_256_511_0_0_i_1
       (.I0(\instruction_reg_reg[15]_0 ),
        .I1(\instruction_reg_reg[15] ),
        .I2(en_store),
        .O(\instruction_reg_reg[15]_1 ));
  LUT3 #(
    .INIT(8'h40)) 
    words_reg_512_767_0_0_i_1
       (.I0(\instruction_reg_reg[15] ),
        .I1(\instruction_reg_reg[15]_0 ),
        .I2(en_store),
        .O(\instruction_reg_reg[15]_2 ));
  LUT3 #(
    .INIT(8'h80)) 
    words_reg_768_1023_0_0_i_1
       (.I0(en_store),
        .I1(\instruction_reg_reg[15] ),
        .I2(\instruction_reg_reg[15]_0 ),
        .O(\instruction_reg_reg[12]_0 ));
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
