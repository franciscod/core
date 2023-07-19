-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jul 18 20:25:58 2023
-- Host        : yintu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/core/carefully_organized_rock_ensemble/carefully_organized_rock_ensemble.gen/sources_1/bd/slower_core/ip/slower_core_plaquita_0_0/slower_core_plaquita_0_0_sim_netlist.vhdl
-- Design      : slower_core_plaquita_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_alu is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \a_sub_b_carry__0_i_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][3]_i_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][7]_i_11\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_12\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_alu : entity is "alu";
end slower_core_plaquita_0_0_alu;

architecture STRUCTURE of slower_core_plaquita_0_0_alu is
  signal \a_sub_b_carry__0_n_1\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_2\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_3\ : STD_LOGIC;
  signal a_sub_b_carry_n_0 : STD_LOGIC;
  signal a_sub_b_carry_n_1 : STD_LOGIC;
  signal a_sub_b_carry_n_2 : STD_LOGIC;
  signal a_sub_b_carry_n_3 : STD_LOGIC;
begin
a_sub_b_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => a_sub_b_carry_n_0,
      CO(2) => a_sub_b_carry_n_1,
      CO(1) => a_sub_b_carry_n_2,
      CO(0) => a_sub_b_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => reg_a(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\a_sub_b_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => a_sub_b_carry_n_0,
      CO(3) => CO(0),
      CO(2) => \a_sub_b_carry__0_n_1\,
      CO(1) => \a_sub_b_carry__0_n_2\,
      CO(0) => \a_sub_b_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_a(7 downto 4),
      O(3 downto 0) => \a_sub_b_carry__0_i_4\(3 downto 0),
      S(3 downto 0) => \bank[2][4]_i_12\(3 downto 0)
    );
\bank[2][2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(3),
      I1 => reg_b(3),
      O => \bank[2][3]_i_3\(3)
    );
\bank[2][2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(2),
      I1 => reg_b(2),
      O => \bank[2][3]_i_3\(2)
    );
\bank[2][2]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(1),
      I1 => reg_b(1),
      O => \bank[2][3]_i_3\(1)
    );
\bank[2][2]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(0),
      I1 => reg_b(0),
      O => \bank[2][3]_i_3\(0)
    );
\bank[8][3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(7),
      I1 => reg_b(7),
      O => \bank[2][7]_i_11\(3)
    );
\bank[8][3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(6),
      I1 => reg_b(6),
      O => \bank[2][7]_i_11\(2)
    );
\bank[8][3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(5),
      I1 => reg_b(5),
      O => \bank[2][7]_i_11\(1)
    );
\bank[8][3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_a(4),
      I1 => reg_b(4),
      O => \bank[2][7]_i_11\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_io is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \load_register_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_a : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_io : entity is "io";
end slower_core_plaquita_0_0_io;

architecture STRUCTURE of slower_core_plaquita_0_0_io is
begin
\load_register_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(0),
      Q => \load_register_reg[7]_0\(0),
      R => '0'
    );
\load_register_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(1),
      Q => \load_register_reg[7]_0\(1),
      R => '0'
    );
\load_register_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(2),
      Q => \load_register_reg[7]_0\(2),
      R => '0'
    );
\load_register_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(3),
      Q => \load_register_reg[7]_0\(3),
      R => '0'
    );
\load_register_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(4),
      Q => \load_register_reg[7]_0\(4),
      R => '0'
    );
\load_register_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(5),
      Q => \load_register_reg[7]_0\(5),
      R => '0'
    );
\load_register_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(6),
      Q => \load_register_reg[7]_0\(6),
      R => '0'
    );
\load_register_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => D(7),
      Q => \load_register_reg[7]_0\(7),
      R => '0'
    );
\store_register_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(0),
      Q => Q(0),
      R => '0'
    );
\store_register_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(1),
      Q => Q(1),
      R => '0'
    );
\store_register_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(2),
      Q => Q(2),
      R => '0'
    );
\store_register_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(3),
      Q => Q(3),
      R => '0'
    );
\store_register_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(4),
      Q => Q(4),
      R => '0'
    );
\store_register_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(5),
      Q => Q(5),
      R => '0'
    );
\store_register_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(6),
      Q => Q(6),
      R => '0'
    );
\store_register_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => E(0),
      D => reg_a(7),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_mem is
  port (
    data_load0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][7]_i_20_0\ : in STD_LOGIC;
    data_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][7]_i_20_1\ : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \bank[2][7]_i_20_2\ : in STD_LOGIC;
    \bank[2][7]_i_20_3\ : in STD_LOGIC;
    \bank[2][7]_i_20_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_mem : entity is "mem";
end slower_core_plaquita_0_0_mem;

architecture STRUCTURE of slower_core_plaquita_0_0_mem is
  signal words_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal words_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal words_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal words_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal words_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal words_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal words_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal words_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal words_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal words_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal words_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal words_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal words_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal words_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal words_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal words_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal words_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal words_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal words_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal words_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal words_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal words_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal words_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal words_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal words_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal words_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal words_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal words_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal words_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal words_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal words_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal words_reg_768_1023_7_7_n_0 : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of words_reg_0_255_0_0 : label is "MLO";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of words_reg_0_255_0_0 : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of words_reg_0_255_0_0 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of words_reg_0_255_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of words_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of words_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of words_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of words_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of words_reg_0_255_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_1_1 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_1_1 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_1_1 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of words_reg_0_255_1_1 : label is 255;
  attribute ram_offset of words_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of words_reg_0_255_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_2_2 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_2_2 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_2_2 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of words_reg_0_255_2_2 : label is 255;
  attribute ram_offset of words_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of words_reg_0_255_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_3_3 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_3_3 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_3_3 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of words_reg_0_255_3_3 : label is 255;
  attribute ram_offset of words_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of words_reg_0_255_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_4_4 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_4_4 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_4_4 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of words_reg_0_255_4_4 : label is 255;
  attribute ram_offset of words_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of words_reg_0_255_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_5_5 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_5_5 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_5_5 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of words_reg_0_255_5_5 : label is 255;
  attribute ram_offset of words_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of words_reg_0_255_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_6_6 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_6_6 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_6_6 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of words_reg_0_255_6_6 : label is 255;
  attribute ram_offset of words_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of words_reg_0_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of words_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_0_255_7_7 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_0_255_7_7 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_0_255_7_7 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_0_255_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of words_reg_0_255_7_7 : label is 255;
  attribute ram_offset of words_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of words_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of words_reg_0_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_0_0 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_0_0 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_0_0 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_0_0 : label is 256;
  attribute ram_addr_end of words_reg_256_511_0_0 : label is 511;
  attribute ram_offset of words_reg_256_511_0_0 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_0_0 : label is 0;
  attribute ram_slice_end of words_reg_256_511_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_1_1 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_1_1 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_1_1 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_1_1 : label is 256;
  attribute ram_addr_end of words_reg_256_511_1_1 : label is 511;
  attribute ram_offset of words_reg_256_511_1_1 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_1_1 : label is 1;
  attribute ram_slice_end of words_reg_256_511_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_2_2 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_2_2 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_2_2 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_2_2 : label is 256;
  attribute ram_addr_end of words_reg_256_511_2_2 : label is 511;
  attribute ram_offset of words_reg_256_511_2_2 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_2_2 : label is 2;
  attribute ram_slice_end of words_reg_256_511_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_3_3 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_3_3 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_3_3 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_3_3 : label is 256;
  attribute ram_addr_end of words_reg_256_511_3_3 : label is 511;
  attribute ram_offset of words_reg_256_511_3_3 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_3_3 : label is 3;
  attribute ram_slice_end of words_reg_256_511_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_4_4 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_4_4 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_4_4 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_4_4 : label is 256;
  attribute ram_addr_end of words_reg_256_511_4_4 : label is 511;
  attribute ram_offset of words_reg_256_511_4_4 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_4_4 : label is 4;
  attribute ram_slice_end of words_reg_256_511_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_5_5 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_5_5 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_5_5 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_5_5 : label is 256;
  attribute ram_addr_end of words_reg_256_511_5_5 : label is 511;
  attribute ram_offset of words_reg_256_511_5_5 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_5_5 : label is 5;
  attribute ram_slice_end of words_reg_256_511_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_6_6 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_6_6 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_6_6 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_6_6 : label is 256;
  attribute ram_addr_end of words_reg_256_511_6_6 : label is 511;
  attribute ram_offset of words_reg_256_511_6_6 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_6_6 : label is 6;
  attribute ram_slice_end of words_reg_256_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of words_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_256_511_7_7 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_256_511_7_7 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_256_511_7_7 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_256_511_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_256_511_7_7 : label is 256;
  attribute ram_addr_end of words_reg_256_511_7_7 : label is 511;
  attribute ram_offset of words_reg_256_511_7_7 : label is 0;
  attribute ram_slice_begin of words_reg_256_511_7_7 : label is 7;
  attribute ram_slice_end of words_reg_256_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_0_0 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_0_0 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_0_0 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_0_0 : label is 512;
  attribute ram_addr_end of words_reg_512_767_0_0 : label is 767;
  attribute ram_offset of words_reg_512_767_0_0 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_0_0 : label is 0;
  attribute ram_slice_end of words_reg_512_767_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_1_1 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_1_1 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_1_1 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_1_1 : label is 512;
  attribute ram_addr_end of words_reg_512_767_1_1 : label is 767;
  attribute ram_offset of words_reg_512_767_1_1 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_1_1 : label is 1;
  attribute ram_slice_end of words_reg_512_767_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_2_2 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_2_2 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_2_2 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_2_2 : label is 512;
  attribute ram_addr_end of words_reg_512_767_2_2 : label is 767;
  attribute ram_offset of words_reg_512_767_2_2 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_2_2 : label is 2;
  attribute ram_slice_end of words_reg_512_767_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_3_3 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_3_3 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_3_3 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_3_3 : label is 512;
  attribute ram_addr_end of words_reg_512_767_3_3 : label is 767;
  attribute ram_offset of words_reg_512_767_3_3 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_3_3 : label is 3;
  attribute ram_slice_end of words_reg_512_767_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_4_4 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_4_4 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_4_4 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_4_4 : label is 512;
  attribute ram_addr_end of words_reg_512_767_4_4 : label is 767;
  attribute ram_offset of words_reg_512_767_4_4 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_4_4 : label is 4;
  attribute ram_slice_end of words_reg_512_767_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_5_5 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_5_5 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_5_5 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_5_5 : label is 512;
  attribute ram_addr_end of words_reg_512_767_5_5 : label is 767;
  attribute ram_offset of words_reg_512_767_5_5 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_5_5 : label is 5;
  attribute ram_slice_end of words_reg_512_767_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_6_6 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_6_6 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_6_6 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_6_6 : label is 512;
  attribute ram_addr_end of words_reg_512_767_6_6 : label is 767;
  attribute ram_offset of words_reg_512_767_6_6 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_6_6 : label is 6;
  attribute ram_slice_end of words_reg_512_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of words_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_512_767_7_7 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_512_767_7_7 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_512_767_7_7 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_512_767_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_512_767_7_7 : label is 512;
  attribute ram_addr_end of words_reg_512_767_7_7 : label is 767;
  attribute ram_offset of words_reg_512_767_7_7 : label is 0;
  attribute ram_slice_begin of words_reg_512_767_7_7 : label is 7;
  attribute ram_slice_end of words_reg_512_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_0_0 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_0_0 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_0_0 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_0_0 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_0_0 : label is 1023;
  attribute ram_offset of words_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_end of words_reg_768_1023_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_1_1 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_1_1 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_1_1 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_1_1 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_1_1 : label is 1023;
  attribute ram_offset of words_reg_768_1023_1_1 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_1_1 : label is 1;
  attribute ram_slice_end of words_reg_768_1023_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_2_2 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_2_2 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_2_2 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_2_2 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_2_2 : label is 1023;
  attribute ram_offset of words_reg_768_1023_2_2 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_2_2 : label is 2;
  attribute ram_slice_end of words_reg_768_1023_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_3_3 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_3_3 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_3_3 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_3_3 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_3_3 : label is 1023;
  attribute ram_offset of words_reg_768_1023_3_3 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_3_3 : label is 3;
  attribute ram_slice_end of words_reg_768_1023_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_4_4 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_4_4 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_4_4 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_4_4 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_4_4 : label is 1023;
  attribute ram_offset of words_reg_768_1023_4_4 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_4_4 : label is 4;
  attribute ram_slice_end of words_reg_768_1023_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_5_5 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_5_5 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_5_5 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_5_5 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_5_5 : label is 1023;
  attribute ram_offset of words_reg_768_1023_5_5 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_5_5 : label is 5;
  attribute ram_slice_end of words_reg_768_1023_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_6_6 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_6_6 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_6_6 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_6_6 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_6_6 : label is 1023;
  attribute ram_offset of words_reg_768_1023_6_6 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_6_6 : label is 6;
  attribute ram_slice_end of words_reg_768_1023_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of words_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute OPT_MODIFIED of words_reg_768_1023_7_7 : label is "MLO";
  attribute RTL_RAM_BITS of words_reg_768_1023_7_7 : label is 8192;
  attribute RTL_RAM_NAME of words_reg_768_1023_7_7 : label is "inst/mem/words_reg";
  attribute RTL_RAM_TYPE of words_reg_768_1023_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of words_reg_768_1023_7_7 : label is 768;
  attribute ram_addr_end of words_reg_768_1023_7_7 : label is 1023;
  attribute ram_offset of words_reg_768_1023_7_7 : label is 0;
  attribute ram_slice_begin of words_reg_768_1023_7_7 : label is 7;
  attribute ram_slice_end of words_reg_768_1023_7_7 : label is 7;
begin
\bank[2][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_0_0_n_0,
      I1 => words_reg_512_767_0_0_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_0_0_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_0_0_n_0,
      O => data_load0(0)
    );
\bank[2][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_1_1_n_0,
      I1 => words_reg_512_767_1_1_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_1_1_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_1_1_n_0,
      O => data_load0(1)
    );
\bank[2][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_2_2_n_0,
      I1 => words_reg_512_767_2_2_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_2_2_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_2_2_n_0,
      O => data_load0(2)
    );
\bank[2][3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_3_3_n_0,
      I1 => words_reg_512_767_3_3_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_3_3_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_3_3_n_0,
      O => data_load0(3)
    );
\bank[2][4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_4_4_n_0,
      I1 => words_reg_512_767_4_4_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_4_4_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_4_4_n_0,
      O => data_load0(4)
    );
\bank[2][5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_5_5_n_0,
      I1 => words_reg_512_767_5_5_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_5_5_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_5_5_n_0,
      O => data_load0(5)
    );
\bank[2][6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_6_6_n_0,
      I1 => words_reg_512_767_6_6_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_6_6_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_6_6_n_0,
      O => data_load0(6)
    );
\bank[2][7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => words_reg_768_1023_7_7_n_0,
      I1 => words_reg_512_767_7_7_n_0,
      I2 => addr(9),
      I3 => words_reg_256_511_7_7_n_0,
      I4 => addr(8),
      I5 => words_reg_0_255_7_7_n_0,
      O => data_load0(7)
    );
words_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_0_255_0_0_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_0_255_1_1_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_0_255_2_2_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_0_255_3_3_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_0_255_4_4_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_0_255_5_5_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_0_255_6_6_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_0_255_7_7_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_1\
    );
words_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_256_511_0_0_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_256_511_1_1_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_256_511_2_2_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_256_511_3_3_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_256_511_4_4_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_256_511_5_5_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_256_511_6_6_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_256_511_7_7_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_2\
    );
words_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_512_767_0_0_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_512_767_1_1_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_512_767_2_2_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_512_767_3_3_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_512_767_4_4_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_512_767_5_5_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_512_767_6_6_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_512_767_7_7_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_3\
    );
words_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_768_1023_0_0_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_768_1023_1_1_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_768_1023_2_2_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_768_1023_3_3_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_768_1023_4_4_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_768_1023_5_5_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_768_1023_6_6_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
words_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_768_1023_7_7_n_0,
      WCLK => \bank[2][7]_i_20_0\,
      WE => \bank[2][7]_i_20_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_registers is
  port (
    instruction_reg_reg : out STD_LOGIC;
    instruction_reg_reg_0 : out STD_LOGIC;
    instruction_reg_reg_1 : out STD_LOGIC;
    instruction_reg_reg_2 : out STD_LOGIC;
    instruction_reg_reg_3 : out STD_LOGIC;
    instruction_reg_reg_4 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_a : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reg_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \a_sub_b_carry__0_i_5_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank_reg[13][5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \bank_reg[12][2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank_reg[12][4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \bank_reg[12][5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bank_reg[9][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \bank[2][7]_i_13_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_load0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][0]_i_18_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_14_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    words_reg_0_255_0_0_i_22_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    words_reg_0_255_0_0_i_18_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank_reg[8][2]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_registers : entity is "registers";
end slower_core_plaquita_0_0_registers;

architecture STRUCTURE of slower_core_plaquita_0_0_registers is
  signal \a_sub_b_carry__0_i_5_n_0\ : STD_LOGIC;
  signal addr0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal addr1 : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal addr_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \alu/v10_out\ : STD_LOGIC;
  signal bank : STD_LOGIC;
  signal \bank[10][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[11][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[12][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[13][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[13][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[13][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[13][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[14][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[14][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[14][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[14][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[14][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_28_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_29_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_30_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_31_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_32_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_33_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_34_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_35_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_36_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_37_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_38_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_39_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_28_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_29_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_30_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_31_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_32_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_33_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_34_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_35_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_36_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_37_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_38_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_39_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_40_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_41_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_42_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_43_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_44_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_45_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_46_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_47_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_48_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_49_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_50_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_51_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[6][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[6][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[6][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[7][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_10_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_12_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_13_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_14_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_15_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_17_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_8_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_9_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_8_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_9_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_8_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_12_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_14_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_15_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank[9][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][4]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][5]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][6]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_10_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_11_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^bank_reg[12][2]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^bank_reg[12][4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^bank_reg[13][5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \bank_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[2][0]_i_12_n_0\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_0\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_1\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_2\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_3\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_4\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_5\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_6\ : STD_LOGIC;
  signal \bank_reg[2][2]_i_16_n_7\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_12_n_0\ : STD_LOGIC;
  signal \bank_reg[2][5]_i_20_n_0\ : STD_LOGIC;
  signal \bank_reg[2][5]_i_21_n_0\ : STD_LOGIC;
  signal \bank_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[8][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_5_n_3\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_6_n_3\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_1\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_2\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_3\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_4\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_5\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_6\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_9_n_7\ : STD_LOGIC;
  signal \^bank_reg[9][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bank_reg[9]__0\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \bank_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \bank_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][6]\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal data_write_ip0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal doing_alu : STD_LOGIC;
  signal en_store : STD_LOGIC;
  signal \en_write_reg0__2\ : STD_LOGIC;
  signal flags : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal flags_arg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal instruction_addr0 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^instruction_reg_reg_0\ : STD_LOGIC;
  signal \^instruction_reg_reg_1\ : STD_LOGIC;
  signal \io/data_load20_out\ : STD_LOGIC;
  signal io_load : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ir/skipped__4\ : STD_LOGIC;
  signal load_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mem_addr0 : STD_LOGIC;
  signal n : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_2_in__0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal r1 : STD_LOGIC;
  signal \^reg_a\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reg_b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \setcc_logic/flags_comparison__6\ : STD_LOGIC;
  signal shift_right0 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal shift_right00_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \should_write_flags__10\ : STD_LOGIC;
  signal \should_write_ip__7\ : STD_LOGIC;
  signal store_register1 : STD_LOGIC;
  signal \store_register[0]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_10_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_11_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_12_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_13_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_14_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_15_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_6_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_7_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_8_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_9_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[7]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[7]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[7]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[7]_i_5_n_0\ : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_24_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_31_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_35_n_0 : STD_LOGIC;
  signal write_arg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bank_reg[8][3]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_26_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_26_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_sub_b_carry__0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bank[10][7]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bank[10][7]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[10][7]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bank[11][7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[11][7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bank[12][7]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bank[12][7]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[12][7]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[13][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bank[13][7]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[13][7]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[14][7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bank[14][7]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[14][7]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bank[1][7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bank[1][7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[1][7]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[2][0]_i_15\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bank[2][0]_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[2][1]_i_14\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bank[2][4]_i_13\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bank[2][4]_i_33\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bank[2][4]_i_37\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[2][5]_i_33\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bank[2][5]_i_45\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bank[2][5]_i_49\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[2][7]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bank[2][7]_i_13\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bank[2][7]_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bank[2][7]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[3][7]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[3][7]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[4][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bank[4][7]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[4][7]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[4][7]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[5][7]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bank[5][7]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[5][7]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[6][7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[6][7]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bank[7][7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[7][7]_i_4\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[7][7]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[7][7]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bank[8][0]_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bank[8][0]_i_14\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bank[8][0]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[8][0]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bank[8][1]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[8][1]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[8][2]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[8][2]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[8][3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[8][4]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[8][5]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[8][6]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[8][7]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank[8][7]_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[8][7]_i_13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[8][7]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bank[8][7]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[8][7]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[9][0]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[9][1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[9][2]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[9][3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bank[9][3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[9][4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bank[9][4]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[9][5]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[9][6]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[9][6]_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[9][7]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank[9][7]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[9][7]_i_5\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bank[9][7]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[9][7]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[9][7]_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \store_register[1]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \store_register[3]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \store_register[3]_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \store_register[3]_i_7\ : label is "soft_lutpair27";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_15 : label is 35;
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_16 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_17 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_18 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_19 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_20 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_21 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_22 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_23 : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_26 : label is 35;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_27 : label is 35;
begin
  \bank_reg[12][2]_0\(3 downto 0) <= \^bank_reg[12][2]_0\(3 downto 0);
  \bank_reg[12][4]_0\(4 downto 0) <= \^bank_reg[12][4]_0\(4 downto 0);
  \bank_reg[13][5]_0\(5 downto 0) <= \^bank_reg[13][5]_0\(5 downto 0);
  \bank_reg[9][0]_0\(0) <= \^bank_reg[9][0]_0\(0);
  instruction_reg_reg_0 <= \^instruction_reg_reg_0\;
  instruction_reg_reg_1 <= \^instruction_reg_reg_1\;
  reg_a(7 downto 0) <= \^reg_a\(7 downto 0);
  reg_b(7 downto 0) <= \^reg_b\(7 downto 0);
\a_sub_b_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_5_n_0\,
      O => \a_sub_b_carry__0_i_5_0\(3)
    );
\a_sub_b_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => \^reg_b\(6),
      O => \a_sub_b_carry__0_i_5_0\(2)
    );
\a_sub_b_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(5),
      I1 => \^reg_b\(5),
      O => \a_sub_b_carry__0_i_5_0\(1)
    );
\a_sub_b_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(4),
      I1 => \^reg_b\(4),
      O => \a_sub_b_carry__0_i_5_0\(0)
    );
\a_sub_b_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^reg_b\(7),
      I1 => \^reg_a\(7),
      O => \a_sub_b_carry__0_i_5_n_0\
    );
a_sub_b_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(3),
      I1 => \^reg_b\(3),
      O => S(3)
    );
a_sub_b_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => \^reg_b\(2),
      O => S(2)
    );
a_sub_b_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => \^reg_b\(1),
      O => S(1)
    );
a_sub_b_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => \^reg_b\(0),
      O => S(0)
    );
\bank[10][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[10][0]_i_1_n_0\
    );
\bank[10][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[10][1]_i_1_n_0\
    );
\bank[10][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[10][2]_i_1_n_0\
    );
\bank[10][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[10][3]_i_1_n_0\
    );
\bank[10][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[10][4]_i_1_n_0\
    );
\bank[10][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[10][5]_i_1_n_0\
    );
\bank[10][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[10][6]_i_1_n_0\
    );
\bank[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE04000000"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_6_n_0\,
      I4 => \bank[7][7]_i_3_n_0\,
      I5 => \bank[10][7]_i_4_n_0\,
      O => \bank[10][7]_i_1_n_0\
    );
\bank[10][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[10][7]_i_5_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[10][7]_i_2_n_0\
    );
\bank[10][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bank[4][7]_i_4_n_0\,
      I1 => \bank[2][7]_i_7_n_0\,
      O => \bank[10][7]_i_3_n_0\
    );
\bank[10][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(0),
      I1 => DOADO(2),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(3),
      O => \bank[10][7]_i_4_n_0\
    );
\bank[10][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(6),
      I1 => DOADO(4),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[10][7]_i_5_n_0\
    );
\bank[11][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[11][0]_i_1_n_0\
    );
\bank[11][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[11][1]_i_1_n_0\
    );
\bank[11][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[11][2]_i_1_n_0\
    );
\bank[11][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[11][3]_i_1_n_0\
    );
\bank[11][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[11][4]_i_1_n_0\
    );
\bank[11][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[11][5]_i_1_n_0\
    );
\bank[11][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[11][6]_i_1_n_0\
    );
\bank[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000040"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[4][7]_i_4_n_0\,
      I4 => \bank[7][7]_i_4_n_0\,
      I5 => \bank[11][7]_i_3_n_0\,
      O => \bank[11][7]_i_1_n_0\
    );
\bank[11][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[11][7]_i_4_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[11][7]_i_2_n_0\
    );
\bank[11][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(2),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[11][7]_i_3_n_0\
    );
\bank[11][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(4),
      I1 => DOADO(6),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[11][7]_i_4_n_0\
    );
\bank[12][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[12][0]_i_1_n_0\
    );
\bank[12][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[12][1]_i_1_n_0\
    );
\bank[12][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[12][2]_i_1_n_0\
    );
\bank[12][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[12][3]_i_1_n_0\
    );
\bank[12][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[12][4]_i_1_n_0\
    );
\bank[12][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[12][5]_i_1_n_0\
    );
\bank[12][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[12][6]_i_1_n_0\
    );
\bank[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000004"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_6_n_0\,
      I4 => \bank[12][7]_i_3_n_0\,
      I5 => \bank[12][7]_i_4_n_0\,
      O => \bank[12][7]_i_1_n_0\
    );
\bank[12][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[12][7]_i_5_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[12][7]_i_2_n_0\
    );
\bank[12][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => DOADO(6),
      I1 => \ir/skipped__4\,
      I2 => DOADO(7),
      O => \bank[12][7]_i_3_n_0\
    );
\bank[12][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(0),
      I1 => DOADO(1),
      I2 => DOADO(3),
      I3 => \ir/skipped__4\,
      I4 => DOADO(2),
      O => \bank[12][7]_i_4_n_0\
    );
\bank[12][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(5),
      I1 => DOADO(4),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(6),
      O => \bank[12][7]_i_5_n_0\
    );
\bank[13][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[13][0]_i_1_n_0\
    );
\bank[13][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[13][1]_i_1_n_0\
    );
\bank[13][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[13][2]_i_1_n_0\
    );
\bank[13][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[13][3]_i_1_n_0\
    );
\bank[13][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[13][4]_i_1_n_0\
    );
\bank[13][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[13][5]_i_1_n_0\
    );
\bank[13][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[13][6]_i_1_n_0\
    );
\bank[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000040"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][7]_i_4_n_0\,
      I3 => \bank[2][7]_i_6_n_0\,
      I4 => \bank[13][7]_i_3_n_0\,
      I5 => \bank[13][7]_i_4_n_0\,
      O => \bank[13][7]_i_1_n_0\
    );
\bank[13][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[13][7]_i_5_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[13][7]_i_2_n_0\
    );
\bank[13][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bank[7][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_7_n_0\,
      O => \bank[13][7]_i_3_n_0\
    );
\bank[13][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(2),
      I1 => DOADO(1),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(3),
      O => \bank[13][7]_i_4_n_0\
    );
\bank[13][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(4),
      I1 => DOADO(5),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(6),
      O => \bank[13][7]_i_5_n_0\
    );
\bank[14][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[14][0]_i_1_n_0\
    );
\bank[14][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[14][1]_i_1_n_0\
    );
\bank[14][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[14][2]_i_1_n_0\
    );
\bank[14][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[14][3]_i_1_n_0\
    );
\bank[14][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[14][4]_i_1_n_0\
    );
\bank[14][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[14][5]_i_1_n_0\
    );
\bank[14][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[14][6]_i_1_n_0\
    );
\bank[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000040"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][7]_i_4_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[14][7]_i_3_n_0\,
      I5 => \bank[14][7]_i_4_n_0\,
      O => \bank[14][7]_i_1_n_0\
    );
\bank[14][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[14][7]_i_5_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[14][7]_i_2_n_0\
    );
\bank[14][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      O => \bank[14][7]_i_3_n_0\
    );
\bank[14][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(2),
      I1 => DOADO(0),
      I2 => DOADO(3),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[14][7]_i_4_n_0\
    );
\bank[14][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(5),
      I1 => DOADO(4),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(6),
      O => \bank[14][7]_i_5_n_0\
    );
\bank[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[1][0]_i_1_n_0\
    );
\bank[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[1][1]_i_1_n_0\
    );
\bank[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[1][2]_i_1_n_0\
    );
\bank[1][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[1][3]_i_1_n_0\
    );
\bank[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[1][4]_i_1_n_0\
    );
\bank[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[1][5]_i_1_n_0\
    );
\bank[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[1][6]_i_1_n_0\
    );
\bank[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000400"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[2][7]_i_6_n_0\,
      I5 => \bank[1][7]_i_3_n_0\,
      O => bank
    );
\bank[1][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[1][7]_i_4_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[1][7]_i_2_n_0\
    );
\bank[1][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(2),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[1][7]_i_3_n_0\
    );
\bank[1][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => DOADO(4),
      I1 => DOADO(5),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(6),
      O => \bank[1][7]_i_4_n_0\
    );
\bank[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[2][0]_i_1_n_0\
    );
\bank[2][0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(0),
      I1 => Q(0),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(0)
    );
\bank[2][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \bank[2][0]_i_15_n_0\,
      I1 => DOADO(6),
      I2 => \bank[8][0]_i_8_n_0\,
      I3 => \bank[2][0]_i_16_n_0\,
      I4 => DOADO(4),
      I5 => \bank[2][0]_i_17_n_0\,
      O => \bank[2][0]_i_13_n_0\
    );
\bank[2][0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEA222"
    )
        port map (
      I0 => \bank[2][0]_i_18_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => DOADO(9),
      I4 => O(0),
      O => \bank[2][0]_i_14_n_0\
    );
\bank[2][0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => DOADO(4),
      I1 => \^reg_a\(0),
      I2 => DOADO(5),
      O => \bank[2][0]_i_15_n_0\
    );
\bank[2][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(7),
      I1 => \^reg_a\(3),
      I2 => DOADO(5),
      I3 => \^reg_a\(5),
      I4 => DOADO(6),
      I5 => \^reg_a\(1),
      O => \bank[2][0]_i_16_n_0\
    );
\bank[2][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => \^reg_a\(2),
      I2 => DOADO(5),
      I3 => \^reg_a\(4),
      I4 => DOADO(6),
      I5 => \^reg_a\(0),
      O => \bank[2][0]_i_17_n_0\
    );
\bank[2][0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[2][2]_i_16_n_7\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(0),
      I4 => \^reg_b\(0),
      O => \bank[2][0]_i_18_n_0\
    );
\bank[2][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(0),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(0),
      I3 => p_0_in,
      I4 => \bank[2][0]_i_5_n_0\,
      O => write_arg(0)
    );
\bank[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][0]_i_6_n_0\,
      I1 => \bank[2][0]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][0]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][0]_i_9_n_0\,
      O => \^reg_b\(0)
    );
\bank[2][0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(0),
      I3 => io_load(0),
      O => load_result(0)
    );
\bank[2][0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank_reg[2][0]_i_12_n_0\,
      I1 => r1,
      I2 => \^reg_a\(0),
      I3 => doing_alu,
      I4 => DOADO(4),
      O => \bank[2][0]_i_5_n_0\
    );
\bank[2][0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(0),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(0),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \^bank_reg[12][4]_0\(0),
      O => \bank[2][0]_i_6_n_0\
    );
\bank[2][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \bank_reg[11]\(0),
      I1 => \bank_reg[10]\(0),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \^bank_reg[9][0]_0\(0),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => flags(0),
      O => \bank[2][0]_i_7_n_0\
    );
\bank[2][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(0),
      I1 => \bank_reg[6]\(0),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(0),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(0),
      O => \bank[2][0]_i_8_n_0\
    );
\bank[2][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(0),
      I1 => \bank_reg[2]\(0),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(0),
      O => \bank[2][0]_i_9_n_0\
    );
\bank[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[2][1]_i_1_n_0\
    );
\bank[2][1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(1),
      I1 => Q(1),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(1)
    );
\bank[2][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][1]_i_13_n_0\,
      I1 => O(1),
      I2 => \bank[8][2]_i_5_n_0\,
      I3 => \bank[2][1]_i_14_n_0\,
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => data5(1),
      O => \bank[2][1]_i_12_n_0\
    );
\bank[2][1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[2][2]_i_16_n_6\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(1),
      I4 => \^reg_b\(1),
      O => \bank[2][1]_i_13_n_0\
    );
\bank[2][1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => DOADO(5),
      I1 => \^reg_a\(0),
      I2 => DOADO(4),
      I3 => \^reg_a\(1),
      I4 => DOADO(6),
      O => \bank[2][1]_i_14_n_0\
    );
\bank[2][1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_23_n_0\,
      I1 => \bank[2][2]_i_23_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][3]_i_18_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][1]_i_18_n_0\,
      O => shift_right0(1)
    );
\bank[2][1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_27_n_0\,
      I1 => \bank[2][2]_i_23_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][3]_i_18_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][1]_i_18_n_0\,
      O => shift_right00_in(1)
    );
\bank[2][1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_30_n_0\,
      I1 => \bank[2][5]_i_31_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][5]_i_22_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_23_n_0\,
      O => \bank[2][1]_i_18_n_0\
    );
\bank[2][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(1),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(1),
      I3 => p_0_in,
      I4 => \bank[2][1]_i_5_n_0\,
      O => write_arg(1)
    );
\bank[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][1]_i_6_n_0\,
      I1 => \bank[2][1]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][1]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][1]_i_9_n_0\,
      O => \^reg_b\(1)
    );
\bank[2][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(1),
      I3 => io_load(1),
      O => load_result(1)
    );
\bank[2][1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][1]_i_12_n_0\,
      I1 => r1,
      I2 => \^reg_a\(1),
      I3 => doing_alu,
      I4 => DOADO(5),
      O => \bank[2][1]_i_5_n_0\
    );
\bank[2][1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(1),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(1),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \^bank_reg[12][4]_0\(1),
      O => \bank[2][1]_i_6_n_0\
    );
\bank[2][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(1),
      I1 => \bank_reg[10]\(1),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(1),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => flags(1),
      O => \bank[2][1]_i_7_n_0\
    );
\bank[2][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(1),
      I1 => \bank_reg[6]\(1),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(1),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(1),
      O => \bank[2][1]_i_8_n_0\
    );
\bank[2][1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(1),
      I1 => \bank_reg[2]\(1),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(1),
      O => \bank[2][1]_i_9_n_0\
    );
\bank[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[2][2]_i_1_n_0\
    );
\bank[2][2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(2),
      I1 => Q(2),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(2)
    );
\bank[2][2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][2]_i_13_n_0\,
      I1 => O(2),
      I2 => \bank[8][2]_i_5_n_0\,
      I3 => \bank[2][2]_i_14_n_0\,
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => data5(2),
      O => \bank[2][2]_i_12_n_0\
    );
\bank[2][2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[2][2]_i_16_n_5\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(2),
      I4 => \^reg_b\(2),
      O => \bank[2][2]_i_13_n_0\
    );
\bank[2][2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => DOADO(4),
      I2 => \^reg_a\(1),
      I3 => DOADO(5),
      I4 => \^reg_a\(0),
      I5 => DOADO(6),
      O => \bank[2][2]_i_14_n_0\
    );
\bank[2][2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_21_n_0\,
      I1 => \bank[2][3]_i_18_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_23_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][2]_i_23_n_0\,
      O => shift_right0(2)
    );
\bank[2][2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_25_n_0\,
      I1 => \bank[2][3]_i_18_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_27_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][2]_i_23_n_0\,
      O => shift_right00_in(2)
    );
\bank[2][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(2),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(2),
      I3 => p_0_in,
      I4 => \bank[2][2]_i_5_n_0\,
      O => write_arg(2)
    );
\bank[2][2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_30_n_0\,
      I1 => \bank[2][4]_i_31_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][5]_i_24_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_25_n_0\,
      O => \bank[2][2]_i_23_n_0\
    );
\bank[2][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][2]_i_6_n_0\,
      I1 => \bank[2][2]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][2]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][2]_i_9_n_0\,
      O => \^reg_b\(2)
    );
\bank[2][2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(2),
      I3 => io_load(2),
      O => load_result(2)
    );
\bank[2][2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][2]_i_12_n_0\,
      I1 => r1,
      I2 => \^reg_a\(2),
      I3 => doing_alu,
      I4 => DOADO(6),
      O => \bank[2][2]_i_5_n_0\
    );
\bank[2][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(2),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(2),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \^bank_reg[12][4]_0\(2),
      O => \bank[2][2]_i_6_n_0\
    );
\bank[2][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(2),
      I1 => \bank_reg[10]\(2),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(2),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => flags(2),
      O => \bank[2][2]_i_7_n_0\
    );
\bank[2][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(2),
      I1 => \bank_reg[6]\(2),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(2),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(2),
      O => \bank[2][2]_i_8_n_0\
    );
\bank[2][2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(2),
      I1 => \bank_reg[2]\(2),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(2),
      O => \bank[2][2]_i_9_n_0\
    );
\bank[2][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[2][3]_i_1_n_0\
    );
\bank[2][3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(3),
      I1 => Q(3),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(3)
    );
\bank[2][3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \bank[8][2]_i_8_n_0\,
      I1 => DOADO(6),
      I2 => \bank[8][0]_i_8_n_0\,
      I3 => shift_right00_in(3),
      I4 => DOADO(7),
      I5 => shift_right0(3),
      O => \bank[2][3]_i_13_n_0\
    );
\bank[2][3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEA222"
    )
        port map (
      I0 => \bank[2][3]_i_17_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => DOADO(9),
      I4 => O(3),
      O => \bank[2][3]_i_14_n_0\
    );
\bank[2][3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_26_n_0\,
      I1 => \bank[2][4]_i_27_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_25_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][3]_i_18_n_0\,
      O => shift_right00_in(3)
    );
\bank[2][3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_22_n_0\,
      I1 => \bank[2][4]_i_23_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_21_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][3]_i_18_n_0\,
      O => shift_right0(3)
    );
\bank[2][3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[2][2]_i_16_n_4\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(3),
      I4 => \^reg_b\(3),
      O => \bank[2][3]_i_17_n_0\
    );
\bank[2][3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_28_n_0\,
      I1 => \bank[2][4]_i_29_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][5]_i_26_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_27_n_0\,
      O => \bank[2][3]_i_18_n_0\
    );
\bank[2][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(3),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(3),
      I3 => p_0_in,
      I4 => \bank[2][3]_i_5_n_0\,
      O => write_arg(3)
    );
\bank[2][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][3]_i_6_n_0\,
      I1 => \bank[2][3]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][3]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][3]_i_9_n_0\,
      O => \^reg_b\(3)
    );
\bank[2][3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(3),
      I3 => io_load(3),
      O => load_result(3)
    );
\bank[2][3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank_reg[2][3]_i_12_n_0\,
      I1 => r1,
      I2 => \^reg_a\(3),
      I3 => doing_alu,
      I4 => DOADO(7),
      O => \bank[2][3]_i_5_n_0\
    );
\bank[2][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(3),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(3),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \^bank_reg[12][4]_0\(3),
      O => \bank[2][3]_i_6_n_0\
    );
\bank[2][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(3),
      I1 => \bank_reg[10]\(3),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(3),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => flags(3),
      O => \bank[2][3]_i_7_n_0\
    );
\bank[2][3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(3),
      I1 => \bank_reg[6]\(3),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(3),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(3),
      O => \bank[2][3]_i_8_n_0\
    );
\bank[2][3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(3),
      I1 => \bank_reg[2]\(3),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(3),
      O => \bank[2][3]_i_9_n_0\
    );
\bank[2][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[2][4]_i_1_n_0\
    );
\bank[2][4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(4),
      I1 => Q(4),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(4)
    );
\bank[2][4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_14_n_0\,
      I1 => \bank_reg[8][2]_i_4_0\(0),
      I2 => \bank[8][2]_i_5_n_0\,
      I3 => \bank[2][4]_i_15_n_0\,
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => data5(4),
      O => \bank[2][4]_i_12_n_0\
    );
\bank[2][4]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => DOADO(11),
      I1 => DOADO(9),
      I2 => DOADO(10),
      O => r1
    );
\bank[2][4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[8][3]_i_9_n_7\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(4),
      I4 => \^reg_b\(4),
      O => \bank[2][4]_i_14_n_0\
    );
\bank[2][4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => DOADO(4),
      I1 => \^reg_a\(0),
      I2 => DOADO(6),
      I3 => \bank[2][4]_i_17_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][4]_i_18_n_0\,
      O => \bank[2][4]_i_15_n_0\
    );
\bank[2][4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_22_n_0\,
      I1 => \bank[2][5]_i_23_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][5]_i_24_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_25_n_0\,
      O => \bank[2][4]_i_17_n_0\
    );
\bank[2][4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_26_n_0\,
      I1 => \bank[2][5]_i_27_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][5]_i_28_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_29_n_0\,
      O => \bank[2][4]_i_18_n_0\
    );
\bank[2][4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(7),
      I1 => \bank[2][4]_i_21_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_22_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][4]_i_23_n_0\,
      O => shift_right0(4)
    );
\bank[2][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(4),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(4),
      I3 => p_0_in,
      I4 => \bank[2][4]_i_5_n_0\,
      O => write_arg(4)
    );
\bank[2][4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_24_n_0\,
      I1 => \bank[2][4]_i_25_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][4]_i_26_n_0\,
      I4 => DOADO(5),
      I5 => \bank[2][4]_i_27_n_0\,
      O => shift_right00_in(4)
    );
\bank[2][4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_28_n_0\,
      I1 => \bank[2][4]_i_29_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][5]_i_30_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_31_n_0\,
      O => \bank[2][4]_i_21_n_0\
    );
\bank[2][4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_28_n_0\,
      I1 => \bank[2][4]_i_29_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][4]_i_30_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][4]_i_31_n_0\,
      O => \bank[2][4]_i_22_n_0\
    );
\bank[2][4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_28_n_0\,
      I1 => \bank[2][4]_i_29_n_0\,
      I2 => DOADO(6),
      I3 => \bank[2][5]_i_28_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_29_n_0\,
      O => \bank[2][4]_i_23_n_0\
    );
\bank[2][4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \bank[2][4]_i_29_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[7]_i_3_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[7]_i_2_n_0\,
      I5 => DOADO(6),
      O => \bank[2][4]_i_24_n_0\
    );
\bank[2][4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \bank[2][5]_i_31_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[5]_i_3_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[5]_i_2_n_0\,
      I5 => DOADO(6),
      O => \bank[2][4]_i_25_n_0\
    );
\bank[2][4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \bank[2][4]_i_31_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[6]_i_3_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[6]_i_2_n_0\,
      I5 => DOADO(6),
      O => \bank[2][4]_i_26_n_0\
    );
\bank[2][4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \bank[2][5]_i_29_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[4]_i_3_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[4]_i_2_n_0\,
      I5 => DOADO(6),
      O => \bank[2][4]_i_27_n_0\
    );
\bank[2][4]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[7]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][4]_i_32_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][4]_i_33_n_0\,
      O => \bank[2][4]_i_28_n_0\
    );
\bank[2][4]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][4]_i_34_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][4]_i_35_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[7]_i_5_n_0\,
      O => \bank[2][4]_i_29_n_0\
    );
\bank[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][4]_i_6_n_0\,
      I1 => \bank[2][4]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][4]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][4]_i_9_n_0\,
      O => \^reg_b\(4)
    );
\bank[2][4]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[6]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][4]_i_36_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][4]_i_37_n_0\,
      O => \bank[2][4]_i_30_n_0\
    );
\bank[2][4]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][4]_i_38_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][4]_i_39_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[6]_i_5_n_0\,
      O => \bank[2][4]_i_31_n_0\
    );
\bank[2][4]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(7),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(7),
      O => \bank[2][4]_i_32_n_0\
    );
\bank[2][4]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_write_ip0(7),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => flags(7),
      O => \bank[2][4]_i_33_n_0\
    );
\bank[2][4]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(7),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(7),
      O => \bank[2][4]_i_34_n_0\
    );
\bank[2][4]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(7),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(7),
      O => \bank[2][4]_i_35_n_0\
    );
\bank[2][4]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(6),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(6),
      O => \bank[2][4]_i_36_n_0\
    );
\bank[2][4]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_write_ip0(6),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg_n_0_[8][6]\,
      O => \bank[2][4]_i_37_n_0\
    );
\bank[2][4]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(6),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(6),
      O => \bank[2][4]_i_38_n_0\
    );
\bank[2][4]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(6),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(6),
      O => \bank[2][4]_i_39_n_0\
    );
\bank[2][4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(4),
      I3 => io_load(4),
      O => load_result(4)
    );
\bank[2][4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][4]_i_12_n_0\,
      I1 => r1,
      I2 => \^reg_a\(4),
      I3 => doing_alu,
      I4 => DOADO(8),
      O => \bank[2][4]_i_5_n_0\
    );
\bank[2][4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(4),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(4),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \^bank_reg[12][4]_0\(4),
      O => \bank[2][4]_i_6_n_0\
    );
\bank[2][4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(4),
      I1 => \bank_reg[10]\(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(4),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg_n_0_[8][4]\,
      O => \bank[2][4]_i_7_n_0\
    );
\bank[2][4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(4),
      I1 => \bank_reg[6]\(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(4),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(4),
      O => \bank[2][4]_i_8_n_0\
    );
\bank[2][4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(4),
      I1 => \bank_reg[2]\(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(4),
      O => \bank[2][4]_i_9_n_0\
    );
\bank[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[2][5]_i_1_n_0\
    );
\bank[2][5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(5),
      I1 => Q(5),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(5)
    );
\bank[2][5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[8][0]_i_9_n_0\,
      I1 => \bank_reg[8][2]_i_4_0\(1),
      I2 => \bank[8][2]_i_5_n_0\,
      I3 => \bank[2][5]_i_13_n_0\,
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => data5(5),
      O => \bank[2][5]_i_12_n_0\
    );
\bank[2][5]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \bank[2][5]_i_15_n_0\,
      I1 => DOADO(6),
      I2 => \bank[2][5]_i_16_n_0\,
      I3 => DOADO(5),
      I4 => \bank[2][5]_i_17_n_0\,
      O => \bank[2][5]_i_13_n_0\
    );
\bank[2][5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[2][5]_i_20_n_0\,
      I1 => \bank_reg[2][5]_i_21_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][5]_i_22_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_23_n_0\,
      O => \bank[2][5]_i_15_n_0\
    );
\bank[2][5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_24_n_0\,
      I1 => \bank[2][5]_i_25_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][5]_i_26_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_27_n_0\,
      O => \bank[2][5]_i_16_n_0\
    );
\bank[2][5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_28_n_0\,
      I1 => \bank[2][5]_i_29_n_0\,
      I2 => DOADO(4),
      I3 => \bank[2][5]_i_30_n_0\,
      I4 => \store_register[3]_i_7_n_0\,
      I5 => \bank[2][5]_i_31_n_0\,
      O => \bank[2][5]_i_17_n_0\
    );
\bank[2][5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => DOADO(4),
      I2 => DOADO(5),
      I3 => \^reg_a\(7),
      I4 => DOADO(6),
      I5 => \^reg_a\(5),
      O => shift_right0(5)
    );
\bank[2][5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => DOADO(4),
      I2 => \^reg_a\(7),
      I3 => DOADO(5),
      I4 => \^reg_a\(5),
      I5 => DOADO(6),
      O => shift_right00_in(5)
    );
\bank[2][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(5),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(5),
      I3 => p_0_in,
      I4 => \bank[2][5]_i_5_n_0\,
      O => write_arg(5)
    );
\bank[2][5]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[1]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][5]_i_32_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_33_n_0\,
      O => \bank[2][5]_i_22_n_0\
    );
\bank[2][5]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][5]_i_34_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][5]_i_35_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[1]_i_5_n_0\,
      O => \bank[2][5]_i_23_n_0\
    );
\bank[2][5]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[2]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][5]_i_36_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_37_n_0\,
      O => \bank[2][5]_i_24_n_0\
    );
\bank[2][5]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][5]_i_38_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][5]_i_39_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[2]_i_5_n_0\,
      O => \bank[2][5]_i_25_n_0\
    );
\bank[2][5]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[3]_i_5_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][5]_i_40_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_41_n_0\,
      O => \bank[2][5]_i_26_n_0\
    );
\bank[2][5]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][5]_i_42_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][5]_i_43_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[3]_i_10_n_0\,
      O => \bank[2][5]_i_27_n_0\
    );
\bank[2][5]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[4]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][5]_i_44_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_45_n_0\,
      O => \bank[2][5]_i_28_n_0\
    );
\bank[2][5]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][5]_i_46_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][5]_i_47_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[4]_i_5_n_0\,
      O => \bank[2][5]_i_29_n_0\
    );
\bank[2][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_6_n_0\,
      I1 => \bank[2][5]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][5]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][5]_i_9_n_0\,
      O => \^reg_b\(5)
    );
\bank[2][5]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \store_register[5]_i_2_n_0\,
      I1 => \store_register[3]_i_9_n_0\,
      I2 => \bank[2][5]_i_48_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_49_n_0\,
      O => \bank[2][5]_i_30_n_0\
    );
\bank[2][5]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[2][5]_i_50_n_0\,
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][5]_i_51_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      I4 => \store_register[5]_i_5_n_0\,
      O => \bank[2][5]_i_31_n_0\
    );
\bank[2][5]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(1),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(1),
      O => \bank[2][5]_i_32_n_0\
    );
\bank[2][5]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F0060"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \^bank_reg[12][2]_0\(0),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => flags(1),
      O => \bank[2][5]_i_33_n_0\
    );
\bank[2][5]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(1),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(1),
      O => \bank[2][5]_i_34_n_0\
    );
\bank[2][5]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(1),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(1),
      O => \bank[2][5]_i_35_n_0\
    );
\bank[2][5]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(2),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(2),
      O => \bank[2][5]_i_36_n_0\
    );
\bank[2][5]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF78FF00007800"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \^bank_reg[12][2]_0\(0),
      I2 => \bank_reg[9]__0\(2),
      I3 => DOADO(0),
      I4 => \ir/skipped__4\,
      I5 => flags(2),
      O => \bank[2][5]_i_37_n_0\
    );
\bank[2][5]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(2),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(2),
      O => \bank[2][5]_i_38_n_0\
    );
\bank[2][5]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(2),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(2),
      O => \bank[2][5]_i_39_n_0\
    );
\bank[2][5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(5),
      I3 => io_load(5),
      O => load_result(5)
    );
\bank[2][5]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(3),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(3),
      O => \bank[2][5]_i_40_n_0\
    );
\bank[2][5]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_write_ip0(3),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => flags(3),
      O => \bank[2][5]_i_41_n_0\
    );
\bank[2][5]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(3),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(3),
      O => \bank[2][5]_i_42_n_0\
    );
\bank[2][5]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(3),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(3),
      O => \bank[2][5]_i_43_n_0\
    );
\bank[2][5]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(4),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(4),
      O => \bank[2][5]_i_44_n_0\
    );
\bank[2][5]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_write_ip0(4),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg_n_0_[8][4]\,
      O => \bank[2][5]_i_45_n_0\
    );
\bank[2][5]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(4),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(4),
      O => \bank[2][5]_i_46_n_0\
    );
\bank[2][5]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(4),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(4),
      O => \bank[2][5]_i_47_n_0\
    );
\bank[2][5]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[11]\(5),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[10]\(5),
      O => \bank[2][5]_i_48_n_0\
    );
\bank[2][5]_i_49\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_write_ip0(5),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg_n_0_[8][5]\,
      O => \bank[2][5]_i_49_n_0\
    );
\bank[2][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEA2FFFFAAAA0000"
    )
        port map (
      I0 => \bank[2][5]_i_12_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => \^reg_a\(5),
      I4 => doing_alu,
      I5 => DOADO(9),
      O => \bank[2][5]_i_5_n_0\
    );
\bank[2][5]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[7]\(5),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[6]\(5),
      O => \bank[2][5]_i_50_n_0\
    );
\bank[2][5]_i_51\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \bank_reg[5]\(5),
      I1 => DOADO(0),
      I2 => \ir/skipped__4\,
      I3 => \bank_reg[4]\(5),
      O => \bank[2][5]_i_51_n_0\
    );
\bank[2][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(5),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^bank_reg[13][5]_0\(5),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => instruction_addr0(7),
      O => \bank[2][5]_i_6_n_0\
    );
\bank[2][5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(5),
      I1 => \bank_reg[10]\(5),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(5),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg_n_0_[8][5]\,
      O => \bank[2][5]_i_7_n_0\
    );
\bank[2][5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(5),
      I1 => \bank_reg[6]\(5),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(5),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(5),
      O => \bank[2][5]_i_8_n_0\
    );
\bank[2][5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(5),
      I1 => \bank_reg[2]\(5),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(5),
      O => \bank[2][5]_i_9_n_0\
    );
\bank[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[2][6]_i_1_n_0\
    );
\bank[2][6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(6),
      I1 => Q(6),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(6)
    );
\bank[2][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(6),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(6),
      I3 => p_0_in,
      I4 => \bank[2][6]_i_5_n_0\,
      O => write_arg(6)
    );
\bank[2][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][6]_i_6_n_0\,
      I1 => \bank[2][6]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][6]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][6]_i_9_n_0\,
      O => \^reg_b\(6)
    );
\bank[2][6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(6),
      I3 => io_load(6),
      O => load_result(6)
    );
\bank[2][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFEA2A0000"
    )
        port map (
      I0 => \bank_reg[8][0]_i_5_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(9),
      I3 => \^reg_a\(6),
      I4 => doing_alu,
      I5 => DOADO(10),
      O => \bank[2][6]_i_5_n_0\
    );
\bank[2][6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(6),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => addr1(8),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg_n_0_[12][6]\,
      O => \bank[2][6]_i_6_n_0\
    );
\bank[2][6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(6),
      I1 => \bank_reg[10]\(6),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(6),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg_n_0_[8][6]\,
      O => \bank[2][6]_i_7_n_0\
    );
\bank[2][6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(6),
      I1 => \bank_reg[6]\(6),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(6),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(6),
      O => \bank[2][6]_i_8_n_0\
    );
\bank[2][6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(6),
      I1 => \bank_reg[2]\(6),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(6),
      O => \bank[2][6]_i_9_n_0\
    );
\bank[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000400"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_6_n_0\,
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank[2][7]_i_8_n_0\,
      O => \bank[2][7]_i_1_n_0\
    );
\bank[2][7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => DOADO(5),
      I1 => DOADO(4),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(6),
      O => \bank[2][7]_i_10_n_0\
    );
\bank[2][7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][7]_i_16_n_0\,
      I1 => \bank[2][7]_i_17_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_18_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][7]_i_19_n_0\,
      O => \^reg_b\(7)
    );
\bank[2][7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202020202033"
    )
        port map (
      I0 => DOADO(8),
      I1 => DOADO(15),
      I2 => flags(7),
      I3 => DOADO(13),
      I4 => DOADO(12),
      I5 => DOADO(14),
      O => \bank[2][7]_i_12_n_0\
    );
\bank[2][7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => data_load0(7),
      I3 => io_load(7),
      O => load_result(7)
    );
\bank[2][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555001055551010"
    )
        port map (
      I0 => DOADO(14),
      I1 => DOADO(12),
      I2 => DOADO(13),
      I3 => flags(7),
      I4 => DOADO(15),
      I5 => DOADO(8),
      O => p_0_in
    );
\bank[2][7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEA2FFFFAAAA0000"
    )
        port map (
      I0 => n,
      I1 => DOADO(9),
      I2 => DOADO(10),
      I3 => \^reg_a\(7),
      I4 => doing_alu,
      I5 => DOADO(11),
      O => \bank[2][7]_i_15_n_0\
    );
\bank[2][7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \bank_reg[14]\(7),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => addr1(9),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg_n_0_[12][7]\,
      O => \bank[2][7]_i_16_n_0\
    );
\bank[2][7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(7),
      I1 => \bank_reg[10]\(7),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => data_write_ip0(7),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => flags(7),
      O => \bank[2][7]_i_17_n_0\
    );
\bank[2][7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(7),
      I1 => \bank_reg[6]\(7),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank_reg[5]\(7),
      I4 => \bank[2][7]_i_7_n_0\,
      I5 => \bank_reg[4]\(7),
      O => \bank[2][7]_i_18_n_0\
    );
\bank[2][7]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \bank_reg[3]\(7),
      I1 => \bank_reg[2]\(7),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank_reg[1]\(7),
      O => \bank[2][7]_i_19_n_0\
    );
\bank[2][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[2][7]_i_10_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[2][7]_i_2_n_0\
    );
\bank[2][7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0A0A0"
    )
        port map (
      I0 => \bank[2][7]_i_13_0\(7),
      I1 => Q(7),
      I2 => \io/data_load20_out\,
      I3 => store_register1,
      I4 => p_0_in,
      O => io_load(7)
    );
\bank[2][7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => p_0_in,
      I1 => \store_register[3]_i_13_n_0\,
      I2 => \bank[2][7]_i_23_n_0\,
      I3 => addr_0(0),
      I4 => addr_0(8),
      O => \io/data_load20_out\
    );
\bank[2][7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEDFEEFFDFDFFFFF"
    )
        port map (
      I0 => DOADO(15),
      I1 => \store_register[3]_i_12_n_0\,
      I2 => DOADO(13),
      I3 => addr0(9),
      I4 => DOADO(5),
      I5 => addr0(1),
      O => \bank[2][7]_i_23_n_0\
    );
\bank[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFB15555B1B1"
    )
        port map (
      I0 => DOADO(14),
      I1 => DOADO(12),
      I2 => DOADO(13),
      I3 => flags(7),
      I4 => DOADO(15),
      I5 => DOADO(8),
      O => \en_write_reg0__2\
    );
\bank[2][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000404"
    )
        port map (
      I0 => DOADO(14),
      I1 => DOADO(12),
      I2 => DOADO(13),
      I3 => flags(7),
      I4 => DOADO(15),
      I5 => DOADO(8),
      O => \bank[2][7]_i_4_n_0\
    );
\bank[2][7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => DOADO(6),
      I1 => \ir/skipped__4\,
      I2 => DOADO(7),
      O => \bank[2][7]_i_5_n_0\
    );
\bank[2][7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(5),
      I1 => \ir/skipped__4\,
      O => \bank[2][7]_i_6_n_0\
    );
\bank[2][7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(4),
      I1 => \ir/skipped__4\,
      O => \bank[2][7]_i_7_n_0\
    );
\bank[2][7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(2),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      O => \bank[2][7]_i_8_n_0\
    );
\bank[2][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^reg_b\(7),
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => load_result(7),
      I3 => p_0_in,
      I4 => \bank[2][7]_i_15_n_0\,
      O => write_arg(7)
    );
\bank[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[3][0]_i_1_n_0\
    );
\bank[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[3][1]_i_1_n_0\
    );
\bank[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[3][2]_i_1_n_0\
    );
\bank[3][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[3][3]_i_1_n_0\
    );
\bank[3][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[3][4]_i_1_n_0\
    );
\bank[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[3][5]_i_1_n_0\
    );
\bank[3][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[3][6]_i_1_n_0\
    );
\bank[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE04000000"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[2][7]_i_6_n_0\,
      I5 => \bank[3][7]_i_3_n_0\,
      O => \bank[3][7]_i_1_n_0\
    );
\bank[3][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[3][7]_i_4_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[3][7]_i_2_n_0\
    );
\bank[3][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(2),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[3][7]_i_3_n_0\
    );
\bank[3][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(6),
      I2 => DOADO(5),
      I3 => \ir/skipped__4\,
      I4 => DOADO(4),
      O => \bank[3][7]_i_4_n_0\
    );
\bank[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[4][0]_i_1_n_0\
    );
\bank[4][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[4][1]_i_1_n_0\
    );
\bank[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[4][2]_i_1_n_0\
    );
\bank[4][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[4][3]_i_1_n_0\
    );
\bank[4][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[4][4]_i_1_n_0\
    );
\bank[4][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[4][5]_i_1_n_0\
    );
\bank[4][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[4][6]_i_1_n_0\
    );
\bank[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000400"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank[4][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_6_n_0\,
      I5 => \bank[4][7]_i_5_n_0\,
      O => \bank[4][7]_i_1_n_0\
    );
\bank[4][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[4][7]_i_6_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[4][7]_i_2_n_0\
    );
\bank[4][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bank[2][7]_i_7_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      O => \bank[4][7]_i_3_n_0\
    );
\bank[4][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(6),
      I1 => \ir/skipped__4\,
      O => \bank[4][7]_i_4_n_0\
    );
\bank[4][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(0),
      I2 => DOADO(2),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[4][7]_i_5_n_0\
    );
\bank[4][7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => DOADO(6),
      I1 => DOADO(4),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[4][7]_i_6_n_0\
    );
\bank[5][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[5][0]_i_1_n_0\
    );
\bank[5][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[5][1]_i_1_n_0\
    );
\bank[5][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[5][2]_i_1_n_0\
    );
\bank[5][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[5][3]_i_1_n_0\
    );
\bank[5][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[5][4]_i_1_n_0\
    );
\bank[5][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[5][5]_i_1_n_0\
    );
\bank[5][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[5][6]_i_1_n_0\
    );
\bank[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE04000000"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[5][7]_i_4_n_0\,
      O => \bank[5][7]_i_1_n_0\
    );
\bank[5][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[5][7]_i_5_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[5][7]_i_2_n_0\
    );
\bank[5][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      O => \bank[5][7]_i_3_n_0\
    );
\bank[5][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(1),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(2),
      O => \bank[5][7]_i_4_n_0\
    );
\bank[5][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(5),
      I2 => DOADO(6),
      I3 => \ir/skipped__4\,
      I4 => DOADO(4),
      O => \bank[5][7]_i_5_n_0\
    );
\bank[6][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[6][0]_i_1_n_0\
    );
\bank[6][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[6][1]_i_1_n_0\
    );
\bank[6][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[6][2]_i_1_n_0\
    );
\bank[6][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[6][3]_i_1_n_0\
    );
\bank[6][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[6][4]_i_1_n_0\
    );
\bank[6][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[6][5]_i_1_n_0\
    );
\bank[6][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[6][6]_i_1_n_0\
    );
\bank[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE04000000"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_6_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[6][7]_i_3_n_0\,
      O => \bank[6][7]_i_1_n_0\
    );
\bank[6][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[6][7]_i_4_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[6][7]_i_2_n_0\
    );
\bank[6][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(0),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(2),
      O => \bank[6][7]_i_3_n_0\
    );
\bank[6][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(4),
      I2 => DOADO(6),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[6][7]_i_4_n_0\
    );
\bank[7][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(0),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(0),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(0),
      O => \bank[7][0]_i_1_n_0\
    );
\bank[7][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(1),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(1),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(1),
      O => \bank[7][1]_i_1_n_0\
    );
\bank[7][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(2),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(2),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(2),
      O => \bank[7][2]_i_1_n_0\
    );
\bank[7][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(3),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(3),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(3),
      O => \bank[7][3]_i_1_n_0\
    );
\bank[7][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(4),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(4),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(4),
      O => \bank[7][4]_i_1_n_0\
    );
\bank[7][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(5),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(5),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(5),
      O => \bank[7][5]_i_1_n_0\
    );
\bank[7][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(6),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(6),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(6),
      O => \bank[7][6]_i_1_n_0\
    );
\bank[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEE00000040"
    )
        port map (
      I0 => \en_write_reg0__2\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][7]_i_4_n_0\,
      I3 => \bank[7][7]_i_3_n_0\,
      I4 => \bank[7][7]_i_4_n_0\,
      I5 => \bank[7][7]_i_5_n_0\,
      O => \bank[7][7]_i_1_n_0\
    );
\bank[7][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => write_arg(7),
      I1 => \en_write_reg0__2\,
      I2 => \^reg_a\(7),
      I3 => \bank[7][7]_i_6_n_0\,
      I4 => \^reg_b\(7),
      O => \bank[7][7]_i_2_n_0\
    );
\bank[7][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(7),
      I1 => \ir/skipped__4\,
      O => \bank[7][7]_i_3_n_0\
    );
\bank[7][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_7_n_0\,
      O => \bank[7][7]_i_4_n_0\
    );
\bank[7][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(2),
      I1 => DOADO(3),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[7][7]_i_5_n_0\
    );
\bank[7][7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => DOADO(4),
      I1 => DOADO(7),
      I2 => DOADO(6),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[7][7]_i_6_n_0\
    );
\bank[8][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => flags_arg(0),
      I1 => \should_write_flags__10\,
      I2 => write_arg(0),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][0]_i_3_n_0\,
      O => \bank[8][0]_i_1_n_0\
    );
\bank[8][0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[8][0]_i_14_n_0\,
      I1 => DOADO(6),
      I2 => \bank[8][0]_i_15_n_0\,
      I3 => \bank[8][0]_i_8_n_0\,
      I4 => data5(6),
      O => \bank[8][0]_i_10_n_0\
    );
\bank[8][0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEA222"
    )
        port map (
      I0 => \bank[8][0]_i_17_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => DOADO(9),
      I4 => \bank_reg[8][2]_i_4_0\(2),
      O => \bank[8][0]_i_11_n_0\
    );
\bank[8][0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => DOADO(4),
      I2 => \^reg_a\(0),
      I3 => DOADO(5),
      O => \bank[8][0]_i_12_n_0\
    );
\bank[8][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => \^reg_a\(3),
      I2 => DOADO(5),
      I3 => \^reg_a\(4),
      I4 => DOADO(4),
      I5 => \^reg_a\(5),
      O => \bank[8][0]_i_13_n_0\
    );
\bank[8][0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => DOADO(5),
      I2 => \^reg_a\(1),
      I3 => DOADO(4),
      I4 => \^reg_a\(2),
      O => \bank[8][0]_i_14_n_0\
    );
\bank[8][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(3),
      I1 => \^reg_a\(4),
      I2 => DOADO(5),
      I3 => \^reg_a\(5),
      I4 => DOADO(4),
      I5 => \^reg_a\(6),
      O => \bank[8][0]_i_15_n_0\
    );
\bank[8][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55005F0355005C00"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(4),
      I2 => DOADO(5),
      I3 => \^reg_a\(7),
      I4 => DOADO(6),
      I5 => \^reg_a\(6),
      O => data5(6)
    );
\bank[8][0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[8][3]_i_9_n_5\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(6),
      I4 => \^reg_b\(6),
      O => \bank[8][0]_i_17_n_0\
    );
\bank[8][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => \bank[8][0]_i_4_n_0\,
      I1 => n,
      I2 => \bank_reg[8][0]_i_5_n_0\,
      I3 => \bank[8][0]_i_6_n_0\,
      I4 => doing_alu,
      I5 => flags(0),
      O => flags_arg(0)
    );
\bank[8][0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(0),
      O => \bank[8][0]_i_3_n_0\
    );
\bank[8][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => \bank[2][4]_i_12_n_0\,
      I1 => \bank[8][0]_i_7_n_0\,
      I2 => \bank[8][2]_i_5_n_0\,
      I3 => \bank_reg[8][2]_i_4_0\(1),
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => \bank[8][0]_i_9_n_0\,
      O => \bank[8][0]_i_4_n_0\
    );
\bank[8][0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bank[2][1]_i_12_n_0\,
      I1 => \bank_reg[2][0]_i_12_n_0\,
      I2 => \bank_reg[2][3]_i_12_n_0\,
      I3 => \bank[2][2]_i_12_n_0\,
      O => \bank[8][0]_i_6_n_0\
    );
\bank[8][0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[8][0]_i_12_n_0\,
      I1 => DOADO(6),
      I2 => \bank[8][0]_i_13_n_0\,
      I3 => \bank[8][0]_i_8_n_0\,
      I4 => data5(5),
      O => \bank[8][0]_i_7_n_0\
    );
\bank[8][0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D5"
    )
        port map (
      I0 => DOADO(11),
      I1 => DOADO(10),
      I2 => DOADO(9),
      O => \bank[8][0]_i_8_n_0\
    );
\bank[8][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[8][3]_i_9_n_6\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(5),
      I4 => \^reg_b\(5),
      O => \bank[8][0]_i_9_n_0\
    );
\bank[8][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => flags_arg(1),
      I1 => \should_write_flags__10\,
      I2 => write_arg(1),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][1]_i_3_n_0\,
      O => \bank[8][1]_i_1_n_0\
    );
\bank[8][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8400FFFF84000000"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_5_n_0\,
      I1 => \alu/v10_out\,
      I2 => DOADO(11),
      I3 => \bank[8][1]_i_5_n_0\,
      I4 => doing_alu,
      I5 => flags(1),
      O => flags_arg(1)
    );
\bank[8][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(1),
      O => \bank[8][1]_i_3_n_0\
    );
\bank[8][1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n,
      I1 => \^reg_a\(7),
      O => \alu/v10_out\
    );
\bank[8][1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => DOADO(9),
      I1 => DOADO(10),
      I2 => DOADO(11),
      O => \bank[8][1]_i_5_n_0\
    );
\bank[8][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => flags_arg(2),
      I1 => \should_write_flags__10\,
      I2 => write_arg(2),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][2]_i_3_n_0\,
      O => \bank[8][2]_i_1_n_0\
    );
\bank[8][2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0000"
    )
        port map (
      I0 => DOADO(5),
      I1 => DOADO(6),
      I2 => DOADO(4),
      I3 => DOADO(7),
      I4 => \^reg_a\(7),
      O => data5(7)
    );
\bank[8][2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B3BCBC80"
    )
        port map (
      I0 => \bank_reg[8][3]_i_9_n_4\,
      I1 => DOADO(10),
      I2 => DOADO(9),
      I3 => \^reg_a\(7),
      I4 => \^reg_b\(7),
      O => \bank[8][2]_i_11_n_0\
    );
\bank[8][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => n,
      I1 => doing_alu,
      I2 => flags(2),
      O => flags_arg(2)
    );
\bank[8][2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(2),
      O => \bank[8][2]_i_3_n_0\
    );
\bank[8][2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => DOADO(10),
      I1 => DOADO(11),
      O => \bank[8][2]_i_5_n_0\
    );
\bank[8][2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \bank[8][2]_i_8_n_0\,
      I1 => DOADO(6),
      I2 => \bank[8][2]_i_9_n_0\,
      I3 => \bank[8][0]_i_8_n_0\,
      I4 => data5(7),
      O => \bank[8][2]_i_6_n_0\
    );
\bank[8][2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEA222"
    )
        port map (
      I0 => \bank[8][2]_i_11_n_0\,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => DOADO(9),
      I4 => \bank_reg[8][2]_i_4_0\(3),
      O => \bank[8][2]_i_7_n_0\
    );
\bank[8][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => \^reg_a\(1),
      I2 => DOADO(5),
      I3 => \^reg_a\(2),
      I4 => DOADO(4),
      I5 => \^reg_a\(3),
      O => \bank[8][2]_i_8_n_0\
    );
\bank[8][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(4),
      I1 => \^reg_a\(5),
      I2 => DOADO(5),
      I3 => \^reg_a\(6),
      I4 => DOADO(4),
      I5 => \^reg_a\(7),
      O => \bank[8][2]_i_9_n_0\
    );
\bank[8][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => flags_arg(3),
      I1 => \should_write_flags__10\,
      I2 => write_arg(3),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][3]_i_3_n_0\,
      O => \bank[8][3]_i_1_n_0\
    );
\bank[8][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \bank[8][3]_i_4_n_0\,
      I1 => DOADO(10),
      I2 => DOADO(11),
      I3 => \bank_reg[8][3]_i_5_n_3\,
      I4 => doing_alu,
      I5 => flags(3),
      O => flags_arg(3)
    );
\bank[8][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(3),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(3),
      O => \bank[8][3]_i_3_n_0\
    );
\bank[8][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => DOADO(9),
      I1 => \bank_reg[8][3]_i_6_n_3\,
      I2 => DOADO(11),
      I3 => \bank[8][3]_i_7_n_0\,
      I4 => DOADO(6),
      I5 => \bank[8][3]_i_8_n_0\,
      O => \bank[8][3]_i_4_n_0\
    );
\bank[8][3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \^reg_a\(5),
      I1 => \^reg_a\(6),
      I2 => DOADO(5),
      I3 => DOADO(4),
      I4 => \^reg_a\(7),
      O => \bank[8][3]_i_7_n_0\
    );
\bank[8][3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => \^reg_a\(2),
      I2 => DOADO(5),
      I3 => \^reg_a\(3),
      I4 => DOADO(4),
      I5 => \^reg_a\(4),
      O => \bank[8][3]_i_8_n_0\
    );
\bank[8][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank_reg_n_0_[8][4]\,
      I1 => \should_write_flags__10\,
      I2 => write_arg(4),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][4]_i_2_n_0\,
      O => \bank[8][4]_i_1_n_0\
    );
\bank[8][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(4),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(4),
      O => \bank[8][4]_i_2_n_0\
    );
\bank[8][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \should_write_flags__10\,
      I2 => write_arg(5),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][5]_i_2_n_0\,
      O => \bank[8][5]_i_1_n_0\
    );
\bank[8][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(5),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(5),
      O => \bank[8][5]_i_2_n_0\
    );
\bank[8][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \should_write_flags__10\,
      I2 => write_arg(6),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][6]_i_2_n_0\,
      O => \bank[8][6]_i_1_n_0\
    );
\bank[8][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(6),
      O => \bank[8][6]_i_2_n_0\
    );
\bank[8][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEAA"
    )
        port map (
      I0 => \should_write_flags__10\,
      I1 => \bank[8][7]_i_4_n_0\,
      I2 => \bank[8][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \en_write_reg0__2\,
      O => \bank[8][7]_i_1_n_0\
    );
\bank[8][7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7000000"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(3),
      I2 => flags(3),
      I3 => \bank[8][7]_i_14_n_0\,
      I4 => \bank[8][7]_i_15_n_0\,
      O => \setcc_logic/flags_comparison__6\
    );
\bank[8][7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => DOADO(7),
      I1 => DOADO(4),
      I2 => DOADO(6),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[8][7]_i_11_n_0\
    );
\bank[8][7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => DOADO(6),
      I1 => \ir/skipped__4\,
      I2 => DOADO(7),
      O => \bank[8][7]_i_12_n_0\
    );
\bank[8][7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(2),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => p_6_in
    );
\bank[8][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7D700D700D7D7D7"
    )
        port map (
      I0 => DOADO(5),
      I1 => DOADO(1),
      I2 => flags(1),
      I3 => DOADO(6),
      I4 => DOADO(2),
      I5 => flags(2),
      O => \bank[8][7]_i_14_n_0\
    );
\bank[8][7]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => flags(0),
      I1 => DOADO(0),
      I2 => DOADO(4),
      O => \bank[8][7]_i_15_n_0\
    );
\bank[8][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => flags_arg(7),
      I1 => \should_write_flags__10\,
      I2 => write_arg(7),
      I3 => \en_write_reg0__2\,
      I4 => \bank[8][7]_i_7_n_0\,
      O => \bank[8][7]_i_2_n_0\
    );
\bank[8][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010002000000000"
    )
        port map (
      I0 => DOADO(13),
      I1 => DOADO(15),
      I2 => DOADO(14),
      I3 => \ir/skipped__4\,
      I4 => DOADO(12),
      I5 => \bank[8][7]_i_8_n_0\,
      O => \should_write_flags__10\
    );
\bank[8][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => DOADO(0),
      I1 => DOADO(2),
      I2 => DOADO(3),
      I3 => \ir/skipped__4\,
      I4 => DOADO(1),
      O => \bank[8][7]_i_4_n_0\
    );
\bank[8][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => DOADO(4),
      I1 => DOADO(6),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(5),
      O => \bank[8][7]_i_5_n_0\
    );
\bank[8][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFAFA50505500"
    )
        port map (
      I0 => doing_alu,
      I1 => DOADO(11),
      I2 => DOADO(10),
      I3 => DOADO(9),
      I4 => \setcc_logic/flags_comparison__6\,
      I5 => flags(7),
      O => flags_arg(7)
    );
\bank[8][7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(7),
      I1 => \bank[8][7]_i_11_n_0\,
      I2 => \^reg_b\(7),
      O => \bank[8][7]_i_7_n_0\
    );
\bank[8][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFD00005555"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[8][7]_i_12_n_0\,
      I4 => \en_write_reg0__2\,
      I5 => p_6_in,
      O => \bank[8][7]_i_8_n_0\
    );
\bank[8][7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000130000000000"
    )
        port map (
      I0 => DOADO(8),
      I1 => DOADO(15),
      I2 => flags(7),
      I3 => DOADO(13),
      I4 => DOADO(12),
      I5 => DOADO(14),
      O => doing_alu
    );
\bank[9][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \should_write_ip__7\,
      I2 => write_arg(0),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][0]_i_2_n_0\,
      O => p_1_in(0)
    );
\bank[9][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(0),
      O => \bank[9][0]_i_2_n_0\
    );
\bank[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \^bank_reg[12][2]_0\(0),
      I2 => \should_write_ip__7\,
      I3 => write_arg(1),
      I4 => \en_write_reg0__2\,
      I5 => \bank[9][1]_i_2_n_0\,
      O => p_1_in(1)
    );
\bank[9][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(1),
      O => \bank[9][1]_i_2_n_0\
    );
\bank[9][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(2),
      I1 => \should_write_ip__7\,
      I2 => write_arg(2),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][2]_i_3_n_0\,
      O => p_1_in(2)
    );
\bank[9][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \^bank_reg[12][2]_0\(0),
      I2 => \bank_reg[9]__0\(2),
      O => data_write_ip0(2)
    );
\bank[9][2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(2),
      O => \bank[9][2]_i_3_n_0\
    );
\bank[9][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(3),
      I1 => \should_write_ip__7\,
      I2 => write_arg(3),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][3]_i_3_n_0\,
      O => p_1_in(3)
    );
\bank[9][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^bank_reg[12][2]_0\(0),
      I1 => \^bank_reg[9][0]_0\(0),
      I2 => \bank_reg[9]__0\(2),
      I3 => \bank_reg[9]__0\(3),
      O => data_write_ip0(3)
    );
\bank[9][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(3),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(3),
      O => \bank[9][3]_i_3_n_0\
    );
\bank[9][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(4),
      I1 => \should_write_ip__7\,
      I2 => write_arg(4),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][4]_i_3_n_0\,
      O => p_1_in(4)
    );
\bank[9][4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \bank_reg[9]__0\(2),
      I1 => \^bank_reg[9][0]_0\(0),
      I2 => \^bank_reg[12][2]_0\(0),
      I3 => \bank_reg[9]__0\(3),
      I4 => \bank_reg[9]__0\(4),
      O => data_write_ip0(4)
    );
\bank[9][4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(4),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(4),
      O => \bank[9][4]_i_3_n_0\
    );
\bank[9][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(5),
      I1 => \should_write_ip__7\,
      I2 => write_arg(5),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][5]_i_3_n_0\,
      O => p_1_in(5)
    );
\bank[9][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \bank_reg[9]__0\(3),
      I1 => \^bank_reg[12][2]_0\(0),
      I2 => \^bank_reg[9][0]_0\(0),
      I3 => \bank_reg[9]__0\(2),
      I4 => \bank_reg[9]__0\(4),
      I5 => \bank_reg[9]__0\(5),
      O => data_write_ip0(5)
    );
\bank[9][5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(5),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(5),
      O => \bank[9][5]_i_3_n_0\
    );
\bank[9][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(6),
      I1 => \should_write_ip__7\,
      I2 => write_arg(6),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][6]_i_3_n_0\,
      O => p_1_in(6)
    );
\bank[9][6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank[9][7]_i_10_n_0\,
      I1 => \bank_reg[9]__0\(6),
      O => data_write_ip0(6)
    );
\bank[9][6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(6),
      O => \bank[9][6]_i_3_n_0\
    );
\bank[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFAAAA"
    )
        port map (
      I0 => \should_write_ip__7\,
      I1 => \bank[9][7]_i_4_n_0\,
      I2 => \bank[13][7]_i_3_n_0\,
      I3 => \bank[9][7]_i_5_n_0\,
      I4 => \bank[2][7]_i_4_n_0\,
      I5 => \en_write_reg0__2\,
      O => \bank[9][7]_i_1_n_0\
    );
\bank[9][7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \bank_reg[9]__0\(5),
      I1 => \bank_reg[9]__0\(3),
      I2 => \^bank_reg[12][2]_0\(0),
      I3 => \^bank_reg[9][0]_0\(0),
      I4 => \bank_reg[9]__0\(2),
      I5 => \bank_reg[9]__0\(4),
      O => \bank[9][7]_i_10_n_0\
    );
\bank[9][7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(6),
      I1 => DOADO(5),
      I2 => DOADO(7),
      I3 => \ir/skipped__4\,
      I4 => DOADO(4),
      O => \bank[9][7]_i_11_n_0\
    );
\bank[9][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data_write_ip0(7),
      I1 => \should_write_ip__7\,
      I2 => write_arg(7),
      I3 => \en_write_reg0__2\,
      I4 => \bank[9][7]_i_7_n_0\,
      O => p_1_in(7)
    );
\bank[9][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFD00005555"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[4][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[9][7]_i_8_n_0\,
      I4 => \en_write_reg0__2\,
      I5 => \p_2_in__0\,
      O => \should_write_ip__7\
    );
\bank[9][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => DOADO(1),
      I1 => DOADO(2),
      I2 => DOADO(0),
      I3 => \ir/skipped__4\,
      I4 => DOADO(3),
      O => \bank[9][7]_i_4_n_0\
    );
\bank[9][7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bank[4][7]_i_4_n_0\,
      I1 => \bank[2][7]_i_6_n_0\,
      O => \bank[9][7]_i_5_n_0\
    );
\bank[9][7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bank[9][7]_i_10_n_0\,
      I1 => \bank_reg[9]__0\(6),
      I2 => \bank_reg[9]__0\(7),
      O => data_write_ip0(7)
    );
\bank[9][7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^reg_a\(7),
      I1 => \bank[9][7]_i_11_n_0\,
      I2 => \^reg_b\(7),
      O => \bank[9][7]_i_7_n_0\
    );
\bank[9][7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bank[2][7]_i_7_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      O => \bank[9][7]_i_8_n_0\
    );
\bank[9][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => DOADO(3),
      I1 => DOADO(0),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(2),
      O => \p_2_in__0\
    );
\bank_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][0]_i_1_n_0\,
      Q => \bank_reg[10]\(0),
      R => D(0)
    );
\bank_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][1]_i_1_n_0\,
      Q => \bank_reg[10]\(1),
      R => D(0)
    );
\bank_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][2]_i_1_n_0\,
      Q => \bank_reg[10]\(2),
      R => D(0)
    );
\bank_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][3]_i_1_n_0\,
      Q => \bank_reg[10]\(3),
      R => D(0)
    );
\bank_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][4]_i_1_n_0\,
      Q => \bank_reg[10]\(4),
      R => D(0)
    );
\bank_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][5]_i_1_n_0\,
      Q => \bank_reg[10]\(5),
      R => D(0)
    );
\bank_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][6]_i_1_n_0\,
      Q => \bank_reg[10]\(6),
      R => D(0)
    );
\bank_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[10][7]_i_1_n_0\,
      D => \bank[10][7]_i_2_n_0\,
      Q => \bank_reg[10]\(7),
      R => D(0)
    );
\bank_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][0]_i_1_n_0\,
      Q => \bank_reg[11]\(0),
      R => D(0)
    );
\bank_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][1]_i_1_n_0\,
      Q => \bank_reg[11]\(1),
      R => D(0)
    );
\bank_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][2]_i_1_n_0\,
      Q => \bank_reg[11]\(2),
      R => D(0)
    );
\bank_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][3]_i_1_n_0\,
      Q => \bank_reg[11]\(3),
      R => D(0)
    );
\bank_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][4]_i_1_n_0\,
      Q => \bank_reg[11]\(4),
      R => D(0)
    );
\bank_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][5]_i_1_n_0\,
      Q => \bank_reg[11]\(5),
      R => D(0)
    );
\bank_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][6]_i_1_n_0\,
      Q => \bank_reg[11]\(6),
      R => D(0)
    );
\bank_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[11][7]_i_1_n_0\,
      D => \bank[11][7]_i_2_n_0\,
      Q => \bank_reg[11]\(7),
      R => D(0)
    );
\bank_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][0]_i_1_n_0\,
      Q => \^bank_reg[12][4]_0\(0),
      R => D(0)
    );
\bank_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][1]_i_1_n_0\,
      Q => \^bank_reg[12][4]_0\(1),
      R => D(0)
    );
\bank_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][2]_i_1_n_0\,
      Q => \^bank_reg[12][4]_0\(2),
      R => D(0)
    );
\bank_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][3]_i_1_n_0\,
      Q => \^bank_reg[12][4]_0\(3),
      R => D(0)
    );
\bank_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][4]_i_1_n_0\,
      Q => \^bank_reg[12][4]_0\(4),
      R => D(0)
    );
\bank_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][5]_i_1_n_0\,
      Q => instruction_addr0(7),
      R => D(0)
    );
\bank_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][6]_i_1_n_0\,
      Q => \bank_reg_n_0_[12][6]\,
      R => D(0)
    );
\bank_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][7]_i_2_n_0\,
      Q => \bank_reg_n_0_[12][7]\,
      R => D(0)
    );
\bank_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][0]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(0),
      R => D(0)
    );
\bank_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][1]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(1),
      R => D(0)
    );
\bank_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][2]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(2),
      R => D(0)
    );
\bank_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][3]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(3),
      R => D(0)
    );
\bank_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][4]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(4),
      R => D(0)
    );
\bank_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][5]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(5),
      R => D(0)
    );
\bank_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][6]_i_1_n_0\,
      Q => addr1(8),
      R => D(0)
    );
\bank_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][7]_i_2_n_0\,
      Q => addr1(9),
      R => D(0)
    );
\bank_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][0]_i_1_n_0\,
      Q => \bank_reg[14]\(0),
      R => D(0)
    );
\bank_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][1]_i_1_n_0\,
      Q => \bank_reg[14]\(1),
      R => D(0)
    );
\bank_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][2]_i_1_n_0\,
      Q => \bank_reg[14]\(2),
      R => D(0)
    );
\bank_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][3]_i_1_n_0\,
      Q => \bank_reg[14]\(3),
      R => D(0)
    );
\bank_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][4]_i_1_n_0\,
      Q => \bank_reg[14]\(4),
      R => D(0)
    );
\bank_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][5]_i_1_n_0\,
      Q => \bank_reg[14]\(5),
      R => D(0)
    );
\bank_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][6]_i_1_n_0\,
      Q => \bank_reg[14]\(6),
      R => D(0)
    );
\bank_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[14][7]_i_1_n_0\,
      D => \bank[14][7]_i_2_n_0\,
      Q => \bank_reg[14]\(7),
      R => D(0)
    );
\bank_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][0]_i_1_n_0\,
      Q => \bank_reg[1]\(0),
      R => D(0)
    );
\bank_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][1]_i_1_n_0\,
      Q => \bank_reg[1]\(1),
      R => D(0)
    );
\bank_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][2]_i_1_n_0\,
      Q => \bank_reg[1]\(2),
      R => D(0)
    );
\bank_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][3]_i_1_n_0\,
      Q => \bank_reg[1]\(3),
      R => D(0)
    );
\bank_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][4]_i_1_n_0\,
      Q => \bank_reg[1]\(4),
      R => D(0)
    );
\bank_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][5]_i_1_n_0\,
      Q => \bank_reg[1]\(5),
      R => D(0)
    );
\bank_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][6]_i_1_n_0\,
      Q => \bank_reg[1]\(6),
      R => D(0)
    );
\bank_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => bank,
      D => \bank[1][7]_i_2_n_0\,
      Q => \bank_reg[1]\(7),
      R => D(0)
    );
\bank_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][0]_i_1_n_0\,
      Q => \bank_reg[2]\(0),
      R => D(0)
    );
\bank_reg[2][0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][0]_i_13_n_0\,
      I1 => \bank[2][0]_i_14_n_0\,
      O => \bank_reg[2][0]_i_12_n_0\,
      S => \bank[8][2]_i_5_n_0\
    );
\bank_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][1]_i_1_n_0\,
      Q => \bank_reg[2]\(1),
      R => D(0)
    );
\bank_reg[2][1]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => shift_right0(1),
      I1 => shift_right00_in(1),
      O => data5(1),
      S => DOADO(7)
    );
\bank_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][2]_i_1_n_0\,
      Q => \bank_reg[2]\(2),
      R => D(0)
    );
\bank_reg[2][2]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => shift_right0(2),
      I1 => shift_right00_in(2),
      O => data5(2),
      S => DOADO(7)
    );
\bank_reg[2][2]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bank_reg[2][2]_i_16_n_0\,
      CO(2) => \bank_reg[2][2]_i_16_n_1\,
      CO(1) => \bank_reg[2][2]_i_16_n_2\,
      CO(0) => \bank_reg[2][2]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_a\(3 downto 0),
      O(3) => \bank_reg[2][2]_i_16_n_4\,
      O(2) => \bank_reg[2][2]_i_16_n_5\,
      O(1) => \bank_reg[2][2]_i_16_n_6\,
      O(0) => \bank_reg[2][2]_i_16_n_7\,
      S(3 downto 0) => \bank[2][0]_i_18_0\(3 downto 0)
    );
\bank_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][3]_i_1_n_0\,
      Q => \bank_reg[2]\(3),
      R => D(0)
    );
\bank_reg[2][3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][3]_i_13_n_0\,
      I1 => \bank[2][3]_i_14_n_0\,
      O => \bank_reg[2][3]_i_12_n_0\,
      S => \bank[8][2]_i_5_n_0\
    );
\bank_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][4]_i_1_n_0\,
      Q => \bank_reg[2]\(4),
      R => D(0)
    );
\bank_reg[2][4]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => shift_right0(4),
      I1 => shift_right00_in(4),
      O => data5(4),
      S => DOADO(7)
    );
\bank_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][5]_i_1_n_0\,
      Q => \bank_reg[2]\(5),
      R => D(0)
    );
\bank_reg[2][5]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => shift_right0(5),
      I1 => shift_right00_in(5),
      O => data5(5),
      S => DOADO(7)
    );
\bank_reg[2][5]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \store_register[0]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      O => \bank_reg[2][5]_i_20_n_0\,
      S => \store_register[3]_i_9_n_0\
    );
\bank_reg[2][5]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \store_register[0]_i_5_n_0\,
      I1 => \store_register[0]_i_4_n_0\,
      O => \bank_reg[2][5]_i_21_n_0\,
      S => \store_register[3]_i_9_n_0\
    );
\bank_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][6]_i_1_n_0\,
      Q => \bank_reg[2]\(6),
      R => D(0)
    );
\bank_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[2][7]_i_1_n_0\,
      D => \bank[2][7]_i_2_n_0\,
      Q => \bank_reg[2]\(7),
      R => D(0)
    );
\bank_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][0]_i_1_n_0\,
      Q => \bank_reg[3]\(0),
      R => D(0)
    );
\bank_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][1]_i_1_n_0\,
      Q => \bank_reg[3]\(1),
      R => D(0)
    );
\bank_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][2]_i_1_n_0\,
      Q => \bank_reg[3]\(2),
      R => D(0)
    );
\bank_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][3]_i_1_n_0\,
      Q => \bank_reg[3]\(3),
      R => D(0)
    );
\bank_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][4]_i_1_n_0\,
      Q => \bank_reg[3]\(4),
      R => D(0)
    );
\bank_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][5]_i_1_n_0\,
      Q => \bank_reg[3]\(5),
      R => D(0)
    );
\bank_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][6]_i_1_n_0\,
      Q => \bank_reg[3]\(6),
      R => D(0)
    );
\bank_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[3][7]_i_1_n_0\,
      D => \bank[3][7]_i_2_n_0\,
      Q => \bank_reg[3]\(7),
      R => D(0)
    );
\bank_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][0]_i_1_n_0\,
      Q => \bank_reg[4]\(0),
      R => D(0)
    );
\bank_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][1]_i_1_n_0\,
      Q => \bank_reg[4]\(1),
      R => D(0)
    );
\bank_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][2]_i_1_n_0\,
      Q => \bank_reg[4]\(2),
      R => D(0)
    );
\bank_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][3]_i_1_n_0\,
      Q => \bank_reg[4]\(3),
      R => D(0)
    );
\bank_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][4]_i_1_n_0\,
      Q => \bank_reg[4]\(4),
      R => D(0)
    );
\bank_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][5]_i_1_n_0\,
      Q => \bank_reg[4]\(5),
      R => D(0)
    );
\bank_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][6]_i_1_n_0\,
      Q => \bank_reg[4]\(6),
      R => D(0)
    );
\bank_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[4][7]_i_1_n_0\,
      D => \bank[4][7]_i_2_n_0\,
      Q => \bank_reg[4]\(7),
      R => D(0)
    );
\bank_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][0]_i_1_n_0\,
      Q => \bank_reg[5]\(0),
      R => D(0)
    );
\bank_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][1]_i_1_n_0\,
      Q => \bank_reg[5]\(1),
      R => D(0)
    );
\bank_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][2]_i_1_n_0\,
      Q => \bank_reg[5]\(2),
      R => D(0)
    );
\bank_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][3]_i_1_n_0\,
      Q => \bank_reg[5]\(3),
      R => D(0)
    );
\bank_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][4]_i_1_n_0\,
      Q => \bank_reg[5]\(4),
      R => D(0)
    );
\bank_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][5]_i_1_n_0\,
      Q => \bank_reg[5]\(5),
      R => D(0)
    );
\bank_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][6]_i_1_n_0\,
      Q => \bank_reg[5]\(6),
      R => D(0)
    );
\bank_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[5][7]_i_1_n_0\,
      D => \bank[5][7]_i_2_n_0\,
      Q => \bank_reg[5]\(7),
      R => D(0)
    );
\bank_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][0]_i_1_n_0\,
      Q => \bank_reg[6]\(0),
      R => D(0)
    );
\bank_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][1]_i_1_n_0\,
      Q => \bank_reg[6]\(1),
      R => D(0)
    );
\bank_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][2]_i_1_n_0\,
      Q => \bank_reg[6]\(2),
      R => D(0)
    );
\bank_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][3]_i_1_n_0\,
      Q => \bank_reg[6]\(3),
      R => D(0)
    );
\bank_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][4]_i_1_n_0\,
      Q => \bank_reg[6]\(4),
      R => D(0)
    );
\bank_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][5]_i_1_n_0\,
      Q => \bank_reg[6]\(5),
      R => D(0)
    );
\bank_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][6]_i_1_n_0\,
      Q => \bank_reg[6]\(6),
      R => D(0)
    );
\bank_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[6][7]_i_1_n_0\,
      D => \bank[6][7]_i_2_n_0\,
      Q => \bank_reg[6]\(7),
      R => D(0)
    );
\bank_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][0]_i_1_n_0\,
      Q => \bank_reg[7]\(0),
      R => D(0)
    );
\bank_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][1]_i_1_n_0\,
      Q => \bank_reg[7]\(1),
      R => D(0)
    );
\bank_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][2]_i_1_n_0\,
      Q => \bank_reg[7]\(2),
      R => D(0)
    );
\bank_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][3]_i_1_n_0\,
      Q => \bank_reg[7]\(3),
      R => D(0)
    );
\bank_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][4]_i_1_n_0\,
      Q => \bank_reg[7]\(4),
      R => D(0)
    );
\bank_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][5]_i_1_n_0\,
      Q => \bank_reg[7]\(5),
      R => D(0)
    );
\bank_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][6]_i_1_n_0\,
      Q => \bank_reg[7]\(6),
      R => D(0)
    );
\bank_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[7][7]_i_1_n_0\,
      D => \bank[7][7]_i_2_n_0\,
      Q => \bank_reg[7]\(7),
      R => D(0)
    );
\bank_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][0]_i_1_n_0\,
      Q => flags(0),
      R => D(0)
    );
\bank_reg[8][0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[8][0]_i_10_n_0\,
      I1 => \bank[8][0]_i_11_n_0\,
      O => \bank_reg[8][0]_i_5_n_0\,
      S => \bank[8][2]_i_5_n_0\
    );
\bank_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][1]_i_1_n_0\,
      Q => flags(1),
      R => D(0)
    );
\bank_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][2]_i_1_n_0\,
      Q => flags(2),
      R => D(0)
    );
\bank_reg[8][2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[8][2]_i_6_n_0\,
      I1 => \bank[8][2]_i_7_n_0\,
      O => n,
      S => \bank[8][2]_i_5_n_0\
    );
\bank_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][3]_i_1_n_0\,
      Q => flags(3),
      R => D(0)
    );
\bank_reg[8][3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 1) => \NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \bank_reg[8][3]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_bank_reg[8][3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\bank_reg[8][3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \bank_reg[8][3]_i_9_n_0\,
      CO(3 downto 1) => \NLW_bank_reg[8][3]_i_6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \bank_reg[8][3]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_bank_reg[8][3]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\bank_reg[8][3]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \bank_reg[2][2]_i_16_n_0\,
      CO(3) => \bank_reg[8][3]_i_9_n_0\,
      CO(2) => \bank_reg[8][3]_i_9_n_1\,
      CO(1) => \bank_reg[8][3]_i_9_n_2\,
      CO(0) => \bank_reg[8][3]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_a\(7 downto 4),
      O(3) => \bank_reg[8][3]_i_9_n_4\,
      O(2) => \bank_reg[8][3]_i_9_n_5\,
      O(1) => \bank_reg[8][3]_i_9_n_6\,
      O(0) => \bank_reg[8][3]_i_9_n_7\,
      S(3 downto 0) => \bank[2][4]_i_14_0\(3 downto 0)
    );
\bank_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][4]_i_1_n_0\,
      Q => \bank_reg_n_0_[8][4]\,
      R => D(0)
    );
\bank_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][5]_i_1_n_0\,
      Q => \bank_reg_n_0_[8][5]\,
      R => D(0)
    );
\bank_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][6]_i_1_n_0\,
      Q => \bank_reg_n_0_[8][6]\,
      R => D(0)
    );
\bank_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[8][7]_i_1_n_0\,
      D => \bank[8][7]_i_2_n_0\,
      Q => flags(7),
      R => D(0)
    );
\bank_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^bank_reg[9][0]_0\(0),
      R => D(0)
    );
\bank_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^bank_reg[12][2]_0\(0),
      R => D(0)
    );
\bank_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(2),
      Q => \bank_reg[9]__0\(2),
      R => D(0)
    );
\bank_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(3),
      Q => \bank_reg[9]__0\(3),
      R => D(0)
    );
\bank_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(4),
      Q => \bank_reg[9]__0\(4),
      R => D(0)
    );
\bank_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(5),
      Q => \bank_reg[9]__0\(5),
      R => D(0)
    );
\bank_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(6),
      Q => \bank_reg[9]__0\(6),
      R => D(0)
    );
\bank_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[9][7]_i_1_n_0\,
      D => p_1_in(7),
      Q => \bank_reg[9]__0\(7),
      R => D(0)
    );
\instruction_addr_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => instruction_addr0(7),
      I1 => \bank_reg[9]__0\(7),
      O => \bank_reg[12][5]_0\(2)
    );
\instruction_addr_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[12][4]_0\(4),
      I1 => \bank_reg[9]__0\(6),
      O => \bank_reg[12][5]_0\(1)
    );
\instruction_addr_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[12][4]_0\(3),
      I1 => \bank_reg[9]__0\(5),
      O => \bank_reg[12][5]_0\(0)
    );
instruction_addr_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[12][4]_0\(2),
      I1 => \bank_reg[9]__0\(4),
      O => \^bank_reg[12][2]_0\(3)
    );
instruction_addr_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[12][4]_0\(1),
      I1 => \bank_reg[9]__0\(3),
      O => \^bank_reg[12][2]_0\(2)
    );
instruction_addr_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[12][4]_0\(0),
      I1 => \bank_reg[9]__0\(2),
      O => \^bank_reg[12][2]_0\(1)
    );
\store_register[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \store_register[0]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[0]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[0]_i_5_n_0\,
      O => \^reg_a\(0)
    );
\store_register[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(0),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(0),
      I4 => DOADO(0),
      I5 => \^bank_reg[12][4]_0\(0),
      O => \store_register[0]_i_2_n_0\
    );
\store_register[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \bank_reg[11]\(0),
      I1 => \bank_reg[10]\(0),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \^bank_reg[9][0]_0\(0),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => flags(0),
      O => \store_register[0]_i_3_n_0\
    );
\store_register[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(0),
      I1 => \bank_reg[6]\(0),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(0),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(0),
      O => \store_register[0]_i_4_n_0\
    );
\store_register[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(0),
      I1 => \bank_reg[2]\(0),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(0),
      O => \store_register[0]_i_5_n_0\
    );
\store_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[1]_i_2_n_0\,
      I1 => \store_register[1]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[1]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[1]_i_5_n_0\,
      O => \^reg_a\(1)
    );
\store_register[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(1),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(1),
      I4 => DOADO(0),
      I5 => \^bank_reg[12][4]_0\(1),
      O => \store_register[1]_i_2_n_0\
    );
\store_register[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(1),
      I1 => \bank_reg[10]\(1),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(1),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => flags(1),
      O => \store_register[1]_i_3_n_0\
    );
\store_register[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(1),
      I1 => \bank_reg[6]\(1),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(1),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(1),
      O => \store_register[1]_i_4_n_0\
    );
\store_register[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(1),
      I1 => \bank_reg[2]\(1),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(1),
      O => \store_register[1]_i_5_n_0\
    );
\store_register[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[9][0]_0\(0),
      I1 => \^bank_reg[12][2]_0\(0),
      O => data_write_ip0(1)
    );
\store_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[2]_i_2_n_0\,
      I1 => \store_register[2]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[2]_i_5_n_0\,
      O => \^reg_a\(2)
    );
\store_register[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(2),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(2),
      I4 => DOADO(0),
      I5 => \^bank_reg[12][4]_0\(2),
      O => \store_register[2]_i_2_n_0\
    );
\store_register[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(2),
      I1 => \bank_reg[10]\(2),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(2),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => flags(2),
      O => \store_register[2]_i_3_n_0\
    );
\store_register[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(2),
      I1 => \bank_reg[6]\(2),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(2),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(2),
      O => \store_register[2]_i_4_n_0\
    );
\store_register[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(2),
      I1 => \bank_reg[2]\(2),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(2),
      O => \store_register[2]_i_5_n_0\
    );
\store_register[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00000800000000"
    )
        port map (
      I0 => DOADO(12),
      I1 => DOADO(13),
      I2 => \ir/skipped__4\,
      I3 => DOADO(15),
      I4 => DOADO(14),
      I5 => store_register1,
      O => E(0)
    );
\store_register[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(3),
      I1 => \bank_reg[2]\(3),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(3),
      O => \store_register[3]_i_10_n_0\
    );
\store_register[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1B5FBBFF"
    )
        port map (
      I0 => DOADO(15),
      I1 => addr0(8),
      I2 => DOADO(12),
      I3 => addr0(9),
      I4 => DOADO(13),
      O => \store_register[3]_i_11_n_0\
    );
\store_register[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1B5FBBFF"
    )
        port map (
      I0 => DOADO(15),
      I1 => addr0(3),
      I2 => DOADO(7),
      I3 => addr0(2),
      I4 => DOADO(6),
      O => \store_register[3]_i_12_n_0\
    );
\store_register[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B7FFFFFFFFFFFFF"
    )
        port map (
      I0 => DOADO(15),
      I1 => addr_0(6),
      I2 => DOADO(11),
      I3 => addr0(7),
      I4 => addr_0(4),
      I5 => addr_0(5),
      O => \store_register[3]_i_13_n_0\
    );
\store_register[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(1),
      I1 => \ir/skipped__4\,
      O => \store_register[3]_i_14_n_0\
    );
\store_register[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(0),
      I1 => \ir/skipped__4\,
      O => \store_register[3]_i_15_n_0\
    );
\store_register[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[3]_i_5_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[3]_i_8_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[3]_i_10_n_0\,
      O => \^reg_a\(3)
    );
\store_register[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202020202020"
    )
        port map (
      I0 => DOADO(8),
      I1 => DOADO(15),
      I2 => flags(7),
      I3 => DOADO(13),
      I4 => DOADO(12),
      I5 => DOADO(14),
      O => \ir/skipped__4\
    );
\store_register[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \store_register[3]_i_11_n_0\,
      I1 => \store_register[3]_i_12_n_0\,
      I2 => addr_0(0),
      I3 => addr_0(1),
      I4 => \store_register[3]_i_13_n_0\,
      O => store_register1
    );
\store_register[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(3),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(3),
      I4 => DOADO(0),
      I5 => \^bank_reg[12][4]_0\(3),
      O => \store_register[3]_i_5_n_0\
    );
\store_register[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(3),
      I1 => \bank_reg[10]\(3),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(3),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => flags(3),
      O => \store_register[3]_i_6_n_0\
    );
\store_register[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(3),
      I1 => \ir/skipped__4\,
      O => \store_register[3]_i_7_n_0\
    );
\store_register[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(3),
      I1 => \bank_reg[6]\(3),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(3),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(3),
      O => \store_register[3]_i_8_n_0\
    );
\store_register[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DOADO(2),
      I1 => \ir/skipped__4\,
      O => \store_register[3]_i_9_n_0\
    );
\store_register[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[4]_i_2_n_0\,
      I1 => \store_register[4]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[4]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[4]_i_5_n_0\,
      O => \^reg_a\(4)
    );
\store_register[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(4),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(4),
      I4 => DOADO(0),
      I5 => \^bank_reg[12][4]_0\(4),
      O => \store_register[4]_i_2_n_0\
    );
\store_register[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(4),
      I1 => \bank_reg[10]\(4),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(4),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg_n_0_[8][4]\,
      O => \store_register[4]_i_3_n_0\
    );
\store_register[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(4),
      I1 => \bank_reg[6]\(4),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(4),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(4),
      O => \store_register[4]_i_4_n_0\
    );
\store_register[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(4),
      I1 => \bank_reg[2]\(4),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(4),
      O => \store_register[4]_i_5_n_0\
    );
\store_register[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[5]_i_2_n_0\,
      I1 => \store_register[5]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[5]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[5]_i_5_n_0\,
      O => \^reg_a\(5)
    );
\store_register[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(5),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => \^bank_reg[13][5]_0\(5),
      I4 => DOADO(0),
      I5 => instruction_addr0(7),
      O => \store_register[5]_i_2_n_0\
    );
\store_register[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(5),
      I1 => \bank_reg[10]\(5),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(5),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg_n_0_[8][5]\,
      O => \store_register[5]_i_3_n_0\
    );
\store_register[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(5),
      I1 => \bank_reg[6]\(5),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(5),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(5),
      O => \store_register[5]_i_4_n_0\
    );
\store_register[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(5),
      I1 => \bank_reg[2]\(5),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(5),
      O => \store_register[5]_i_5_n_0\
    );
\store_register[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[6]_i_2_n_0\,
      I1 => \store_register[6]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[6]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[6]_i_5_n_0\,
      O => \^reg_a\(6)
    );
\store_register[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(6),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => addr1(8),
      I4 => DOADO(0),
      I5 => \bank_reg_n_0_[12][6]\,
      O => \store_register[6]_i_2_n_0\
    );
\store_register[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(6),
      I1 => \bank_reg[10]\(6),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(6),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg_n_0_[8][6]\,
      O => \store_register[6]_i_3_n_0\
    );
\store_register[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(6),
      I1 => \bank_reg[6]\(6),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(6),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(6),
      O => \store_register[6]_i_4_n_0\
    );
\store_register[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(6),
      I1 => \bank_reg[2]\(6),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(6),
      O => \store_register[6]_i_5_n_0\
    );
\store_register[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \store_register[7]_i_2_n_0\,
      I1 => \store_register[7]_i_3_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[7]_i_4_n_0\,
      I4 => \store_register[3]_i_9_n_0\,
      I5 => \store_register[7]_i_5_n_0\,
      O => \^reg_a\(7)
    );
\store_register[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFBFB0F0C0808"
    )
        port map (
      I0 => \bank_reg[14]\(7),
      I1 => DOADO(1),
      I2 => \ir/skipped__4\,
      I3 => addr1(9),
      I4 => DOADO(0),
      I5 => \bank_reg_n_0_[12][7]\,
      O => \store_register[7]_i_2_n_0\
    );
\store_register[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[11]\(7),
      I1 => \bank_reg[10]\(7),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => data_write_ip0(7),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => flags(7),
      O => \store_register[7]_i_3_n_0\
    );
\store_register[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[7]\(7),
      I1 => \bank_reg[6]\(7),
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank_reg[5]\(7),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank_reg[4]\(7),
      O => \store_register[7]_i_4_n_0\
    );
\store_register[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AF00C000A000C0"
    )
        port map (
      I0 => \bank_reg[3]\(7),
      I1 => \bank_reg[2]\(7),
      I2 => DOADO(1),
      I3 => \ir/skipped__4\,
      I4 => DOADO(0),
      I5 => \bank_reg[1]\(7),
      O => \store_register[7]_i_5_n_0\
    );
words_reg_0_255_0_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(1),
      I1 => mem_addr0,
      O => addr(1)
    );
words_reg_0_255_0_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(0),
      I1 => mem_addr0,
      O => addr(0)
    );
words_reg_0_255_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F000008"
    )
        port map (
      I0 => DOADO(12),
      I1 => DOADO(13),
      I2 => \ir/skipped__4\,
      I3 => DOADO(15),
      I4 => DOADO(14),
      I5 => words_reg_0_255_0_0_i_24_n_0,
      O => en_store
    );
words_reg_0_255_0_0_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(8),
      I1 => mem_addr0,
      O => \^instruction_reg_reg_0\
    );
words_reg_0_255_0_0_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD200000"
    )
        port map (
      I0 => DOADO(15),
      I1 => \ir/skipped__4\,
      I2 => DOADO(13),
      I3 => addr0(9),
      I4 => mem_addr0,
      O => \^instruction_reg_reg_1\
    );
words_reg_0_255_0_0_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_27_n_0,
      CO(3) => words_reg_0_255_0_0_i_15_n_0,
      CO(2) => words_reg_0_255_0_0_i_15_n_1,
      CO(1) => words_reg_0_255_0_0_i_15_n_2,
      CO(0) => words_reg_0_255_0_0_i_15_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^bank_reg[13][5]_0\(5 downto 3),
      O(3 downto 0) => addr0(8 downto 5),
      S(3) => addr1(8),
      S(2 downto 0) => words_reg_0_255_0_0_i_18_0(2 downto 0)
    );
words_reg_0_255_0_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => p_0_in,
      I1 => words_reg_0_255_0_0_i_24_n_0,
      I2 => en_store,
      O => mem_addr0
    );
words_reg_0_255_0_0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(10),
      I2 => addr0(6),
      O => addr_0(6)
    );
words_reg_0_255_0_0_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(9),
      I2 => addr0(5),
      O => addr_0(5)
    );
words_reg_0_255_0_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(8),
      I2 => addr0(4),
      O => addr_0(4)
    );
words_reg_0_255_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(0),
      I1 => en_store,
      O => data_out(0)
    );
words_reg_0_255_0_0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(7),
      I2 => addr0(3),
      O => addr_0(3)
    );
words_reg_0_255_0_0_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(6),
      I2 => addr0(2),
      O => addr_0(2)
    );
words_reg_0_255_0_0_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(5),
      I2 => addr0(1),
      O => addr_0(1)
    );
words_reg_0_255_0_0_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(4),
      I2 => \^reg_b\(0),
      O => addr_0(0)
    );
words_reg_0_255_0_0_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => addr_0(1),
      I1 => words_reg_0_255_0_0_i_31_n_0,
      I2 => addr_0(3),
      I3 => addr_0(2),
      I4 => addr_0(5),
      I5 => addr_0(4),
      O => words_reg_0_255_0_0_i_24_n_0
    );
words_reg_0_255_0_0_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => DOADO(12),
      I1 => DOADO(15),
      I2 => \ir/skipped__4\,
      I3 => addr0(8),
      O => addr_0(8)
    );
words_reg_0_255_0_0_i_26: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_15_n_0,
      CO(3 downto 0) => NLW_words_reg_0_255_0_0_i_26_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_words_reg_0_255_0_0_i_26_O_UNCONNECTED(3 downto 1),
      O(0) => addr0(9),
      S(3 downto 1) => B"000",
      S(0) => addr1(9)
    );
words_reg_0_255_0_0_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => words_reg_0_255_0_0_i_27_n_0,
      CO(2) => words_reg_0_255_0_0_i_27_n_1,
      CO(1) => words_reg_0_255_0_0_i_27_n_2,
      CO(0) => words_reg_0_255_0_0_i_27_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \^bank_reg[13][5]_0\(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => addr0(4 downto 1),
      S(3 downto 1) => words_reg_0_255_0_0_i_22_0(2 downto 0),
      S(0) => words_reg_0_255_0_0_i_35_n_0
    );
words_reg_0_255_0_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => en_store,
      I1 => \^instruction_reg_reg_0\,
      I2 => \^instruction_reg_reg_1\,
      O => instruction_reg_reg
    );
words_reg_0_255_0_0_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF27AF77FF"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(11),
      I2 => addr0(7),
      I3 => DOADO(10),
      I4 => addr0(6),
      I5 => \store_register[3]_i_11_n_0\,
      O => words_reg_0_255_0_0_i_31_n_0
    );
words_reg_0_255_0_0_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][1]_i_6_n_0\,
      I1 => \bank[2][1]_i_7_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[2][1]_i_8_n_0\,
      I4 => \bank[4][7]_i_4_n_0\,
      I5 => \bank[2][1]_i_9_n_0\,
      O => words_reg_0_255_0_0_i_35_n_0
    );
words_reg_0_255_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D800"
    )
        port map (
      I0 => DOADO(15),
      I1 => DOADO(11),
      I2 => addr0(7),
      I3 => mem_addr0,
      O => addr(7)
    );
words_reg_0_255_0_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(6),
      I1 => mem_addr0,
      O => addr(6)
    );
words_reg_0_255_0_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(5),
      I1 => mem_addr0,
      O => addr(5)
    );
words_reg_0_255_0_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(4),
      I1 => mem_addr0,
      O => addr(4)
    );
words_reg_0_255_0_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(3),
      I1 => mem_addr0,
      O => addr(3)
    );
words_reg_0_255_0_0_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr_0(2),
      I1 => mem_addr0,
      O => addr(2)
    );
words_reg_0_255_1_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(1),
      I1 => en_store,
      O => data_out(1)
    );
words_reg_0_255_2_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(2),
      I1 => en_store,
      O => data_out(2)
    );
words_reg_0_255_3_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(3),
      I1 => en_store,
      O => data_out(3)
    );
words_reg_0_255_4_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(4),
      I1 => en_store,
      O => data_out(4)
    );
words_reg_0_255_5_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(5),
      I1 => en_store,
      O => data_out(5)
    );
words_reg_0_255_6_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(6),
      I1 => en_store,
      O => data_out(6)
    );
words_reg_0_255_7_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_a\(7),
      I1 => en_store,
      O => data_out(7)
    );
words_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg_1\,
      I1 => \^instruction_reg_reg_0\,
      I2 => en_store,
      O => instruction_reg_reg_2
    );
words_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg_0\,
      I1 => \^instruction_reg_reg_1\,
      I2 => en_store,
      O => instruction_reg_reg_3
    );
words_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => en_store,
      I1 => \^instruction_reg_reg_0\,
      I2 => \^instruction_reg_reg_1\,
      O => instruction_reg_reg_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_core is
  port (
    instruction_reg_reg_0 : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    instruction_reg_reg_1 : out STD_LOGIC;
    instruction_reg_reg_2 : out STD_LOGIC;
    instruction_reg_reg_3 : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    data_load0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_core : entity is "core";
end slower_core_plaquita_0_0_core;

architecture STRUCTURE of slower_core_plaquita_0_0_core is
  signal addr1 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal alu_n_0 : STD_LOGIC;
  signal alu_n_1 : STD_LOGIC;
  signal alu_n_10 : STD_LOGIC;
  signal alu_n_11 : STD_LOGIC;
  signal alu_n_12 : STD_LOGIC;
  signal alu_n_13 : STD_LOGIC;
  signal alu_n_14 : STD_LOGIC;
  signal alu_n_15 : STD_LOGIC;
  signal alu_n_16 : STD_LOGIC;
  signal alu_n_2 : STD_LOGIC;
  signal alu_n_3 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal \bank_reg[9]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bank_reg[9]__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal instruction_addr0 : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \instruction_addr_carry__0_n_2\ : STD_LOGIC;
  signal \instruction_addr_carry__0_n_3\ : STD_LOGIC;
  signal instruction_addr_carry_n_0 : STD_LOGIC;
  signal instruction_addr_carry_n_1 : STD_LOGIC;
  signal instruction_addr_carry_n_2 : STD_LOGIC;
  signal instruction_addr_carry_n_3 : STD_LOGIC;
  signal instruction_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal registers_n_26 : STD_LOGIC;
  signal registers_n_27 : STD_LOGIC;
  signal registers_n_28 : STD_LOGIC;
  signal registers_n_29 : STD_LOGIC;
  signal registers_n_52 : STD_LOGIC;
  signal registers_n_53 : STD_LOGIC;
  signal registers_n_54 : STD_LOGIC;
  signal registers_n_6 : STD_LOGIC;
  signal registers_n_61 : STD_LOGIC;
  signal registers_n_62 : STD_LOGIC;
  signal registers_n_63 : STD_LOGIC;
  signal registers_n_7 : STD_LOGIC;
  signal registers_n_8 : STD_LOGIC;
  signal registers_n_9 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal store_register : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal store_register0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_30_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_32_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_33_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_34_n_0 : STD_LOGIC;
  signal \NLW_instruction_addr_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_instruction_addr_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_instruction_reg_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_instruction_reg_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_instruction_reg_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of instruction_addr_carry : label is 35;
  attribute ADDER_THRESHOLD of \instruction_addr_carry__0\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of instruction_reg_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of instruction_reg_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of instruction_reg_reg : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of instruction_reg_reg : label is "inst/dut/instruction_reg_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of instruction_reg_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of instruction_reg_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of instruction_reg_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of instruction_reg_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of instruction_reg_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of instruction_reg_reg : label is 15;
begin
  led(3 downto 0) <= \^led\(3 downto 0);
alu: entity work.slower_core_plaquita_0_0_alu
     port map (
      CO(0) => alu_n_4,
      O(3) => alu_n_0,
      O(2) => alu_n_1,
      O(1) => alu_n_2,
      O(0) => alu_n_3,
      S(3) => registers_n_6,
      S(2) => registers_n_7,
      S(1) => registers_n_8,
      S(0) => registers_n_9,
      \a_sub_b_carry__0_i_4\(3) => alu_n_5,
      \a_sub_b_carry__0_i_4\(2) => alu_n_6,
      \a_sub_b_carry__0_i_4\(1) => alu_n_7,
      \a_sub_b_carry__0_i_4\(0) => alu_n_8,
      \bank[2][3]_i_3\(3) => alu_n_9,
      \bank[2][3]_i_3\(2) => alu_n_10,
      \bank[2][3]_i_3\(1) => alu_n_11,
      \bank[2][3]_i_3\(0) => alu_n_12,
      \bank[2][4]_i_12\(3) => registers_n_26,
      \bank[2][4]_i_12\(2) => registers_n_27,
      \bank[2][4]_i_12\(1) => registers_n_28,
      \bank[2][4]_i_12\(0) => registers_n_29,
      \bank[2][7]_i_11\(3) => alu_n_13,
      \bank[2][7]_i_11\(2) => alu_n_14,
      \bank[2][7]_i_11\(1) => alu_n_15,
      \bank[2][7]_i_11\(0) => alu_n_16,
      reg_a(7 downto 0) => reg_a(7 downto 0),
      reg_b(7 downto 0) => reg_b(7 downto 0)
    );
instruction_addr_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => instruction_addr_carry_n_0,
      CO(2) => instruction_addr_carry_n_1,
      CO(1) => instruction_addr_carry_n_2,
      CO(0) => instruction_addr_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => instruction_addr0(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => sel(4 downto 1),
      S(3) => registers_n_52,
      S(2) => registers_n_53,
      S(1) => registers_n_54,
      S(0) => \bank_reg[9]__0\(1)
    );
\instruction_addr_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => instruction_addr_carry_n_0,
      CO(3 downto 2) => \NLW_instruction_addr_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \instruction_addr_carry__0_n_2\,
      CO(0) => \instruction_addr_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => instruction_addr0(6 downto 5),
      O(3) => \NLW_instruction_addr_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => sel(7 downto 5),
      S(3) => '0',
      S(2) => registers_n_61,
      S(1) => registers_n_62,
      S(0) => registers_n_63
    );
instruction_reg_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"7B5E66FA30AE7F4BFFFB20AE68FA109E79BE66FA30AE00237346712570177012",
      INIT_01 => X"581062335E00687320AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA109E",
      INIT_02 => X"6779581062BBBFEB5E007269677958116244BFE45E0000237346712570596779",
      INIT_03 => X"581062335E00687376D9677958105E006AB420AE68FA109E79BE66FA30AE72C9",
      INIT_04 => X"109E7B5E66FA30AE7F4BFFFB70FB7029677958105E006AB2707B667272596779",
      INIT_05 => X"66FA30AE7F4BFFFB70FB20AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA",
      INIT_06 => X"7F4BFFFB708B20AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE68FA109E7B5E",
      INIT_07 => X"702B20AE68FA109E7B5E66FA30AE7F4BFFFB704B20AE68FA109E7B5E66FA30AE",
      INIT_08 => X"68FA109E7B5E66FA30AE7F4BFFFB701B20AE68FA109E7B5E66FA30AE7F4BFFFB",
      INIT_09 => X"6E1B005B64B66CFB006B700920AE68FA109E7B5E66FA30AE7F4BFFFB700B20AE",
      INIT_0A => X"702B00E9701B66B9605B706B64B66CDB005B64B56E1B006B64B56CFB005B64B6",
      INIT_0B => X"68FA109E7C7E66FA30AE20AE68FA109E7C7E66FA30AE00E9708B00E9704B00E9",
      INIT_0C => X"000000000000000000007FAB5E0066FA30AB00E97B5967795810687B5E0020AE",
      INIT_0D => X"68FA7CB967795810687B00000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000E920AB",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 5) => sel(7 downto 1),
      ADDRARDADDR(4) => \bank_reg[9]_0\(0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => sysclk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => instruction_reg(15 downto 0),
      DOBDO(15 downto 0) => NLW_instruction_reg_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_instruction_reg_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_instruction_reg_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
io: entity work.slower_core_plaquita_0_0_io
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => store_register0,
      Q(7 downto 4) => store_register(7 downto 4),
      Q(3 downto 0) => \^led\(3 downto 0),
      \load_register_reg[7]_0\(7 downto 0) => load_register(7 downto 0),
      reg_a(7 downto 0) => reg_a(7 downto 0),
      sysclk => sysclk
    );
registers: entity work.slower_core_plaquita_0_0_registers
     port map (
      CO(0) => alu_n_4,
      D(0) => D(4),
      DOADO(15 downto 0) => instruction_reg(15 downto 0),
      E(0) => store_register0,
      O(3) => alu_n_0,
      O(2) => alu_n_1,
      O(1) => alu_n_2,
      O(0) => alu_n_3,
      Q(7 downto 4) => store_register(7 downto 4),
      Q(3 downto 0) => \^led\(3 downto 0),
      S(3) => registers_n_6,
      S(2) => registers_n_7,
      S(1) => registers_n_8,
      S(0) => registers_n_9,
      \a_sub_b_carry__0_i_5_0\(3) => registers_n_26,
      \a_sub_b_carry__0_i_5_0\(2) => registers_n_27,
      \a_sub_b_carry__0_i_5_0\(1) => registers_n_28,
      \a_sub_b_carry__0_i_5_0\(0) => registers_n_29,
      addr(7 downto 0) => addr(7 downto 0),
      \bank[2][0]_i_18_0\(3) => alu_n_9,
      \bank[2][0]_i_18_0\(2) => alu_n_10,
      \bank[2][0]_i_18_0\(1) => alu_n_11,
      \bank[2][0]_i_18_0\(0) => alu_n_12,
      \bank[2][4]_i_14_0\(3) => alu_n_13,
      \bank[2][4]_i_14_0\(2) => alu_n_14,
      \bank[2][4]_i_14_0\(1) => alu_n_15,
      \bank[2][4]_i_14_0\(0) => alu_n_16,
      \bank[2][7]_i_13_0\(7 downto 0) => load_register(7 downto 0),
      \bank_reg[12][2]_0\(3) => registers_n_52,
      \bank_reg[12][2]_0\(2) => registers_n_53,
      \bank_reg[12][2]_0\(1) => registers_n_54,
      \bank_reg[12][2]_0\(0) => \bank_reg[9]__0\(1),
      \bank_reg[12][4]_0\(4 downto 0) => instruction_addr0(6 downto 2),
      \bank_reg[12][5]_0\(2) => registers_n_61,
      \bank_reg[12][5]_0\(1) => registers_n_62,
      \bank_reg[12][5]_0\(0) => registers_n_63,
      \bank_reg[13][5]_0\(5 downto 0) => addr1(7 downto 2),
      \bank_reg[8][2]_i_4_0\(3) => alu_n_5,
      \bank_reg[8][2]_i_4_0\(2) => alu_n_6,
      \bank_reg[8][2]_i_4_0\(1) => alu_n_7,
      \bank_reg[8][2]_i_4_0\(0) => alu_n_8,
      \bank_reg[9][0]_0\(0) => \bank_reg[9]_0\(0),
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      instruction_reg_reg => instruction_reg_reg_0,
      instruction_reg_reg_0 => addr(8),
      instruction_reg_reg_1 => addr(9),
      instruction_reg_reg_2 => instruction_reg_reg_1,
      instruction_reg_reg_3 => instruction_reg_reg_2,
      instruction_reg_reg_4 => instruction_reg_reg_3,
      reg_a(7 downto 0) => reg_a(7 downto 0),
      reg_b(7 downto 0) => reg_b(7 downto 0),
      sysclk => sysclk,
      words_reg_0_255_0_0_i_18_0(2) => words_reg_0_255_0_0_i_28_n_0,
      words_reg_0_255_0_0_i_18_0(1) => words_reg_0_255_0_0_i_29_n_0,
      words_reg_0_255_0_0_i_18_0(0) => words_reg_0_255_0_0_i_30_n_0,
      words_reg_0_255_0_0_i_22_0(2) => words_reg_0_255_0_0_i_32_n_0,
      words_reg_0_255_0_0_i_22_0(1) => words_reg_0_255_0_0_i_33_n_0,
      words_reg_0_255_0_0_i_22_0(0) => words_reg_0_255_0_0_i_34_n_0
    );
words_reg_0_255_0_0_i_28: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(7),
      I1 => reg_b(7),
      O => words_reg_0_255_0_0_i_28_n_0
    );
words_reg_0_255_0_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(6),
      I1 => reg_b(6),
      O => words_reg_0_255_0_0_i_29_n_0
    );
words_reg_0_255_0_0_i_30: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(5),
      I1 => reg_b(5),
      O => words_reg_0_255_0_0_i_30_n_0
    );
words_reg_0_255_0_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(4),
      I1 => reg_b(4),
      O => words_reg_0_255_0_0_i_32_n_0
    );
words_reg_0_255_0_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(3),
      I1 => reg_b(3),
      O => words_reg_0_255_0_0_i_33_n_0
    );
words_reg_0_255_0_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(2),
      I1 => reg_b(2),
      O => words_reg_0_255_0_0_i_34_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_plaquita is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    \bank[2][7]_i_20\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_plaquita : entity is "plaquita";
end slower_core_plaquita_0_0_plaquita;

architecture STRUCTURE of slower_core_plaquita_0_0_plaquita is
  signal addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal data_load0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dut_n_0 : STD_LOGIC;
  signal dut_n_11 : STD_LOGIC;
  signal dut_n_12 : STD_LOGIC;
  signal dut_n_13 : STD_LOGIC;
begin
dut: entity work.slower_core_plaquita_0_0_core
     port map (
      D(7 downto 0) => D(7 downto 0),
      addr(9 downto 0) => addr(9 downto 0),
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      instruction_reg_reg_0 => dut_n_0,
      instruction_reg_reg_1 => dut_n_11,
      instruction_reg_reg_2 => dut_n_12,
      instruction_reg_reg_3 => dut_n_13,
      led(3 downto 0) => led(3 downto 0),
      sysclk => sysclk
    );
mem: entity work.slower_core_plaquita_0_0_mem
     port map (
      addr(9 downto 0) => addr(9 downto 0),
      \bank[2][7]_i_20_0\ => \bank[2][7]_i_20\,
      \bank[2][7]_i_20_1\ => dut_n_0,
      \bank[2][7]_i_20_2\ => dut_n_11,
      \bank[2][7]_i_20_3\ => dut_n_12,
      \bank[2][7]_i_20_4\ => dut_n_13,
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0 is
  port (
    sysclk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of slower_core_plaquita_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of slower_core_plaquita_0_0 : entity is "slower_core_plaquita_0_0,plaquita,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of slower_core_plaquita_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of slower_core_plaquita_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of slower_core_plaquita_0_0 : entity is "plaquita,Vivado 2023.1";
end slower_core_plaquita_0_0;

architecture STRUCTURE of slower_core_plaquita_0_0 is
begin
inst: entity work.slower_core_plaquita_0_0_plaquita
     port map (
      D(7 downto 4) => sw(3 downto 0),
      D(3 downto 0) => btn(3 downto 0),
      \bank[2][7]_i_20\ => sysclk,
      led(3 downto 0) => led(3 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
