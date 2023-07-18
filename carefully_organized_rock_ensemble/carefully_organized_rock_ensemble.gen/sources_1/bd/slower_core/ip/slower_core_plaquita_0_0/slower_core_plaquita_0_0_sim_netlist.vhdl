-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jul 18 17:01:32 2023
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
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction_reg_reg[11]\ : out STD_LOGIC;
    \instruction_reg_reg[9]\ : out STD_LOGIC;
    \instruction_reg_reg[9]_0\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_14\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_14_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[8][0]_i_6\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_alu : entity is "alu";
end slower_core_plaquita_0_0_alu;

architecture STRUCTURE of slower_core_plaquita_0_0_alu is
  signal \^o\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \a_sub_b_carry__0_n_1\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_2\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_3\ : STD_LOGIC;
  signal a_sub_b_carry_n_0 : STD_LOGIC;
  signal a_sub_b_carry_n_1 : STD_LOGIC;
  signal a_sub_b_carry_n_2 : STD_LOGIC;
  signal a_sub_b_carry_n_3 : STD_LOGIC;
  signal a_sub_b_carry_n_7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bank[2][0]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bank[8][0]_i_9\ : label is "soft_lutpair0";
begin
  O(2 downto 0) <= \^o\(2 downto 0);
a_sub_b_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => a_sub_b_carry_n_0,
      CO(2) => a_sub_b_carry_n_1,
      CO(1) => a_sub_b_carry_n_2,
      CO(0) => a_sub_b_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 1) => \^o\(2 downto 0),
      O(0) => a_sub_b_carry_n_7,
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
      DI(3 downto 0) => \bank[2][4]_i_14\(3 downto 0),
      O(3 downto 0) => \instruction_reg_reg[1]\(3 downto 0),
      S(3 downto 0) => \bank[2][4]_i_14_0\(3 downto 0)
    );
\bank[2][0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => a_sub_b_carry_n_7,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \instruction_reg_reg[9]\
    );
\bank[8][0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5FF"
    )
        port map (
      I0 => \^o\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \instruction_reg_reg[9]_0\
    );
\bank[8][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC5C5C5C"
    )
        port map (
      I0 => a_sub_b_carry_n_7,
      I1 => \bank[8][0]_i_6\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => \instruction_reg_reg[11]\
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
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC;
    \load_register_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
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
      D => \load_register_reg[7]_1\(0),
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
      D => \load_register_reg[7]_1\(1),
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
      D => \load_register_reg[7]_1\(2),
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
      D => \load_register_reg[7]_1\(3),
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
      D => \load_register_reg[7]_1\(4),
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
      D => \load_register_reg[7]_1\(5),
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
      D => \load_register_reg[7]_1\(6),
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
      D => \load_register_reg[7]_1\(7),
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
      D => D(0),
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
      D => D(1),
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
      D => D(2),
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
      D => D(3),
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
      D => D(4),
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
      D => D(5),
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
      D => D(6),
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
      D => D(7),
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
    \bank[2][7]_i_18_0\ : in STD_LOGIC;
    data_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][7]_i_18_1\ : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \bank[2][7]_i_18_2\ : in STD_LOGIC;
    \bank[2][7]_i_18_3\ : in STD_LOGIC;
    \bank[2][7]_i_18_4\ : in STD_LOGIC
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
\bank[2][0]_i_8\: unisim.vcomponents.LUT6
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
\bank[2][1]_i_11\: unisim.vcomponents.LUT6
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
\bank[2][4]_i_15\: unisim.vcomponents.LUT6
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
\bank[2][6]_i_11\: unisim.vcomponents.LUT6
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
\bank[2][7]_i_18\: unisim.vcomponents.LUT6
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
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_0_255_1_1_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_0_255_2_2_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_0_255_3_3_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_0_255_4_4_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_0_255_5_5_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_0_255_6_6_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_0_255_7_7_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_1\
    );
words_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_256_511_0_0_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_256_511_1_1_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_256_511_2_2_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_256_511_3_3_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_256_511_4_4_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_256_511_5_5_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_256_511_6_6_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_256_511_7_7_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_2\
    );
words_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_512_767_0_0_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_512_767_1_1_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_512_767_2_2_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_512_767_3_3_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_512_767_4_4_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_512_767_5_5_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_512_767_6_6_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_512_767_7_7_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_3\
    );
words_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_768_1023_0_0_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_768_1023_1_1_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_768_1023_2_2_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_768_1023_3_3_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_768_1023_4_4_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_768_1023_5_5_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_768_1023_6_6_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
words_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_768_1023_7_7_n_0,
      WCLK => \bank[2][7]_i_18_0\,
      WE => \bank[2][7]_i_18_4\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_registers is
  port (
    \instruction_reg_reg[12]\ : out STD_LOGIC;
    \instruction_reg_reg[15]\ : out STD_LOGIC;
    \instruction_reg_reg[15]_0\ : out STD_LOGIC;
    \instruction_reg_reg[15]_1\ : out STD_LOGIC;
    \instruction_reg_reg[15]_2\ : out STD_LOGIC;
    \instruction_reg_reg[12]_0\ : out STD_LOGIC;
    \bank_reg[14][7]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank_reg[13][5]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \instruction_reg_reg[9]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \instruction_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bank_reg[9][2]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \bank[2][7]_i_9_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][7]_i_9_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_load0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bank[8][0]_i_7_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[8][0]_i_2_0\ : in STD_LOGIC;
    \bank[8][0]_i_2_1\ : in STD_LOGIC;
    \bank[8][0]_i_5_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    words_reg_0_255_0_0_i_22_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    words_reg_0_255_0_0_i_27_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bank_reg[9][0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_registers : entity is "registers";
end slower_core_plaquita_0_0_registers;

architecture STRUCTURE of slower_core_plaquita_0_0_registers is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \a_sub_b_carry__0_i_7_n_0\ : STD_LOGIC;
  signal addr0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal addr1 : STD_LOGIC_VECTOR ( 9 downto 5 );
  signal addr_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal bank : STD_LOGIC;
  signal \bank[10][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[10][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[11][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][1]_i_2_n_0\ : STD_LOGIC;
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
  signal \bank[12][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][6]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_3_n_0\ : STD_LOGIC;
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
  signal \bank[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_28_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_29_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_31_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_32_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_33_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_34_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_35_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_36_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_37_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_38_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_9_n_0\ : STD_LOGIC;
  signal \bank[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[3][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][6]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_4_n_0\ : STD_LOGIC;
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
  signal \bank[5][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[5][7]_i_8_n_0\ : STD_LOGIC;
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
  signal \bank[8][0]_i_10_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_12_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_14_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_15_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_16_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_17_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_18_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_19_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_20_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_21_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_22_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_23_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_24_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_25_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_26_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_10_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank[8][7]_i_9_n_0\ : STD_LOGIC;
  signal \bank[9][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][2]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][3]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][4]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][5]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][6]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^bank_reg[13][5]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bank_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^bank_reg[14][7]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \bank_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[2][3]_i_19_n_0\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_1\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_2\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_3\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_4\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_5\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_6\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_19_n_7\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_25_n_0\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_26_n_0\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_0\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_1\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_2\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_3\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_4\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_5\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_6\ : STD_LOGIC;
  signal \bank_reg[2][7]_i_30_n_7\ : STD_LOGIC;
  signal \bank_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[8][3]_i_5_n_3\ : STD_LOGIC;
  signal \bank_reg[8][3]_i_8_n_3\ : STD_LOGIC;
  signal \bank_reg[9]_0\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \bank_reg[9]__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \bank_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \bank_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \bank_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \bank_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \bank_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \bank_reg_n_0_[8][6]\ : STD_LOGIC;
  signal en_store : STD_LOGIC;
  signal flags : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal instruction_addr0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \instruction_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \^instruction_reg_reg[15]\ : STD_LOGIC;
  signal \^instruction_reg_reg[15]_0\ : STD_LOGIC;
  signal io_load : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_b : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sel : STD_LOGIC_VECTOR ( 4 downto 3 );
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
  signal \store_register[2]_i_6_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_7_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_10_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_11_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_12_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_13_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_14_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_15_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_6_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_7_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_8_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_9_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_5_n_0\ : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_26_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_33_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_37_n_0 : STD_LOGIC;
  signal \NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bank_reg[8][3]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_30_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_30_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bank[10][1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[10][7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[10][7]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bank[11][1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[11][7]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[11][7]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bank[12][1]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[12][6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[12][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bank[13][0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bank[13][2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \bank[13][3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bank[13][4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bank[13][5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bank[13][6]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \bank[13][7]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bank[13][7]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bank[14][0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bank[14][2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \bank[14][3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[14][4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[14][5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bank[14][6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \bank[14][7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bank[14][7]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[1][1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bank[1][7]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[1][7]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bank[2][0]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[2][1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bank[2][1]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[2][2]_i_15\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[2][2]_i_16\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bank[2][2]_i_9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bank[2][3]_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bank[2][3]_i_15\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[2][3]_i_16\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bank[2][3]_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[2][3]_i_18\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[2][4]_i_18\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[2][4]_i_20\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[2][4]_i_21\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[2][4]_i_22\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[2][4]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bank[2][5]_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[2][5]_i_17\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bank[2][5]_i_18\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[2][5]_i_19\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bank[2][5]_i_20\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bank[2][6]_i_14\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[2][6]_i_15\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[2][6]_i_16\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bank[2][6]_i_18\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank[2][6]_i_19\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bank[2][6]_i_20\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \bank[2][6]_i_22\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bank[2][6]_i_23\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[2][6]_i_24\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bank[2][6]_i_25\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bank[2][7]_i_10\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bank[2][7]_i_16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[2][7]_i_17\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[2][7]_i_23\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[2][7]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bank[3][1]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[3][7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bank[3][7]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bank[3][7]_i_5\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bank[4][1]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[4][6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[4][7]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bank[5][0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[5][1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[5][2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bank[5][3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bank[5][4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bank[5][5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \bank[5][6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bank[5][7]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bank[5][7]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[6][0]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bank[6][1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[6][2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \bank[6][3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bank[6][4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \bank[6][5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bank[6][6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \bank[6][7]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bank[6][7]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[6][7]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[7][0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bank[7][1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[7][2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \bank[7][3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bank[7][4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \bank[7][5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bank[7][6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \bank[7][7]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bank[7][7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bank[8][0]_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[8][0]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[8][0]_i_23\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bank[8][0]_i_26\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[8][0]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[8][1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bank[8][1]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[8][2]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bank[8][3]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bank[8][3]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bank[8][4]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bank[8][5]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[8][6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bank[8][7]_i_8\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bank[8][7]_i_9\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[9][0]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bank[9][1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bank[9][1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bank[9][2]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bank[9][3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank[9][3]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[9][4]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[9][4]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank[9][5]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[9][6]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bank[9][7]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bank[9][7]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bank[9][7]_i_5\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \store_register[0]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \store_register[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \store_register[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \store_register[2]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \store_register[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \store_register[3]_i_11\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \store_register[3]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \store_register[3]_i_15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \store_register[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \store_register[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \store_register[6]_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_16 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_17 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_18 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_19 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_20 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_21 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_22 : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_23 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_25 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_27 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_28 : label is 35;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_29 : label is 35;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_30 : label is 35;
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  \bank_reg[13][5]_0\(4 downto 0) <= \^bank_reg[13][5]_0\(4 downto 0);
  \bank_reg[14][7]_0\(4 downto 0) <= \^bank_reg[14][7]_0\(4 downto 0);
  \instruction_reg_reg[15]\ <= \^instruction_reg_reg[15]\;
  \instruction_reg_reg[15]_0\ <= \^instruction_reg_reg[15]_0\;
\a_sub_b_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      O => \instruction_reg_reg[1]_0\(1)
    );
\a_sub_b_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      O => \instruction_reg_reg[1]_0\(0)
    );
\a_sub_b_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      O => \instruction_reg_reg[1]\(3)
    );
\a_sub_b_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(3),
      I1 => \^d\(6),
      O => \instruction_reg_reg[1]\(2)
    );
\a_sub_b_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \a_sub_b_carry__0_i_7_n_0\,
      O => \instruction_reg_reg[1]\(1)
    );
\a_sub_b_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \^bank_reg[14][7]_0\(2),
      O => \instruction_reg_reg[1]\(0)
    );
\a_sub_b_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACFAAC0AAAAAAAA"
    )
        port map (
      I0 => \store_register[5]_i_4_n_0\,
      I1 => \store_register[5]_i_3_n_0\,
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \store_register[5]_i_2_n_0\,
      I5 => Q(2),
      O => \a_sub_b_carry__0_i_7_n_0\
    );
a_sub_b_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      O => DI(1)
    );
a_sub_b_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      O => DI(0)
    );
a_sub_b_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \^bank_reg[14][7]_0\(1),
      O => S(3)
    );
a_sub_b_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(0),
      I1 => \^d\(2),
      O => S(2)
    );
a_sub_b_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      O => S(1)
    );
a_sub_b_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      O => S(0)
    );
\bank[10][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[10][0]_i_1_n_0\
    );
\bank[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[10][1]_i_2_n_0\,
      O => \bank[10][1]_i_1_n_0\
    );
\bank[10][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[10][7]_i_3_n_0\,
      O => \bank[10][1]_i_2_n_0\
    );
\bank[10][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[10][2]_i_1_n_0\
    );
\bank[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[10][3]_i_1_n_0\
    );
\bank[10][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[10][4]_i_1_n_0\
    );
\bank[10][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[10][5]_i_1_n_0\
    );
\bank[10][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[10][6]_i_1_n_0\
    );
\bank[10][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080BB80808080"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \store_register[2]_i_5_n_0\,
      I4 => Q(0),
      I5 => Q(2),
      O => \bank[10][7]_i_1_n_0\
    );
\bank[10][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[10][7]_i_4_n_0\,
      O => \bank[10][7]_i_2_n_0\
    );
\bank[10][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[10][7]_i_3_n_0\
    );
\bank[10][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30A0"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[10][7]_i_3_n_0\,
      O => \bank[10][7]_i_4_n_0\
    );
\bank[11][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[11][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[11][0]_i_1_n_0\
    );
\bank[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[11][1]_i_2_n_0\,
      O => \bank[11][1]_i_1_n_0\
    );
\bank[11][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[11][7]_i_3_n_0\,
      O => \bank[11][1]_i_2_n_0\
    );
\bank[11][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[11][2]_i_1_n_0\
    );
\bank[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[11][3]_i_1_n_0\
    );
\bank[11][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[11][4]_i_1_n_0\
    );
\bank[11][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[11][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[11][5]_i_1_n_0\
    );
\bank[11][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[11][6]_i_1_n_0\
    );
\bank[11][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080BB8080808080"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[11][7]_i_3_n_0\,
      I3 => Q(1),
      I4 => \bank[3][7]_i_4_n_0\,
      I5 => Q(2),
      O => \bank[11][7]_i_1_n_0\
    );
\bank[11][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[11][7]_i_4_n_0\,
      O => \bank[11][7]_i_2_n_0\
    );
\bank[11][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(3),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(4),
      O => \bank[11][7]_i_3_n_0\
    );
\bank[11][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30A0"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[11][7]_i_3_n_0\,
      O => \bank[11][7]_i_4_n_0\
    );
\bank[12][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[12][6]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[12][0]_i_1_n_0\
    );
\bank[12][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[12][1]_i_2_n_0\,
      O => \bank[12][1]_i_1_n_0\
    );
\bank[12][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[12][6]_i_2_n_0\,
      I3 => \^d\(1),
      O => \bank[12][1]_i_2_n_0\
    );
\bank[12][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[12][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[12][2]_i_1_n_0\
    );
\bank[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[12][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[12][3]_i_1_n_0\
    );
\bank[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[12][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[12][4]_i_1_n_0\
    );
\bank[12][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[12][6]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[12][5]_i_1_n_0\
    );
\bank[12][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[12][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[12][6]_i_1_n_0\
    );
\bank[12][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(6),
      O => \bank[12][6]_i_2_n_0\
    );
\bank[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(5),
      I4 => Q(3),
      I5 => Q(4),
      O => \bank[12][7]_i_1_n_0\
    );
\bank[12][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[12][7]_i_3_n_0\,
      O => \bank[12][7]_i_2_n_0\
    );
\bank[12][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[12][6]_i_2_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[12][7]_i_3_n_0\
    );
\bank[13][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[13][7]_i_3_n_0\,
      O => \bank[13][0]_i_1_n_0\
    );
\bank[13][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[13][7]_i_3_n_0\,
      I3 => \^d\(1),
      O => \bank[13][1]_i_1_n_0\
    );
\bank[13][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[13][2]_i_1_n_0\
    );
\bank[13][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[13][3]_i_1_n_0\
    );
\bank[13][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[13][4]_i_1_n_0\
    );
\bank[13][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[13][7]_i_3_n_0\,
      O => \bank[13][5]_i_1_n_0\
    );
\bank[13][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[13][6]_i_1_n_0\
    );
\bank[13][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[13][7]_i_1_n_0\
    );
\bank[13][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[13][7]_i_3_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[13][7]_i_2_n_0\
    );
\bank[13][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[5][7]_i_4_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => Q(6),
      O => \bank[13][7]_i_3_n_0\
    );
\bank[14][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[14][7]_i_3_n_0\,
      O => \bank[14][0]_i_1_n_0\
    );
\bank[14][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[14][7]_i_3_n_0\,
      I3 => \^d\(1),
      O => \bank[14][1]_i_1_n_0\
    );
\bank[14][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[14][2]_i_1_n_0\
    );
\bank[14][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[14][3]_i_1_n_0\
    );
\bank[14][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[14][4]_i_1_n_0\
    );
\bank[14][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[14][7]_i_3_n_0\,
      O => \bank[14][5]_i_1_n_0\
    );
\bank[14][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[14][6]_i_1_n_0\
    );
\bank[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[14][7]_i_1_n_0\
    );
\bank[14][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[14][7]_i_3_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[14][7]_i_2_n_0\
    );
\bank[14][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(5),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(6),
      O => \bank[14][7]_i_3_n_0\
    );
\bank[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[1][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[1][0]_i_1_n_0\
    );
\bank[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[1][1]_i_2_n_0\,
      O => \bank[1][1]_i_1_n_0\
    );
\bank[1][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[1][7]_i_3_n_0\,
      O => \bank[1][1]_i_2_n_0\
    );
\bank[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[1][2]_i_1_n_0\
    );
\bank[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[1][3]_i_1_n_0\
    );
\bank[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[1][4]_i_1_n_0\
    );
\bank[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[1][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[1][5]_i_1_n_0\
    );
\bank[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[1][6]_i_1_n_0\
    );
\bank[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAB000000030003"
    )
        port map (
      I0 => \bank[1][7]_i_3_n_0\,
      I1 => Q(2),
      I2 => \bank[3][7]_i_4_n_0\,
      I3 => Q(1),
      I4 => \bank[2][7]_i_3_n_0\,
      I5 => \bank[2][7]_i_4_n_0\,
      O => bank
    );
\bank[1][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[1][7]_i_4_n_0\,
      O => \bank[1][7]_i_2_n_0\
    );
\bank[1][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(6),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(5),
      O => \bank[1][7]_i_3_n_0\
    );
\bank[1][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30A0"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[1][7]_i_3_n_0\,
      O => \bank[1][7]_i_4_n_0\
    );
\bank[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[2][0]_i_1_n_0\
    );
\bank[2][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \^d\(6),
      I1 => \^d\(2),
      I2 => Q(4),
      I3 => \bank[2][4]_i_2_n_0\,
      I4 => Q(5),
      I5 => \store_register[0]_i_2_n_0\,
      O => \bank[2][0]_i_10_n_0\
    );
\bank[2][0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(4),
      I1 => \store_register[0]_i_2_n_0\,
      I2 => Q(3),
      O => \bank[2][0]_i_11_n_0\
    );
\bank[2][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0074"
    )
        port map (
      I0 => \bank[2][0]_i_3_n_0\,
      I1 => \bank[8][0]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank[2][6]_i_9_n_0\,
      I4 => \bank[2][0]_i_4_n_0\,
      O => \bank[2][0]_i_2_n_0\
    );
\bank[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B888B8BBB888"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \bank[2][7]_i_17_n_0\,
      I2 => \bank[2][0]_i_5_n_0\,
      I3 => \bank[2][6]_i_19_n_0\,
      I4 => \bank[8][0]_i_5_0\,
      I5 => \bank[2][0]_i_7_n_0\,
      O => \bank[2][0]_i_3_n_0\
    );
\bank[2][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00BFBB0F008F88"
    )
        port map (
      I0 => data_load0(0),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \store_register[3]_i_3_n_0\,
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[2][7]_i_15_n_0\,
      I5 => io_load(0),
      O => \bank[2][0]_i_4_n_0\
    );
\bank[2][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \bank[2][1]_i_16_n_0\,
      I1 => Q(3),
      I2 => \bank[2][0]_i_10_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => Q(5),
      I5 => \bank[2][0]_i_11_n_0\,
      O => \bank[2][0]_i_5_n_0\
    );
\bank[2][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD04DD4101041141"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => \store_register[3]_i_3_n_0\,
      I3 => Q(8),
      I4 => \store_register[0]_i_2_n_0\,
      I5 => \bank_reg[2][3]_i_19_n_7\,
      O => \bank[2][0]_i_7_n_0\
    );
\bank[2][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(0),
      I5 => \bank[2][7]_i_9_1\(0),
      O => io_load(0)
    );
\bank[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[2][1]_i_5_n_0\,
      O => \bank[2][1]_i_1_n_0\
    );
\bank[2][1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080B3BF"
    )
        port map (
      I0 => \bank[2][1]_i_13_n_0\,
      I1 => Q(10),
      I2 => Q(9),
      I3 => O(0),
      I4 => \bank[2][1]_i_14_n_0\,
      O => \bank[2][1]_i_10_n_0\
    );
\bank[2][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(1),
      I5 => \bank[2][7]_i_9_1\(1),
      O => io_load(1)
    );
\bank[2][1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA20AA20AAA8AA"
    )
        port map (
      I0 => \bank[2][1]_i_15_n_0\,
      I1 => Q(3),
      I2 => \bank[2][1]_i_16_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => \bank[2][2]_i_15_n_0\,
      I5 => \bank[2][2]_i_16_n_0\,
      O => \bank[2][1]_i_13_n_0\
    );
\bank[2][1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF14001454405440"
    )
        port map (
      I0 => Q(10),
      I1 => reg_b(1),
      I2 => \^d\(1),
      I3 => Q(8),
      I4 => \bank_reg[2][3]_i_19_n_6\,
      I5 => Q(9),
      O => \bank[2][1]_i_14_n_0\
    );
\bank[2][1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF8B"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => Q(3),
      I2 => \^d\(1),
      I3 => Q(4),
      I4 => \bank[2][6]_i_20_n_0\,
      I5 => Q(5),
      O => \bank[2][1]_i_15_n_0\
    );
\bank[2][1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF000F0FF"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \a_sub_b_carry__0_i_7_n_0\,
      I3 => Q(5),
      I4 => \^d\(1),
      I5 => Q(4),
      O => \bank[2][1]_i_16_n_0\
    );
\bank[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \bank[2][1]_i_6_n_0\,
      I1 => \bank[2][1]_i_7_n_0\,
      I2 => \bank[2][1]_i_8_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][1]_i_9_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => reg_b(1)
    );
\bank[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A808A8080808A8"
    )
        port map (
      I0 => \bank[2][7]_i_15_n_0\,
      I1 => Q(4),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][1]_i_10_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \^d\(1),
      O => \bank[2][1]_i_3_n_0\
    );
\bank[2][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => data_load0(1),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][2]_i_12_n_0\,
      I3 => io_load(1),
      O => \bank[2][1]_i_4_n_0\
    );
\bank[2][1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][7]_i_5_n_0\,
      O => \bank[2][1]_i_5_n_0\
    );
\bank[2][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(1),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => instruction_addr0(3),
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(1),
      O => \bank[2][1]_i_6_n_0\
    );
\bank[2][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[10]\(1),
      I1 => \bank_reg[11]\(1),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => flags(1),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank[9][1]_i_3_n_0\,
      O => \bank[2][1]_i_7_n_0\
    );
\bank[2][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \bank_reg[4]\(1),
      I1 => \bank_reg[5]\(1),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[6]\(1),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[7]\(1),
      O => \bank[2][1]_i_8_n_0\
    );
\bank[2][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CF00C000A000A0"
    )
        port map (
      I0 => \bank_reg[2]\(1),
      I1 => \bank_reg[3]\(1),
      I2 => Q(4),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \bank_reg[1]\(1),
      I5 => Q(3),
      O => \bank[2][1]_i_9_n_0\
    );
\bank[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[2][2]_i_1_n_0\
    );
\bank[2][2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(2),
      I5 => \bank[2][7]_i_9_1\(2),
      O => io_load(2)
    );
\bank[2][2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFF0AFBFFFFFFFF"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(14),
      I4 => Q(11),
      I5 => \bank[2][7]_i_20_n_0\,
      O => \bank[2][2]_i_12_n_0\
    );
\bank[2][2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008BFFFF008B0000"
    )
        port map (
      I0 => \bank[2][3]_i_17_n_0\,
      I1 => Q(3),
      I2 => \bank[2][2]_i_15_n_0\,
      I3 => \bank[2][2]_i_16_n_0\,
      I4 => \bank[2][6]_i_20_n_0\,
      I5 => \bank[2][2]_i_17_n_0\,
      O => \bank[2][2]_i_13_n_0\
    );
\bank[2][2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF14001454405440"
    )
        port map (
      I0 => Q(10),
      I1 => \^bank_reg[14][7]_0\(0),
      I2 => \^d\(2),
      I3 => Q(8),
      I4 => \bank_reg[2][3]_i_19_n_5\,
      I5 => Q(9),
      O => \bank[2][2]_i_14_n_0\
    );
\bank[2][2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30773044"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => Q(4),
      I2 => \^d\(6),
      I3 => Q(5),
      I4 => \^d\(2),
      O => \bank[2][2]_i_15_n_0\
    );
\bank[2][2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => Q(5),
      O => \bank[2][2]_i_16_n_0\
    );
\bank[2][2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFBFAFAABFB"
    )
        port map (
      I0 => Q(5),
      I1 => \^d\(2),
      I2 => Q(3),
      I3 => \^d\(1),
      I4 => Q(4),
      I5 => \store_register[0]_i_2_n_0\,
      O => \bank[2][2]_i_17_n_0\
    );
\bank[2][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \bank[2][2]_i_5_n_0\,
      I1 => \bank[2][2]_i_6_n_0\,
      I2 => \bank[2][2]_i_7_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][2]_i_8_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => \^bank_reg[14][7]_0\(0)
    );
\bank[2][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454045404040454"
    )
        port map (
      I0 => \bank[2][6]_i_9_n_0\,
      I1 => Q(5),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][2]_i_9_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \^d\(2),
      O => \bank[2][2]_i_3_n_0\
    );
\bank[2][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => data_load0(2),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => io_load(2),
      I5 => \bank[2][2]_i_12_n_0\,
      O => \bank[2][2]_i_4_n_0\
    );
\bank[2][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(2),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => instruction_addr0(4),
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(2),
      O => \bank[2][2]_i_5_n_0\
    );
\bank[2][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AA33AA33"
    )
        port map (
      I0 => flags(2),
      I1 => \bank[9][2]_i_2_n_0\,
      I2 => \bank_reg[10]\(2),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \bank_reg[11]\(2),
      I5 => \bank[6][7]_i_3_n_0\,
      O => \bank[2][2]_i_6_n_0\
    );
\bank[2][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[6]\(2),
      I1 => \bank_reg[7]\(2),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[4]\(2),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[5]\(2),
      O => \bank[2][2]_i_7_n_0\
    );
\bank[2][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(2),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(2),
      I4 => Q(3),
      I5 => \bank_reg[3]\(2),
      O => \bank[2][2]_i_8_n_0\
    );
\bank[2][2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080B3BF"
    )
        port map (
      I0 => \bank[2][2]_i_13_n_0\,
      I1 => Q(10),
      I2 => Q(9),
      I3 => O(1),
      I4 => \bank[2][2]_i_14_n_0\,
      O => \bank[2][2]_i_9_n_0\
    );
\bank[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[2][3]_i_1_n_0\
    );
\bank[2][3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(3),
      I5 => \bank[2][7]_i_9_1\(3),
      O => io_load(3)
    );
\bank[2][3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bank[4][7]_i_3_n_0\,
      I1 => Q(5),
      I2 => Q(6),
      O => \bank[2][3]_i_12_n_0\
    );
\bank[2][3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[6]\(3),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[7]\(3),
      O => \bank[2][3]_i_13_n_0\
    );
\bank[2][3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC00BBBBFC008888"
    )
        port map (
      I0 => \bank[2][3]_i_17_n_0\,
      I1 => Q(6),
      I2 => \bank[2][4]_i_21_n_0\,
      I3 => \bank[2][4]_i_22_n_0\,
      I4 => Q(3),
      I5 => \bank[2][3]_i_18_n_0\,
      O => \bank[2][3]_i_14_n_0\
    );
\bank[2][3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(5),
      I1 => \bank[2][7]_i_28_n_0\,
      O => \bank[2][3]_i_15_n_0\
    );
\bank[2][3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"443C74F3"
    )
        port map (
      I0 => \bank_reg[2][3]_i_19_n_4\,
      I1 => Q(9),
      I2 => \store_register[3]_i_6_n_0\,
      I3 => Q(8),
      I4 => \^bank_reg[14][7]_0\(1),
      O => \bank[2][3]_i_16_n_0\
    );
\bank[2][3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => Q(5),
      I4 => \store_register[3]_i_6_n_0\,
      O => \bank[2][3]_i_17_n_0\
    );
\bank[2][3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => Q(5),
      I4 => \store_register[3]_i_6_n_0\,
      O => \bank[2][3]_i_18_n_0\
    );
\bank[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFBBBBAAAAAAFF"
    )
        port map (
      I0 => \bank[2][3]_i_5_n_0\,
      I1 => \bank[2][3]_i_6_n_0\,
      I2 => \bank[2][3]_i_7_n_0\,
      I3 => \bank[2][3]_i_8_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => \^bank_reg[14][7]_0\(1)
    );
\bank[2][3]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      O => \bank[2][3]_i_20_n_0\
    );
\bank[2][3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \^bank_reg[14][7]_0\(1),
      O => \bank[2][3]_i_21_n_0\
    );
\bank[2][3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656569A9A9A569A"
    )
        port map (
      I0 => \^d\(2),
      I1 => \store_register[3]_i_11_n_0\,
      I2 => \bank_reg[2][3]_i_25_n_0\,
      I3 => \bank[2][2]_i_6_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][2]_i_5_n_0\,
      O => \bank[2][3]_i_22_n_0\
    );
\bank[2][3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656569A9A9A569A"
    )
        port map (
      I0 => \^d\(1),
      I1 => \store_register[3]_i_11_n_0\,
      I2 => \bank_reg[2][3]_i_26_n_0\,
      I3 => \bank[2][1]_i_7_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][1]_i_6_n_0\,
      O => \bank[2][3]_i_23_n_0\
    );
\bank[2][3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656569A9A9A569A"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \store_register[3]_i_11_n_0\,
      I2 => \bank[2][3]_i_27_n_0\,
      I3 => \store_register[3]_i_8_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \store_register[3]_i_7_n_0\,
      O => \bank[2][3]_i_24_n_0\
    );
\bank[2][3]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \bank[8][0]_i_20_n_0\,
      I1 => \store_register[3]_i_15_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \store_register[3]_i_10_n_0\,
      O => \bank[2][3]_i_27_n_0\
    );
\bank[2][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045454540454"
    )
        port map (
      I0 => \bank[2][6]_i_9_n_0\,
      I1 => Q(6),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][3]_i_9_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \store_register[3]_i_6_n_0\,
      O => \bank[2][3]_i_3_n_0\
    );
\bank[2][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FBBBF000F888"
    )
        port map (
      I0 => data_load0(3),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_7_n_0\,
      I4 => \bank[2][7]_i_15_n_0\,
      I5 => io_load(3),
      O => \bank[2][3]_i_4_n_0\
    );
\bank[2][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A2020202A20"
    )
        port map (
      I0 => \bank[2][3]_i_12_n_0\,
      I1 => \bank[2][3]_i_13_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[5]\(3),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[4]\(3),
      O => \bank[2][3]_i_5_n_0\
    );
\bank[2][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3F3F505F3030"
    )
        port map (
      I0 => \bank_reg[10]\(3),
      I1 => \bank_reg[11]\(3),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => flags(3),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank[9][3]_i_2_n_0\,
      O => \bank[2][3]_i_6_n_0\
    );
\bank[2][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F1010101F1F1F"
    )
        port map (
      I0 => Q(3),
      I1 => \bank_reg[14]\(3),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[12][3]\,
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => addr1(5),
      O => \bank[2][3]_i_7_n_0\
    );
\bank[2][3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F3F005F5F3F3F"
    )
        port map (
      I0 => \bank_reg[2]\(3),
      I1 => \bank_reg[3]\(3),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[1]\(3),
      O => \bank[2][3]_i_8_n_0\
    );
\bank[2][3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \bank[2][3]_i_14_n_0\,
      I1 => \bank[2][3]_i_15_n_0\,
      I2 => \bank[2][6]_i_19_n_0\,
      I3 => O(2),
      I4 => \bank[2][6]_i_20_n_0\,
      I5 => \bank[2][3]_i_16_n_0\,
      O => \bank[2][3]_i_9_n_0\
    );
\bank[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[2][4]_i_1_n_0\
    );
\bank[2][4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \bank_reg[4]\(4),
      I1 => \bank_reg[5]\(4),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[6]\(4),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[7]\(4),
      O => \bank[2][4]_i_10_n_0\
    );
\bank[2][4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0EEC022"
    )
        port map (
      I0 => \bank_reg[1]\(4),
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank_reg[2]\(4),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \bank_reg[3]\(4),
      O => \bank[2][4]_i_11_n_0\
    );
\bank[2][4]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB8CC"
    )
        port map (
      I0 => \bank_reg[14]\(4),
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank_reg_n_0_[12][4]\,
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \^bank_reg[13][5]_0\(3),
      O => \bank[2][4]_i_12_n_0\
    );
\bank[2][4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AF3F3FA0A0303"
    )
        port map (
      I0 => \bank_reg_n_0_[8][4]\,
      I1 => \bank[9][4]_i_3_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[10]\(4),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[11]\(4),
      O => \bank[2][4]_i_13_n_0\
    );
\bank[2][4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFAFCF"
    )
        port map (
      I0 => \bank[2][4]_i_17_n_0\,
      I1 => \bank[2][4]_i_18_n_0\,
      I2 => \bank[2][6]_i_19_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => \bank[8][0]_i_7_0\(0),
      I5 => \bank[2][4]_i_19_n_0\,
      O => \bank[2][4]_i_14_n_0\
    );
\bank[2][4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(4),
      I5 => \bank[2][7]_i_9_1\(4),
      O => io_load(4)
    );
\bank[2][4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B800"
    )
        port map (
      I0 => \bank[2][5]_i_17_n_0\,
      I1 => Q(6),
      I2 => \bank[2][4]_i_20_n_0\,
      I3 => Q(3),
      I4 => \bank[2][4]_i_21_n_0\,
      I5 => \bank[2][4]_i_22_n_0\,
      O => \bank[2][4]_i_17_n_0\
    );
\bank[2][4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => Q(4),
      I1 => \store_register[0]_i_2_n_0\,
      I2 => Q(3),
      I3 => Q(5),
      I4 => \bank[8][3]_i_7_n_0\,
      O => \bank[2][4]_i_18_n_0\
    );
\bank[2][4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF41004145044504"
    )
        port map (
      I0 => Q(10),
      I1 => \^bank_reg[14][7]_0\(2),
      I2 => \bank[2][4]_i_2_n_0\,
      I3 => Q(8),
      I4 => \bank_reg[2][7]_i_30_n_7\,
      I5 => Q(9),
      O => \bank[2][4]_i_19_n_0\
    );
\bank[2][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202222222020202"
    )
        port map (
      I0 => \bank[2][4]_i_6_n_0\,
      I1 => \bank[2][4]_i_7_n_0\,
      I2 => \store_register[2]_i_3_n_0\,
      I3 => \bank[2][4]_i_8_n_0\,
      I4 => \store_register[2]_i_5_n_0\,
      I5 => \bank[2][4]_i_9_n_0\,
      O => \bank[2][4]_i_2_n_0\
    );
\bank[2][4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCCA"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => Q(5),
      I3 => Q(4),
      O => \bank[2][4]_i_20_n_0\
    );
\bank[2][4]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      I1 => Q(5),
      O => \bank[2][4]_i_21_n_0\
    );
\bank[2][4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CEFE"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => Q(5),
      I2 => Q(4),
      I3 => \^d\(6),
      O => \bank[2][4]_i_22_n_0\
    );
\bank[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \bank[2][4]_i_10_n_0\,
      I1 => \bank[2][4]_i_11_n_0\,
      I2 => \bank[2][4]_i_12_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][4]_i_13_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => \^bank_reg[14][7]_0\(2)
    );
\bank[2][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045454540454"
    )
        port map (
      I0 => \bank[2][6]_i_9_n_0\,
      I1 => Q(7),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][4]_i_14_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \bank[2][4]_i_2_n_0\,
      O => \bank[2][4]_i_4_n_0\
    );
\bank[2][4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F888F888"
    )
        port map (
      I0 => data_load0(4),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][6]_i_12_n_0\,
      I3 => io_load(4),
      I4 => \^bank_reg[14][7]_0\(2),
      I5 => \bank[2][7]_i_7_n_0\,
      O => \bank[2][4]_i_5_n_0\
    );
\bank[2][4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFBFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => \bank_reg[3]\(4),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(0),
      I5 => \bank_reg[1]\(4),
      O => \bank[2][4]_i_6_n_0\
    );
\bank[2][4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bank_reg[2]\(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(2),
      O => \bank[2][4]_i_7_n_0\
    );
\bank[2][4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => \bank_reg_n_0_[8][4]\,
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank[9][4]_i_3_n_0\,
      O => \bank[2][4]_i_8_n_0\
    );
\bank[2][4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(4),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(4),
      O => \bank[2][4]_i_9_n_0\
    );
\bank[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[2][5]_i_1_n_0\
    );
\bank[2][5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(5),
      I5 => \bank[2][7]_i_9_1\(5),
      O => io_load(5)
    );
\bank[2][5]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA32AA02"
    )
        port map (
      I0 => \bank_reg[4]\(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \bank_reg[5]\(5),
      O => \bank[2][5]_i_12_n_0\
    );
\bank[2][5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2202AA8AAA8AAA8A"
    )
        port map (
      I0 => \bank[2][5]_i_16_n_0\,
      I1 => Q(3),
      I2 => Q(6),
      I3 => \bank[2][5]_i_17_n_0\,
      I4 => \bank[2][6]_i_22_n_0\,
      I5 => \^d\(6),
      O => \bank[2][5]_i_13_n_0\
    );
\bank[2][5]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[2][5]_i_18_n_0\,
      I1 => Q(5),
      I2 => \bank[2][5]_i_19_n_0\,
      I3 => Q(4),
      I4 => \bank[2][5]_i_20_n_0\,
      O => \bank[2][5]_i_14_n_0\
    );
\bank[2][5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF14001415011501"
    )
        port map (
      I0 => Q(10),
      I1 => \bank[2][5]_i_2_n_0\,
      I2 => \a_sub_b_carry__0_i_7_n_0\,
      I3 => Q(8),
      I4 => \bank_reg[2][7]_i_30_n_6\,
      I5 => Q(9),
      O => \bank[2][5]_i_15_n_0\
    );
\bank[2][5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFECCCCCCFE"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => Q(6),
      I2 => Q(3),
      I3 => Q(4),
      I4 => Q(5),
      I5 => \bank[5][7]_i_6_n_0\,
      O => \bank[2][5]_i_16_n_0\
    );
\bank[2][5]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FECE"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => Q(5),
      I2 => Q(4),
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[2][5]_i_17_n_0\
    );
\bank[2][5]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAB"
    )
        port map (
      I0 => Q(4),
      I1 => \^d\(1),
      I2 => Q(3),
      I3 => \store_register[0]_i_2_n_0\,
      O => \bank[2][5]_i_18_n_0\
    );
\bank[2][5]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^d\(2),
      I1 => Q(3),
      I2 => \store_register[3]_i_6_n_0\,
      O => \bank[2][5]_i_19_n_0\
    );
\bank[2][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_5_n_0\,
      I1 => \bank[2][5]_i_6_n_0\,
      I2 => \store_register[3]_i_11_n_0\,
      I3 => \bank[2][5]_i_7_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][5]_i_8_n_0\,
      O => \bank[2][5]_i_2_n_0\
    );
\bank[2][5]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => Q(3),
      I2 => \a_sub_b_carry__0_i_7_n_0\,
      O => \bank[2][5]_i_20_n_0\
    );
\bank[2][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045454540454"
    )
        port map (
      I0 => \bank[2][6]_i_9_n_0\,
      I1 => Q(8),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][5]_i_9_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \a_sub_b_carry__0_i_7_n_0\,
      O => \bank[2][5]_i_3_n_0\
    );
\bank[2][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFF888F888"
    )
        port map (
      I0 => data_load0(5),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][6]_i_12_n_0\,
      I3 => io_load(5),
      I4 => \bank[2][5]_i_2_n_0\,
      I5 => \bank[2][7]_i_7_n_0\,
      O => \bank[2][5]_i_4_n_0\
    );
\bank[2][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F004F703F304F7"
    )
        port map (
      I0 => \bank_reg[14]\(5),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[12][5]\,
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(4),
      O => \bank[2][5]_i_5_n_0\
    );
\bank[2][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3F3F505F3030"
    )
        port map (
      I0 => \bank_reg[10]\(5),
      I1 => \bank_reg[11]\(5),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[8][5]\,
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank[9][5]_i_2_n_0\,
      O => \bank[2][5]_i_6_n_0\
    );
\bank[2][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10551555"
    )
        port map (
      I0 => \bank[2][5]_i_12_n_0\,
      I1 => \bank_reg[7]\(5),
      I2 => Q(3),
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => \bank_reg[6]\(5),
      O => \bank[2][5]_i_7_n_0\
    );
\bank[2][5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF35FF0FFF35FFFF"
    )
        port map (
      I0 => \bank_reg[2]\(5),
      I1 => \bank_reg[3]\(5),
      I2 => Q(3),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(4),
      I5 => \bank_reg[1]\(5),
      O => \bank[2][5]_i_8_n_0\
    );
\bank[2][5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFAFCF"
    )
        port map (
      I0 => \bank[2][5]_i_13_n_0\,
      I1 => \bank[2][5]_i_14_n_0\,
      I2 => \bank[2][6]_i_19_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => \bank[8][0]_i_7_0\(1),
      I5 => \bank[2][5]_i_15_n_0\,
      O => \bank[2][5]_i_9_n_0\
    );
\bank[2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[2][6]_i_1_n_0\
    );
\bank[2][6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFAFCF"
    )
        port map (
      I0 => \bank[2][6]_i_17_n_0\,
      I1 => \bank[2][6]_i_18_n_0\,
      I2 => \bank[2][6]_i_19_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => \bank[8][0]_i_7_0\(2),
      I5 => \bank[2][6]_i_21_n_0\,
      O => \bank[2][6]_i_10_n_0\
    );
\bank[2][6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC0C0C00000400"
    )
        port map (
      I0 => Q(11),
      I1 => words_reg_0_255_0_0_i_15_n_0,
      I2 => Q(13),
      I3 => Q(12),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => Q(14),
      O => \bank[2][6]_i_12_n_0\
    );
\bank[2][6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(6),
      I5 => \bank[2][7]_i_9_1\(6),
      O => io_load(6)
    );
\bank[2][6]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      O => \bank[2][6]_i_14_n_0\
    );
\bank[2][6]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F30200"
    )
        port map (
      I0 => \bank_reg[10]\(6),
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => \bank_reg_n_0_[8][6]\,
      O => \bank[2][6]_i_15_n_0\
    );
\bank[2][6]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(3),
      O => \bank[2][6]_i_16_n_0\
    );
\bank[2][6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F35100FFFF5504"
    )
        port map (
      I0 => \bank[9][7]_i_5_n_0\,
      I1 => \bank[2][6]_i_22_n_0\,
      I2 => Q(3),
      I3 => Q(6),
      I4 => \bank[5][7]_i_6_n_0\,
      I5 => \^d\(6),
      O => \bank[2][6]_i_17_n_0\
    );
\bank[2][6]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \bank[2][6]_i_23_n_0\,
      I1 => Q(5),
      I2 => \bank[2][6]_i_24_n_0\,
      I3 => \bank[2][6]_i_25_n_0\,
      I4 => Q(4),
      O => \bank[2][6]_i_18_n_0\
    );
\bank[2][6]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      O => \bank[2][6]_i_19_n_0\
    );
\bank[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88CC88CC0F000FFF"
    )
        port map (
      I0 => \bank[2][6]_i_5_n_0\,
      I1 => \bank[2][6]_i_6_n_0\,
      I2 => \bank[2][6]_i_7_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][6]_i_8_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => \^bank_reg[14][7]_0\(3)
    );
\bank[2][6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(8),
      O => \bank[2][6]_i_20_n_0\
    );
\bank[2][6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF14001454405440"
    )
        port map (
      I0 => Q(10),
      I1 => \^bank_reg[14][7]_0\(3),
      I2 => \^d\(6),
      I3 => Q(8),
      I4 => \bank_reg[2][7]_i_30_n_5\,
      I5 => Q(9),
      O => \bank[2][6]_i_21_n_0\
    );
\bank[2][6]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \bank[2][6]_i_22_n_0\
    );
\bank[2][6]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF88CFBB"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => Q(4),
      I2 => \^d\(1),
      I3 => Q(3),
      I4 => \^d\(2),
      O => \bank[2][6]_i_23_n_0\
    );
\bank[2][6]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => Q(3),
      I2 => \bank[2][4]_i_2_n_0\,
      O => \bank[2][6]_i_24_n_0\
    );
\bank[2][6]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(5),
      I1 => Q(3),
      I2 => \^d\(6),
      O => \bank[2][6]_i_25_n_0\
    );
\bank[2][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454045404040454"
    )
        port map (
      I0 => \bank[2][6]_i_9_n_0\,
      I1 => Q(9),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][6]_i_10_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \^d\(6),
      O => \bank[2][6]_i_3_n_0\
    );
\bank[2][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000F888F888"
    )
        port map (
      I0 => data_load0(6),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][6]_i_12_n_0\,
      I3 => io_load(6),
      I4 => \^bank_reg[14][7]_0\(3),
      I5 => \bank[2][7]_i_7_n_0\,
      O => \bank[2][6]_i_4_n_0\
    );
\bank[2][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(6),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[12][6]\,
      I4 => Q(3),
      I5 => addr1(8),
      O => \bank[2][6]_i_5_n_0\
    );
\bank[2][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFF1FFF1"
    )
        port map (
      I0 => \store_register[6]_i_4_n_0\,
      I1 => \bank[2][6]_i_14_n_0\,
      I2 => \bank[2][6]_i_15_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][6]_i_16_n_0\,
      I5 => \bank_reg[11]\(6),
      O => \bank[2][6]_i_6_n_0\
    );
\bank[2][6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => \bank_reg[4]\(6),
      I1 => \bank_reg[5]\(6),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[6]\(6),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[7]\(6),
      O => \bank[2][6]_i_7_n_0\
    );
\bank[2][6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCFFFFDFDCFFF"
    )
        port map (
      I0 => \bank_reg[1]\(6),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(6),
      I4 => Q(3),
      I5 => \bank_reg[3]\(6),
      O => \bank[2][6]_i_8_n_0\
    );
\bank[2][6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020ECFF2020ECFF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(14),
      I2 => flags(7),
      I3 => Q(11),
      I4 => Q(13),
      I5 => Q(12),
      O => \bank[2][6]_i_9_n_0\
    );
\bank[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080808080BB"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => Q(2),
      I4 => \store_register[2]_i_5_n_0\,
      I5 => Q(0),
      O => \bank[2][7]_i_1_n_0\
    );
\bank[2][7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30A0"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][7]_i_5_n_0\,
      O => \bank[2][7]_i_10_n_0\
    );
\bank[2][7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(7),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[12][7]\,
      I4 => Q(3),
      I5 => addr1(9),
      O => \bank[2][7]_i_11_n_0\
    );
\bank[2][7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => \bank[2][7]_i_22_n_0\,
      I1 => \bank[9][7]_i_2_n_0\,
      I2 => Q(4),
      I3 => \bank[5][7]_i_4_n_0\,
      O => \bank[2][7]_i_12_n_0\
    );
\bank[2][7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[6]\(7),
      I1 => \bank_reg[7]\(7),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[4]\(7),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[5]\(7),
      O => \bank[2][7]_i_13_n_0\
    );
\bank[2][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(7),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(7),
      I4 => Q(3),
      I5 => \bank_reg[3]\(7),
      O => \bank[2][7]_i_14_n_0\
    );
\bank[2][7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFFFDCCCCFDFD"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_15_n_0\
    );
\bank[2][7]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B00BBFF"
    )
        port map (
      I0 => \bank[2][7]_i_23_n_0\,
      I1 => Q(9),
      I2 => \bank[8][0]_i_7_0\(3),
      I3 => Q(10),
      I4 => \bank[2][7]_i_24_n_0\,
      O => \bank[2][7]_i_16_n_0\
    );
\bank[2][7]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(8),
      I1 => Q(10),
      I2 => Q(9),
      O => \bank[2][7]_i_17_n_0\
    );
\bank[2][7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF7FFFF"
    )
        port map (
      I0 => addr_0(7),
      I1 => addr_0(6),
      I2 => words_reg_0_255_0_0_i_27_n_0,
      I3 => \bank[2][7]_i_25_n_0\,
      I4 => addr_0(8),
      I5 => \bank[2][7]_i_15_n_0\,
      O => \bank[2][7]_i_19_n_0\
    );
\bank[2][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[2][7]_i_10_n_0\,
      O => \bank[2][7]_i_2_n_0\
    );
\bank[2][7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addr_0(8),
      I1 => addr_0(2),
      I2 => addr_0(3),
      I3 => addr_0(9),
      I4 => addr_0(1),
      I5 => \bank[2][7]_i_26_n_0\,
      O => \bank[2][7]_i_20_n_0\
    );
\bank[2][7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF002E00D1000000"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \bank[2][6]_i_12_n_0\,
      I4 => \bank[2][7]_i_9_0\(7),
      I5 => \bank[2][7]_i_9_1\(7),
      O => io_load(7)
    );
\bank[2][7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCACCC00CCAC"
    )
        port map (
      I0 => \bank_reg[10]\(7),
      I1 => flags(7),
      I2 => Q(4),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(3),
      I5 => \bank_reg[11]\(7),
      O => \bank[2][7]_i_22_n_0\
    );
\bank[2][7]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[2][7]_i_27_n_0\,
      I1 => \bank[2][6]_i_20_n_0\,
      I2 => \bank[2][7]_i_28_n_0\,
      I3 => Q(5),
      I4 => \bank[2][7]_i_29_n_0\,
      O => \bank[2][7]_i_23_n_0\
    );
\bank[2][7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBFFFFB88BCF0C"
    )
        port map (
      I0 => \bank_reg[2][7]_i_30_n_4\,
      I1 => Q(8),
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => \^bank_reg[14][7]_0\(4),
      I4 => Q(9),
      I5 => Q(10),
      O => \bank[2][7]_i_24_n_0\
    );
\bank[2][7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757FFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_0(2),
      I1 => Q(6),
      I2 => Q(14),
      I3 => addr0(3),
      I4 => addr_0(9),
      I5 => addr_0(1),
      O => \bank[2][7]_i_25_n_0\
    );
\bank[2][7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540050040400000"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_27_n_0,
      I1 => Q(9),
      I2 => Q(14),
      I3 => addr0(6),
      I4 => Q(10),
      I5 => addr0(7),
      O => \bank[2][7]_i_26_n_0\
    );
\bank[2][7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAEA"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      I1 => Q(5),
      I2 => Q(6),
      I3 => Q(4),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => Q(3),
      O => \bank[2][7]_i_27_n_0\
    );
\bank[2][7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \^d\(1),
      I2 => Q(4),
      I3 => \^d\(2),
      I4 => Q(3),
      I5 => \store_register[3]_i_6_n_0\,
      O => \bank[2][7]_i_28_n_0\
    );
\bank[2][7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFCFCFA0AFC0C0"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \a_sub_b_carry__0_i_7_n_0\,
      I2 => Q(4),
      I3 => \^d\(6),
      I4 => Q(3),
      I5 => \bank[5][7]_i_6_n_0\,
      O => \bank[2][7]_i_29_n_0\
    );
\bank[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000001010"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_3_n_0\
    );
\bank[2][7]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      O => \bank[2][7]_i_31_n_0\
    );
\bank[2][7]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_14_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_13_n_0\,
      I4 => \store_register[3]_i_11_n_0\,
      I5 => \bank[2][7]_i_36_n_0\,
      O => \bank[2][7]_i_32_n_0\
    );
\bank[2][7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AAA999A9"
    )
        port map (
      I0 => \^d\(6),
      I1 => \store_register[3]_i_11_n_0\,
      I2 => \bank[2][6]_i_8_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][6]_i_7_n_0\,
      I5 => \bank[8][0]_i_19_n_0\,
      O => \bank[2][7]_i_33_n_0\
    );
\bank[2][7]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => \bank[2][7]_i_37_n_0\,
      I2 => \store_register[3]_i_11_n_0\,
      I3 => \bank[2][5]_i_6_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][5]_i_5_n_0\,
      O => \bank[2][7]_i_34_n_0\
    );
\bank[2][7]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \^bank_reg[14][7]_0\(2),
      O => \bank[2][7]_i_35_n_0\
    );
\bank[2][7]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B8BB"
    )
        port map (
      I0 => \bank[2][7]_i_11_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_22_n_0\,
      I3 => \bank[9][7]_i_2_n_0\,
      I4 => Q(4),
      I5 => \bank[5][7]_i_4_n_0\,
      O => \bank[2][7]_i_36_n_0\
    );
\bank[2][7]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \bank[2][5]_i_12_n_0\,
      I1 => \bank[2][7]_i_38_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[2][5]_i_8_n_0\,
      O => \bank[2][7]_i_37_n_0\
    );
\bank[2][7]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C080008"
    )
        port map (
      I0 => \bank_reg[6]\(5),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(3),
      I4 => \bank_reg[7]\(5),
      O => \bank[2][7]_i_38_n_0\
    );
\bank[2][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC0074CCCC7474"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_4_n_0\
    );
\bank[2][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(6),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(5),
      O => \bank[2][7]_i_5_n_0\
    );
\bank[2][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][7]_i_11_n_0\,
      I1 => \bank[2][7]_i_12_n_0\,
      I2 => \store_register[3]_i_11_n_0\,
      I3 => \bank[2][7]_i_13_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][7]_i_14_n_0\,
      O => \^bank_reg[14][7]_0\(4)
    );
\bank[2][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F0100000101"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_7_n_0\
    );
\bank[2][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808A8A8A808A8"
    )
        port map (
      I0 => \bank[2][7]_i_15_n_0\,
      I1 => Q(10),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[2][7]_i_16_n_0\,
      I4 => \bank[2][7]_i_17_n_0\,
      I5 => \bank[5][7]_i_6_n_0\,
      O => \bank[2][7]_i_8_n_0\
    );
\bank[2][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F080008"
    )
        port map (
      I0 => data_load0(7),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][7]_i_15_n_0\,
      I3 => \bank[2][7]_i_20_n_0\,
      I4 => io_load(7),
      O => \bank[2][7]_i_9_n_0\
    );
\bank[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[3][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[3][0]_i_1_n_0\
    );
\bank[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[3][1]_i_2_n_0\,
      O => \bank[3][1]_i_1_n_0\
    );
\bank[3][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0A0"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[3][7]_i_3_n_0\,
      O => \bank[3][1]_i_2_n_0\
    );
\bank[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[3][2]_i_1_n_0\
    );
\bank[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[3][3]_i_1_n_0\
    );
\bank[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[3][4]_i_1_n_0\
    );
\bank[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[3][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[3][5]_i_1_n_0\
    );
\bank[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[3][6]_i_1_n_0\
    );
\bank[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080BB8080"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[3][7]_i_3_n_0\,
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bank[3][7]_i_4_n_0\,
      O => \bank[3][7]_i_1_n_0\
    );
\bank[3][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[3][7]_i_5_n_0\,
      O => \bank[3][7]_i_2_n_0\
    );
\bank[3][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(6),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(5),
      O => \bank[3][7]_i_3_n_0\
    );
\bank[3][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bank[4][7]_i_3_n_0\,
      I1 => Q(0),
      O => \bank[3][7]_i_4_n_0\
    );
\bank[3][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"30A0"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[5][7]_i_6_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[3][7]_i_3_n_0\,
      O => \bank[3][7]_i_5_n_0\
    );
\bank[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FF3500"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[4][6]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => \bank[4][0]_i_1_n_0\
    );
\bank[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[4][1]_i_2_n_0\,
      O => \bank[4][1]_i_1_n_0\
    );
\bank[4][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][6]_i_2_n_0\,
      I3 => \^d\(1),
      O => \bank[4][1]_i_2_n_0\
    );
\bank[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[4][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[4][2]_i_1_n_0\
    );
\bank[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[4][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[4][3]_i_1_n_0\
    );
\bank[4][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FF74FF74FF7400"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[4][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][4]_i_4_n_0\,
      I5 => \bank[2][4]_i_5_n_0\,
      O => \bank[4][4]_i_1_n_0\
    );
\bank[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FFC5FFC5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[4][6]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[4][5]_i_1_n_0\
    );
\bank[4][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[4][6]_i_2_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[4][6]_i_1_n_0\
    );
\bank[4][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(4),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(3),
      O => \bank[4][6]_i_2_n_0\
    );
\bank[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => Q(5),
      I5 => Q(6),
      O => \bank[4][7]_i_1_n_0\
    );
\bank[4][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF45454540"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_9_n_0\,
      I5 => \bank[4][7]_i_4_n_0\,
      O => \bank[4][7]_i_2_n_0\
    );
\bank[4][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F0000000000"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(11),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[4][7]_i_3_n_0\
    );
\bank[4][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[4][6]_i_2_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[4][7]_i_4_n_0\
    );
\bank[5][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[5][7]_i_5_n_0\,
      O => \bank[5][0]_i_1_n_0\
    );
\bank[5][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[5][7]_i_5_n_0\,
      I3 => \^d\(1),
      O => \bank[5][1]_i_1_n_0\
    );
\bank[5][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[5][2]_i_1_n_0\
    );
\bank[5][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[5][3]_i_1_n_0\
    );
\bank[5][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[5][4]_i_1_n_0\
    );
\bank[5][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[5][7]_i_5_n_0\,
      O => \bank[5][5]_i_1_n_0\
    );
\bank[5][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[5][6]_i_1_n_0\
    );
\bank[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => Q(4),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[5][7]_i_1_n_0\
    );
\bank[5][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[5][7]_i_5_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[5][7]_i_2_n_0\
    );
\bank[5][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => \bank[4][7]_i_3_n_0\,
      O => \bank[5][7]_i_3_n_0\
    );
\bank[5][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bank[4][7]_i_3_n_0\,
      I1 => Q(3),
      O => \bank[5][7]_i_4_n_0\
    );
\bank[5][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Q(6),
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => Q(4),
      O => \bank[5][7]_i_5_n_0\
    );
\bank[5][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFFFF00FE0000"
    )
        port map (
      I0 => \bank[9][7]_i_2_n_0\,
      I1 => Q(1),
      I2 => \bank[3][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_7_n_0\,
      I4 => \store_register[2]_i_3_n_0\,
      I5 => \bank[5][7]_i_8_n_0\,
      O => \bank[5][7]_i_6_n_0\
    );
\bank[5][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0FFAF00C000A0"
    )
        port map (
      I0 => \bank_reg[10]\(7),
      I1 => \bank_reg[11]\(7),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(0),
      I5 => flags(7),
      O => \bank[5][7]_i_7_n_0\
    );
\bank[5][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCFFFFDFDCFFF"
    )
        port map (
      I0 => \bank_reg[1]\(7),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(7),
      I4 => Q(0),
      I5 => \bank_reg[3]\(7),
      O => \bank[5][7]_i_8_n_0\
    );
\bank[6][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[6][7]_i_4_n_0\,
      O => \bank[6][0]_i_1_n_0\
    );
\bank[6][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[6][7]_i_4_n_0\,
      I3 => \^d\(1),
      O => \bank[6][1]_i_1_n_0\
    );
\bank[6][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[6][2]_i_1_n_0\
    );
\bank[6][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[6][3]_i_1_n_0\
    );
\bank[6][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[6][4]_i_1_n_0\
    );
\bank[6][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[6][7]_i_4_n_0\,
      O => \bank[6][5]_i_1_n_0\
    );
\bank[6][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[6][6]_i_1_n_0\
    );
\bank[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => Q(3),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[6][7]_i_1_n_0\
    );
\bank[6][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[6][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[6][7]_i_2_n_0\
    );
\bank[6][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[4][7]_i_3_n_0\,
      O => \bank[6][7]_i_3_n_0\
    );
\bank[6][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[6][7]_i_4_n_0\
    );
\bank[7][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      O => \bank[7][0]_i_1_n_0\
    );
\bank[7][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \^d\(1),
      O => \bank[7][1]_i_1_n_0\
    );
\bank[7][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[7][2]_i_1_n_0\
    );
\bank[7][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[7][3]_i_1_n_0\
    );
\bank[7][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[7][4]_i_1_n_0\
    );
\bank[7][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[7][7]_i_3_n_0\,
      O => \bank[7][5]_i_1_n_0\
    );
\bank[7][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[7][6]_i_1_n_0\
    );
\bank[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => Q(3),
      I4 => \bank[6][7]_i_3_n_0\,
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[7][7]_i_1_n_0\
    );
\bank[7][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      O => \bank[7][7]_i_2_n_0\
    );
\bank[7][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(3),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(4),
      O => \bank[7][7]_i_3_n_0\
    );
\bank[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B8FFB8FF"
    )
        port map (
      I0 => \bank[8][0]_i_2_n_0\,
      I1 => \bank[8][0]_i_3_n_0\,
      I2 => flags(0),
      I3 => \bank[8][7]_i_5_n_0\,
      I4 => \bank[8][0]_i_4_n_0\,
      I5 => \bank[8][0]_i_5_n_0\,
      O => \bank[8][0]_i_1_n_0\
    );
\bank[8][0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => Q(9),
      I1 => \bank[8][0]_i_7_0\(3),
      I2 => Q(10),
      O => \bank[8][0]_i_10_n_0\
    );
\bank[8][0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC5C5C5C"
    )
        port map (
      I0 => \bank[8][0]_i_7_0\(2),
      I1 => \bank[8][0]_i_14_n_0\,
      I2 => Q(10),
      I3 => Q(9),
      I4 => Q(8),
      O => \bank[8][0]_i_11_n_0\
    );
\bank[8][0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[2][6]_i_17_n_0\,
      I1 => \bank[2][6]_i_20_n_0\,
      I2 => \bank[2][6]_i_23_n_0\,
      I3 => Q(5),
      I4 => \bank[8][0]_i_15_n_0\,
      O => \bank[8][0]_i_12_n_0\
    );
\bank[8][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5353535C0C0C0CCF"
    )
        port map (
      I0 => \bank_reg[2][3]_i_19_n_7\,
      I1 => \store_register[0]_i_2_n_0\,
      I2 => Q(8),
      I3 => \bank[8][0]_i_16_n_0\,
      I4 => \bank[8][0]_i_17_n_0\,
      I5 => Q(9),
      O => \instruction_reg_reg[9]\
    );
\bank[8][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A252A252A25257F"
    )
        port map (
      I0 => Q(9),
      I1 => \bank_reg[2][7]_i_30_n_5\,
      I2 => Q(8),
      I3 => \^d\(6),
      I4 => \bank[8][0]_i_18_n_0\,
      I5 => \bank[8][0]_i_19_n_0\,
      O => \bank[8][0]_i_14_n_0\
    );
\bank[8][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACC0F000FFF"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \^d\(5),
      I3 => Q(3),
      I4 => \^d\(6),
      I5 => Q(4),
      O => \bank[8][0]_i_15_n_0\
    );
\bank[8][0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3531353135313031"
    )
        port map (
      I0 => Q(6),
      I1 => \store_register[3]_i_10_n_0\,
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(5),
      I4 => \store_register[3]_i_15_n_0\,
      I5 => \bank[8][0]_i_20_n_0\,
      O => \bank[8][0]_i_16_n_0\
    );
\bank[8][0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \store_register[3]_i_11_n_0\,
      I1 => \bank[8][0]_i_21_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank[8][0]_i_22_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \store_register[3]_i_7_n_0\,
      O => \bank[8][0]_i_17_n_0\
    );
\bank[8][0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151010101515151"
    )
        port map (
      I0 => \store_register[3]_i_11_n_0\,
      I1 => \bank[2][6]_i_8_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[8][0]_i_23_n_0\,
      I4 => \bank[6][7]_i_3_n_0\,
      I5 => \bank[8][0]_i_24_n_0\,
      O => \bank[8][0]_i_18_n_0\
    );
\bank[8][0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE000000FE00"
    )
        port map (
      I0 => \bank[8][0]_i_25_n_0\,
      I1 => \bank[2][6]_i_15_n_0\,
      I2 => \bank[8][0]_i_26_n_0\,
      I3 => \store_register[3]_i_11_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][6]_i_5_n_0\,
      O => \bank[8][0]_i_19_n_0\
    );
\bank[8][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \bank[8][0]_i_6_n_0\,
      I1 => \bank[2][3]_i_9_n_0\,
      I2 => \bank[2][2]_i_9_n_0\,
      I3 => \bank[8][0]_i_7_n_0\,
      I4 => \bank[2][5]_i_9_n_0\,
      I5 => \bank[2][4]_i_14_n_0\,
      O => \bank[8][0]_i_2_n_0\
    );
\bank[8][0]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C080008"
    )
        port map (
      I0 => \bank_reg[6]\(0),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(3),
      I4 => \bank_reg[7]\(0),
      O => \bank[8][0]_i_20_n_0\
    );
\bank[8][0]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => flags(0),
      O => \bank[8][0]_i_21_n_0\
    );
\bank[8][0]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(0),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[11]\(0),
      O => \bank[8][0]_i_22_n_0\
    );
\bank[8][0]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[6]\(6),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[7]\(6),
      O => \bank[8][0]_i_23_n_0\
    );
\bank[8][0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[4]\(6),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[5]\(6),
      O => \bank[8][0]_i_24_n_0\
    );
\bank[8][0]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0E0A0A0A"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(3),
      I4 => \bank_reg[11]\(6),
      O => \bank[8][0]_i_25_n_0\
    );
\bank[8][0]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000004"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \store_register[6]_i_5_n_0\,
      I4 => \bank_reg[9]_0\(6),
      O => \bank[8][0]_i_26_n_0\
    );
\bank[8][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002220000"
    )
        port map (
      I0 => Q(13),
      I1 => Q(14),
      I2 => Q(7),
      I3 => flags(7),
      I4 => Q(12),
      I5 => Q(11),
      O => \bank[8][0]_i_3_n_0\
    );
\bank[8][0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \store_register[3]_i_3_n_0\,
      I2 => \bank[8][7]_i_9_n_0\,
      I3 => \store_register[0]_i_2_n_0\,
      O => \bank[8][0]_i_4_n_0\
    );
\bank[8][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABBBABABABB"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][0]_i_4_n_0\,
      I2 => \bank[2][6]_i_9_n_0\,
      I3 => Q(3),
      I4 => \bank[8][0]_i_3_n_0\,
      I5 => \bank[2][0]_i_3_n_0\,
      O => \bank[8][0]_i_5_n_0\
    );
\bank[8][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FBBFFFFFFBBFF"
    )
        port map (
      I0 => \bank[2][1]_i_14_n_0\,
      I1 => \bank[8][0]_i_2_0\,
      I2 => \bank[2][1]_i_13_n_0\,
      I3 => \bank[8][0]_i_2_1\,
      I4 => \bank[2][6]_i_19_n_0\,
      I5 => \bank[2][0]_i_5_n_0\,
      O => \bank[8][0]_i_6_n_0\
    );
\bank[8][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F22FFFFFF22FF"
    )
        port map (
      I0 => \bank[2][7]_i_24_n_0\,
      I1 => \bank[8][0]_i_10_n_0\,
      I2 => \bank[2][7]_i_23_n_0\,
      I3 => \bank[8][0]_i_11_n_0\,
      I4 => \bank[2][6]_i_19_n_0\,
      I5 => \bank[8][0]_i_12_n_0\,
      O => \bank[8][0]_i_7_n_0\
    );
\bank[8][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAFE"
    )
        port map (
      I0 => \bank[8][1]_i_2_n_0\,
      I1 => \bank[8][1]_i_3_n_0\,
      I2 => \bank[2][1]_i_3_n_0\,
      I3 => \bank[8][1]_i_4_n_0\,
      I4 => \bank[8][1]_i_5_n_0\,
      O => \bank[8][1]_i_1_n_0\
    );
\bank[8][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => \bank[8][7]_i_5_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \^d\(1),
      I3 => \bank[8][7]_i_9_n_0\,
      I4 => reg_b(1),
      O => \bank[8][1]_i_2_n_0\
    );
\bank[8][1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8FFF8"
    )
        port map (
      I0 => data_load0(1),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => io_load(1),
      I4 => \bank[2][2]_i_12_n_0\,
      O => \bank[8][1]_i_3_n_0\
    );
\bank[8][1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(1),
      I2 => \bank[2][7]_i_7_n_0\,
      O => \bank[8][1]_i_4_n_0\
    );
\bank[8][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F900F9000000F900"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_16_n_0\,
      I2 => \bank[8][1]_i_6_n_0\,
      I3 => \bank[8][7]_i_5_n_0\,
      I4 => flags(1),
      I5 => \bank[8][0]_i_3_n_0\,
      O => \bank[8][1]_i_5_n_0\
    );
\bank[8][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFFFFCFFF7F7FFF"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[5][7]_i_6_n_0\,
      I4 => \^bank_reg[14][7]_0\(4),
      I5 => Q(10),
      O => \bank[8][1]_i_6_n_0\
    );
\bank[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7747774777477444"
    )
        port map (
      I0 => \bank[8][2]_i_2_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[8][2]_i_3_n_0\,
      I4 => \bank[2][2]_i_4_n_0\,
      I5 => \bank[2][2]_i_3_n_0\,
      O => \bank[8][2]_i_1_n_0\
    );
\bank[8][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \bank[2][7]_i_16_n_0\,
      I1 => \bank[8][0]_i_3_n_0\,
      I2 => flags(2),
      O => \bank[8][2]_i_2_n_0\
    );
\bank[8][2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[8][2]_i_3_n_0\
    );
\bank[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => \bank[8][3]_i_2_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][3]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[8][3]_i_1_n_0\
    );
\bank[8][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAFFFFAABA0000"
    )
        port map (
      I0 => \bank[8][3]_i_4_n_0\,
      I1 => Q(9),
      I2 => Q(10),
      I3 => \bank_reg[8][3]_i_5_n_3\,
      I4 => \bank[8][0]_i_3_n_0\,
      I5 => flags(3),
      O => \bank[8][3]_i_2_n_0\
    );
\bank[8][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      O => \bank[8][3]_i_3_n_0\
    );
\bank[8][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAE0000000000"
    )
        port map (
      I0 => \bank[8][3]_i_6_n_0\,
      I1 => Q(5),
      I2 => \bank[8][3]_i_7_n_0\,
      I3 => Q(10),
      I4 => \bank_reg[8][3]_i_8_n_3\,
      I5 => \bank[8][3]_i_9_n_0\,
      O => \bank[8][3]_i_4_n_0\
    );
\bank[8][3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33BB333333BB33F3"
    )
        port map (
      I0 => \bank[2][6]_i_25_n_0\,
      I1 => Q(10),
      I2 => Q(3),
      I3 => Q(5),
      I4 => Q(4),
      I5 => \bank[5][7]_i_6_n_0\,
      O => \bank[8][3]_i_6_n_0\
    );
\bank[8][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => Q(4),
      I3 => \store_register[3]_i_6_n_0\,
      I4 => Q(3),
      I5 => \bank[2][4]_i_2_n_0\,
      O => \bank[8][3]_i_7_n_0\
    );
\bank[8][3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \bank[8][3]_i_9_n_0\
    );
\bank[8][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000DDD8DDD8"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[8][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_5_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank_reg_n_0_[8][4]\,
      I5 => \bank[8][7]_i_5_n_0\,
      O => \bank[8][4]_i_1_n_0\
    );
\bank[8][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \^bank_reg[14][7]_0\(2),
      O => \bank[8][4]_i_2_n_0\
    );
\bank[8][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8BBBBBBB88"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][5]_i_2_n_0\,
      I3 => \bank[2][5]_i_3_n_0\,
      I4 => \bank[2][5]_i_4_n_0\,
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][5]_i_1_n_0\
    );
\bank[8][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \a_sub_b_carry__0_i_7_n_0\,
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \bank[2][5]_i_2_n_0\,
      O => \bank[8][5]_i_2_n_0\
    );
\bank[8][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBBBBB88"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][6]_i_2_n_0\,
      I3 => \bank[2][6]_i_3_n_0\,
      I4 => \bank[2][6]_i_4_n_0\,
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][6]_i_1_n_0\
    );
\bank[8][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \^bank_reg[14][7]_0\(3),
      O => \bank[8][6]_i_2_n_0\
    );
\bank[8][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAEAA"
    )
        port map (
      I0 => \bank[8][7]_i_3_n_0\,
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(12),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => Q(11),
      O => \bank[8][7]_i_1_n_0\
    );
\bank[8][7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000070077777"
    )
        port map (
      I0 => Q(5),
      I1 => flags(2),
      I2 => flags(0),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \bank[8][7]_i_11_n_0\,
      O => \bank[8][7]_i_10_n_0\
    );
\bank[8][7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828FF28FF282828"
    )
        port map (
      I0 => Q(6),
      I1 => Q(2),
      I2 => flags(3),
      I3 => Q(4),
      I4 => Q(1),
      I5 => flags(1),
      O => \bank[8][7]_i_11_n_0\
    );
\bank[8][7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB8B8B8B88"
    )
        port map (
      I0 => \bank[8][7]_i_4_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[8][7]_i_7_n_0\,
      I5 => \bank[8][7]_i_8_n_0\,
      O => \bank[8][7]_i_2_n_0\
    );
\bank[8][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF88888888888888"
    )
        port map (
      I0 => \bank[8][7]_i_9_n_0\,
      I1 => \bank[2][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \store_register[2]_i_3_n_0\,
      I4 => \bank[3][7]_i_4_n_0\,
      I5 => \store_register[2]_i_5_n_0\,
      O => \bank[8][7]_i_3_n_0\
    );
\bank[8][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEE4455FAEE4400"
    )
        port map (
      I0 => \bank[8][0]_i_3_n_0\,
      I1 => Q(9),
      I2 => Q(10),
      I3 => \bank[8][7]_i_10_n_0\,
      I4 => flags(7),
      I5 => Q(8),
      O => \bank[8][7]_i_4_n_0\
    );
\bank[8][7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020020"
    )
        port map (
      I0 => Q(13),
      I1 => Q(14),
      I2 => Q(12),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(11),
      I5 => \bank[8][7]_i_3_n_0\,
      O => \bank[8][7]_i_5_n_0\
    );
\bank[8][7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \^bank_reg[14][7]_0\(4),
      I2 => \bank[2][7]_i_7_n_0\,
      O => \bank[8][7]_i_6_n_0\
    );
\bank[8][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFF0F8F8"
    )
        port map (
      I0 => data_load0(7),
      I1 => \bank[2][7]_i_19_n_0\,
      I2 => \bank[2][7]_i_7_n_0\,
      I3 => io_load(7),
      I4 => \bank[2][7]_i_20_n_0\,
      I5 => \bank[2][7]_i_15_n_0\,
      O => \bank[8][7]_i_7_n_0\
    );
\bank[8][7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[8][7]_i_9_n_0\,
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][7]_i_8_n_0\
    );
\bank[8][7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(4),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(3),
      O => \bank[8][7]_i_9_n_0\
    );
\bank[9][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47774744"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][0]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][0]_i_2_n_0\,
      O => p_1_in(0)
    );
\bank[9][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \bank[9][7]_i_5_n_0\,
      I2 => \store_register[3]_i_3_n_0\,
      O => \bank[9][0]_i_2_n_0\
    );
\bank[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \bank[9][1]_i_2_n_0\,
      I1 => \bank[8][1]_i_3_n_0\,
      I2 => \bank[2][1]_i_3_n_0\,
      I3 => \bank[8][1]_i_4_n_0\,
      I4 => \bank[9][1]_i_3_n_0\,
      I5 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(1)
    );
\bank[9][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[9][7]_i_5_n_0\,
      I2 => \^d\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      O => \bank[9][1]_i_2_n_0\
    );
\bank[9][1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => \bank_reg[9]__0\(1),
      O => \bank[9][1]_i_3_n_0\
    );
\bank[9][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7747774777477444"
    )
        port map (
      I0 => \bank[9][2]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[9][2]_i_3_n_0\,
      I4 => \bank[2][2]_i_4_n_0\,
      I5 => \bank[2][2]_i_3_n_0\,
      O => p_1_in(2)
    );
\bank[9][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => \bank_reg[9]__0\(1),
      I2 => \bank_reg[9]__0\(0),
      O => \bank[9][2]_i_2_n_0\
    );
\bank[9][2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[9][7]_i_5_n_0\,
      I2 => \^bank_reg[14][7]_0\(0),
      O => \bank[9][2]_i_3_n_0\
    );
\bank[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500FCFFFF"
    )
        port map (
      I0 => \bank[9][3]_i_2_n_0\,
      I1 => \bank[2][3]_i_4_n_0\,
      I2 => \bank[2][3]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[9][3]_i_3_n_0\,
      I5 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(3)
    );
\bank[9][3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => \bank_reg[9]_0\(3),
      I1 => \bank_reg[9]_0\(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      O => \bank[9][3]_i_2_n_0\
    );
\bank[9][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD5F"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \^bank_reg[14][7]_0\(1),
      I3 => \bank[9][7]_i_5_n_0\,
      O => \bank[9][3]_i_3_n_0\
    );
\bank[9][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAAFEAAFE"
    )
        port map (
      I0 => \bank[9][4]_i_2_n_0\,
      I1 => \bank[2][4]_i_5_n_0\,
      I2 => \bank[2][4]_i_4_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[9][4]_i_3_n_0\,
      I5 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(4)
    );
\bank[9][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08C8"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(2),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[9][4]_i_2_n_0\
    );
\bank[9][4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => \bank_reg[9]_0\(4),
      I1 => \bank_reg[9]__0\(1),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]_0\(2),
      I4 => \bank_reg[9]_0\(3),
      O => \bank[9][4]_i_3_n_0\
    );
\bank[9][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477747774777474"
    )
        port map (
      I0 => \bank[9][5]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][5]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_4_n_0\,
      I5 => \bank[2][5]_i_3_n_0\,
      O => p_1_in(5)
    );
\bank[9][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \bank_reg[9]_0\(5),
      I1 => \bank_reg[9]_0\(3),
      I2 => \bank_reg[9]_0\(2),
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]_0\(4),
      O => \bank[9][5]_i_2_n_0\
    );
\bank[9][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04C4"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \a_sub_b_carry__0_i_7_n_0\,
      O => \bank[9][5]_i_3_n_0\
    );
\bank[9][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477747774777474"
    )
        port map (
      I0 => \store_register[6]_i_4_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][6]_i_2_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_4_n_0\,
      I5 => \bank[2][6]_i_3_n_0\,
      O => p_1_in(6)
    );
\bank[9][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(3),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \^d\(6),
      O => \bank[9][6]_i_2_n_0\
    );
\bank[9][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7474747477777774"
    )
        port map (
      I0 => \bank[9][7]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][7]_i_4_n_0\,
      I3 => \bank[8][7]_i_7_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      I5 => \bank[8][7]_i_6_n_0\,
      O => p_1_in(7)
    );
\bank[9][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \bank_reg[9]_0\(7),
      I1 => \bank_reg[9]_0\(6),
      I2 => \store_register[6]_i_5_n_0\,
      O => \bank[9][7]_i_2_n_0\
    );
\bank[9][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCFFFEFFFEFF"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => Q(1),
      I2 => \bank[3][7]_i_4_n_0\,
      I3 => Q(2),
      I4 => \bank[9][7]_i_5_n_0\,
      I5 => \bank[2][7]_i_3_n_0\,
      O => \bank[9][7]_i_3_n_0\
    );
\bank[9][7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^bank_reg[14][7]_0\(4),
      I1 => \bank[9][7]_i_5_n_0\,
      I2 => \bank[5][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      O => \bank[9][7]_i_4_n_0\
    );
\bank[9][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[5][7]_i_4_n_0\,
      I2 => Q(6),
      I3 => \bank[5][7]_i_3_n_0\,
      O => \bank[9][7]_i_5_n_0\
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][0]_i_1_n_0\,
      Q => instruction_addr0(2),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][1]_i_1_n_0\,
      Q => instruction_addr0(3),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][2]_i_1_n_0\,
      Q => instruction_addr0(4),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][3]_i_1_n_0\,
      Q => \bank_reg_n_0_[12][3]\,
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][4]_i_1_n_0\,
      Q => \bank_reg_n_0_[12][4]\,
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[12][7]_i_1_n_0\,
      D => \bank[12][5]_i_1_n_0\,
      Q => \bank_reg_n_0_[12][5]\,
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][3]_i_1_n_0\,
      Q => addr1(5),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][4]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(3),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][5]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(4),
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[2][3]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bank_reg[2][3]_i_19_n_0\,
      CO(2) => \bank_reg[2][3]_i_19_n_1\,
      CO(1) => \bank_reg[2][3]_i_19_n_2\,
      CO(0) => \bank_reg[2][3]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \bank[2][3]_i_20_n_0\,
      DI(2 downto 0) => \^d\(2 downto 0),
      O(3) => \bank_reg[2][3]_i_19_n_4\,
      O(2) => \bank_reg[2][3]_i_19_n_5\,
      O(1) => \bank_reg[2][3]_i_19_n_6\,
      O(0) => \bank_reg[2][3]_i_19_n_7\,
      S(3) => \bank[2][3]_i_21_n_0\,
      S(2) => \bank[2][3]_i_22_n_0\,
      S(1) => \bank[2][3]_i_23_n_0\,
      S(0) => \bank[2][3]_i_24_n_0\
    );
\bank_reg[2][3]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][2]_i_8_n_0\,
      I1 => \bank[2][2]_i_7_n_0\,
      O => \bank_reg[2][3]_i_25_n_0\,
      S => \bank[5][7]_i_3_n_0\
    );
\bank_reg[2][3]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][1]_i_9_n_0\,
      I1 => \bank[2][1]_i_8_n_0\,
      O => \bank_reg[2][3]_i_26_n_0\,
      S => \bank[5][7]_i_3_n_0\
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[2][7]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \bank_reg[2][3]_i_19_n_0\,
      CO(3) => \bank_reg[2][7]_i_30_n_0\,
      CO(2) => \bank_reg[2][7]_i_30_n_1\,
      CO(1) => \bank_reg[2][7]_i_30_n_2\,
      CO(0) => \bank_reg[2][7]_i_30_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^d\(7 downto 5),
      DI(0) => \bank[2][7]_i_31_n_0\,
      O(3) => \bank_reg[2][7]_i_30_n_4\,
      O(2) => \bank_reg[2][7]_i_30_n_5\,
      O(1) => \bank_reg[2][7]_i_30_n_6\,
      O(0) => \bank_reg[2][7]_i_30_n_7\,
      S(3) => \bank[2][7]_i_32_n_0\,
      S(2) => \bank[2][7]_i_33_n_0\,
      S(1) => \bank[2][7]_i_34_n_0\,
      S(0) => \bank[2][7]_i_35_n_0\
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
\bank_reg[8][3]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \bank_reg[2][7]_i_30_n_0\,
      CO(3 downto 1) => \NLW_bank_reg[8][3]_i_8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \bank_reg[8][3]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_bank_reg[8][3]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
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
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(0),
      Q => \bank_reg[9]__0\(0),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(1),
      Q => \bank_reg[9]__0\(1),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(2),
      Q => \bank_reg[9]_0\(2),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(3),
      Q => \bank_reg[9]_0\(3),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(4),
      Q => \bank_reg[9]_0\(4),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(5),
      Q => \bank_reg[9]_0\(5),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(6),
      Q => \bank_reg[9]_0\(6),
      R => \bank_reg[9][0]_0\(0)
    );
\bank_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => p_1_in(7),
      Q => \bank_reg[9]_0\(7),
      R => \bank_reg[9][0]_0\(0)
    );
\instruction_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009FF696F6F"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(3),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(0)
    );
\instruction_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069F0F90F"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(3),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(9)
    );
\instruction_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000099F9066"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => sel(3),
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank_reg[9]__0\(1),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(10)
    );
\instruction_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F9F00099F96"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(4),
      I5 => sel(3),
      O => \bank_reg[9][2]_0\(11)
    );
\instruction_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009FF6969FF"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(3),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(12)
    );
\instruction_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000009F6FFFFF9"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(3),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(13)
    );
\instruction_reg[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => instruction_addr0(2),
      I1 => \bank_reg[9]_0\(2),
      I2 => instruction_addr0(3),
      I3 => \bank_reg[9]_0\(3),
      O => sel(3)
    );
\instruction_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000C32828"
    )
        port map (
      I0 => \instruction_reg[15]_i_2_n_0\,
      I1 => \bank_reg[9]_0\(2),
      I2 => instruction_addr0(2),
      I3 => sel(4),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \bank_reg[9][2]_0\(14)
    );
\instruction_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666600060000999"
    )
        port map (
      I0 => \bank_reg[9]_0\(4),
      I1 => instruction_addr0(4),
      I2 => \bank_reg[9]_0\(2),
      I3 => instruction_addr0(2),
      I4 => \bank_reg[9]_0\(3),
      I5 => instruction_addr0(3),
      O => \instruction_reg[15]_i_2_n_0\
    );
\instruction_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => instruction_addr0(3),
      I1 => \bank_reg[9]_0\(3),
      I2 => instruction_addr0(2),
      I3 => \bank_reg[9]_0\(2),
      I4 => instruction_addr0(4),
      I5 => \bank_reg[9]_0\(4),
      O => sel(4)
    );
\instruction_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00990000000000F6"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => sel(4),
      I4 => sel(3),
      I5 => \bank_reg[9]__0\(1),
      O => \bank_reg[9][2]_0\(1)
    );
\instruction_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006006000690900"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(1),
      I3 => sel(4),
      I4 => sel(3),
      I5 => \bank_reg[9]__0\(0),
      O => \bank_reg[9][2]_0\(2)
    );
\instruction_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090060FF9"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(1),
      I3 => \bank_reg[9]__0\(0),
      I4 => sel(3),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(3)
    );
\instruction_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF6000096966"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => sel(4),
      I5 => sel(3),
      O => \bank_reg[9][2]_0\(4)
    );
\instruction_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009090906"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => sel(4),
      I3 => sel(3),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \bank_reg[9][2]_0\(5)
    );
\instruction_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EB0014"
    )
        port map (
      I0 => sel(3),
      I1 => \bank_reg[9]_0\(2),
      I2 => instruction_addr0(2),
      I3 => sel(4),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \bank_reg[9][2]_0\(6)
    );
\instruction_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014002800C30014"
    )
        port map (
      I0 => sel(3),
      I1 => \bank_reg[9]_0\(2),
      I2 => instruction_addr0(2),
      I3 => sel(4),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \bank_reg[9][2]_0\(7)
    );
\instruction_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF99F606"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => instruction_addr0(2),
      I2 => sel(3),
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank_reg[9]__0\(1),
      I5 => sel(4),
      O => \bank_reg[9][2]_0\(8)
    );
\store_register[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      O => \^d\(0)
    );
\store_register[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0355"
    )
        port map (
      I0 => \store_register[0]_i_3_n_0\,
      I1 => \store_register[0]_i_4_n_0\,
      I2 => \store_register[0]_i_5_n_0\,
      I3 => \store_register[2]_i_3_n_0\,
      O => \store_register[0]_i_2_n_0\
    );
\store_register[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(0),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(0),
      I4 => Q(0),
      I5 => \bank_reg[3]\(0),
      O => \store_register[0]_i_3_n_0\
    );
\store_register[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008A0080"
    )
        port map (
      I0 => Q(1),
      I1 => \bank_reg[11]\(0),
      I2 => Q(0),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \bank_reg[10]\(0),
      O => \store_register[0]_i_4_n_0\
    );
\store_register[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF150010"
    )
        port map (
      I0 => Q(1),
      I1 => \bank_reg[9]__0\(0),
      I2 => Q(0),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => flags(0),
      O => \store_register[0]_i_5_n_0\
    );
\store_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEEEFFFFFFFF"
    )
        port map (
      I0 => \store_register[1]_i_2_n_0\,
      I1 => \store_register[2]_i_3_n_0\,
      I2 => \store_register[1]_i_3_n_0\,
      I3 => \store_register[2]_i_5_n_0\,
      I4 => \store_register[1]_i_4_n_0\,
      I5 => \store_register[1]_i_5_n_0\,
      O => \^d\(1)
    );
\store_register[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bank_reg[2]\(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(2),
      O => \store_register[1]_i_2_n_0\
    );
\store_register[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75454575"
    )
        port map (
      I0 => flags(1),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => \bank_reg[9]__0\(0),
      O => \store_register[1]_i_3_n_0\
    );
\store_register[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(1),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(1),
      O => \store_register[1]_i_4_n_0\
    );
\store_register[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFBFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => \bank_reg[3]\(1),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => Q(0),
      I5 => \bank_reg[1]\(1),
      O => \store_register[1]_i_5_n_0\
    );
\store_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEEEFFFFFFFF"
    )
        port map (
      I0 => \store_register[2]_i_2_n_0\,
      I1 => \store_register[2]_i_3_n_0\,
      I2 => \store_register[2]_i_4_n_0\,
      I3 => \store_register[2]_i_5_n_0\,
      I4 => \store_register[2]_i_6_n_0\,
      I5 => \store_register[2]_i_7_n_0\,
      O => \^d\(2)
    );
\store_register[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \bank_reg[3]\(2),
      I1 => Q(0),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(1),
      I4 => Q(2),
      O => \store_register[2]_i_2_n_0\
    );
\store_register[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => \bank[4][7]_i_3_n_0\,
      O => \store_register[2]_i_3_n_0\
    );
\store_register[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7545457545754575"
    )
        port map (
      I0 => flags(2),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[9]_0\(2),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \store_register[2]_i_4_n_0\
    );
\store_register[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bank[4][7]_i_3_n_0\,
      I1 => Q(1),
      O => \store_register[2]_i_5_n_0\
    );
\store_register[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(2),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(2),
      O => \store_register[2]_i_6_n_0\
    );
\store_register[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFBFFFFFFFBFF"
    )
        port map (
      I0 => Q(2),
      I1 => \bank_reg[2]\(2),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \bank_reg[1]\(2),
      O => \store_register[2]_i_7_n_0\
    );
\store_register[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D100"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(14),
      I2 => Q(3),
      I3 => \store_register[3]_i_4_n_0\,
      I4 => \store_register[3]_i_5_n_0\,
      O => E(0)
    );
\store_register[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF305FFFFF3F5F"
    )
        port map (
      I0 => \bank_reg[2]\(0),
      I1 => \bank_reg[3]\(0),
      I2 => Q(4),
      I3 => Q(3),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => \bank_reg[1]\(0),
      O => \store_register[3]_i_10_n_0\
    );
\store_register[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => \bank[4][7]_i_3_n_0\,
      O => \store_register[3]_i_11_n_0\
    );
\store_register[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CF00C000A000A0"
    )
        port map (
      I0 => \bank_reg[2]\(3),
      I1 => \bank_reg[3]\(3),
      I2 => Q(1),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \bank_reg[1]\(3),
      I5 => Q(0),
      O => \store_register[3]_i_12_n_0\
    );
\store_register[3]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008A0080"
    )
        port map (
      I0 => Q(1),
      I1 => \bank_reg[11]\(3),
      I2 => Q(0),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => \bank_reg[10]\(3),
      O => \store_register[3]_i_13_n_0\
    );
\store_register[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF150010"
    )
        port map (
      I0 => Q(1),
      I1 => \bank[9][3]_i_2_n_0\,
      I2 => Q(0),
      I3 => \bank[4][7]_i_3_n_0\,
      I4 => flags(3),
      O => \store_register[3]_i_14_n_0\
    );
\store_register[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB0008"
    )
        port map (
      I0 => \bank_reg[5]\(0),
      I1 => Q(3),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(4),
      I4 => \bank_reg[4]\(0),
      O => \store_register[3]_i_15_n_0\
    );
\store_register[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      O => \^d\(3)
    );
\store_register[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \store_register[3]_i_7_n_0\,
      I1 => \store_register[3]_i_8_n_0\,
      I2 => \store_register[3]_i_9_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \store_register[3]_i_10_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => \store_register[3]_i_3_n_0\
    );
\store_register[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF70000007700"
    )
        port map (
      I0 => Q(7),
      I1 => flags(7),
      I2 => Q(12),
      I3 => Q(11),
      I4 => Q(14),
      I5 => Q(13),
      O => \store_register[3]_i_4_n_0\
    );
\store_register[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5545FFFF"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      O => \store_register[3]_i_5_n_0\
    );
\store_register[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0355"
    )
        port map (
      I0 => \store_register[3]_i_12_n_0\,
      I1 => \store_register[3]_i_13_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \store_register[2]_i_3_n_0\,
      O => \store_register[3]_i_6_n_0\
    );
\store_register[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F004F703F304F7"
    )
        port map (
      I0 => \bank_reg[14]\(0),
      I1 => Q(4),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => instruction_addr0(2),
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(0),
      O => \store_register[3]_i_7_n_0\
    );
\store_register[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50503F305F5F3F30"
    )
        port map (
      I0 => \bank_reg[10]\(0),
      I1 => \bank_reg[11]\(0),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => flags(0),
      O => \store_register[3]_i_8_n_0\
    );
\store_register[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004F7F"
    )
        port map (
      I0 => \bank_reg[7]\(0),
      I1 => Q(3),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[6]\(0),
      I4 => \store_register[3]_i_15_n_0\,
      O => \store_register[3]_i_9_n_0\
    );
\store_register[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[2][4]_i_2_n_0\,
      O => \^d\(4)
    );
\store_register[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020A02F5F7FFF7"
    )
        port map (
      I0 => Q(2),
      I1 => \store_register[5]_i_2_n_0\,
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => Q(1),
      I4 => \store_register[5]_i_3_n_0\,
      I5 => \store_register[5]_i_4_n_0\,
      O => \^d\(5)
    );
\store_register[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank[9][5]_i_2_n_0\,
      O => \store_register[5]_i_2_n_0\
    );
\store_register[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(5),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(5),
      O => \store_register[5]_i_3_n_0\
    );
\store_register[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF503FFFFF5F3F"
    )
        port map (
      I0 => \bank_reg[3]\(5),
      I1 => \bank_reg[2]\(5),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => \bank_reg[1]\(5),
      O => \store_register[5]_i_4_n_0\
    );
\store_register[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCFAAAAAAAA"
    )
        port map (
      I0 => \store_register[6]_i_2_n_0\,
      I1 => \store_register[6]_i_3_n_0\,
      I2 => \store_register[6]_i_4_n_0\,
      I3 => Q(1),
      I4 => \bank[3][7]_i_4_n_0\,
      I5 => \store_register[2]_i_3_n_0\,
      O => \^d\(6)
    );
\store_register[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(6),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(6),
      I4 => Q(0),
      I5 => \bank_reg[3]\(6),
      O => \store_register[6]_i_2_n_0\
    );
\store_register[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC0AF0000C0A0"
    )
        port map (
      I0 => \bank_reg[10]\(6),
      I1 => \bank_reg[11]\(6),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \bank[4][7]_i_3_n_0\,
      I5 => \bank_reg_n_0_[8][6]\,
      O => \store_register[6]_i_3_n_0\
    );
\store_register[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank_reg[9]_0\(6),
      I1 => \store_register[6]_i_5_n_0\,
      O => \store_register[6]_i_4_n_0\
    );
\store_register[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \bank_reg[9]_0\(3),
      I1 => \bank_reg[9]_0\(2),
      I2 => \bank_reg[9]__0\(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => \bank_reg[9]_0\(4),
      I5 => \bank_reg[9]_0\(5),
      O => \store_register[6]_i_5_n_0\
    );
\store_register[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[5][7]_i_6_n_0\,
      O => \^d\(7)
    );
words_reg_0_255_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(1),
      O => addr(1)
    );
words_reg_0_255_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(0),
      O => addr(0)
    );
words_reg_0_255_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050045000"
    )
        port map (
      I0 => \bank[4][7]_i_3_n_0\,
      I1 => Q(11),
      I2 => Q(14),
      I3 => Q(13),
      I4 => Q(12),
      I5 => \bank[2][7]_i_20_n_0\,
      O => en_store
    );
words_reg_0_255_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(8),
      O => \^instruction_reg_reg[15]\
    );
words_reg_0_255_0_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(9),
      O => \^instruction_reg_reg[15]_0\
    );
words_reg_0_255_0_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_26_n_0,
      I1 => addr_0(9),
      I2 => addr_0(3),
      I3 => addr_0(2),
      I4 => addr_0(6),
      I5 => words_reg_0_255_0_0_i_27_n_0,
      O => words_reg_0_255_0_0_i_15_n_0
    );
words_reg_0_255_0_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => Q(14),
      I2 => addr0(7),
      O => addr_0(7)
    );
words_reg_0_255_0_0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => Q(14),
      I2 => addr0(6),
      O => addr_0(6)
    );
words_reg_0_255_0_0_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => Q(14),
      I2 => addr0(5),
      O => addr_0(5)
    );
words_reg_0_255_0_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => Q(14),
      I2 => addr0(4),
      O => addr_0(4)
    );
words_reg_0_255_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(0),
      I1 => en_store,
      O => data_out(0)
    );
words_reg_0_255_0_0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => Q(14),
      I2 => addr0(3),
      O => addr_0(3)
    );
words_reg_0_255_0_0_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => Q(14),
      I2 => addr0(2),
      O => addr_0(2)
    );
words_reg_0_255_0_0_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => Q(14),
      I2 => addr0(1),
      O => addr_0(1)
    );
words_reg_0_255_0_0_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => Q(3),
      I2 => Q(14),
      O => addr_0(0)
    );
words_reg_0_255_0_0_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => Q(14),
      I2 => addr0(8),
      O => addr_0(8)
    );
words_reg_0_255_0_0_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => Q(14),
      I2 => addr0(9),
      O => addr_0(9)
    );
words_reg_0_255_0_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A0A0C0000000"
    )
        port map (
      I0 => addr0(8),
      I1 => Q(11),
      I2 => addr_0(1),
      I3 => Q(10),
      I4 => Q(14),
      I5 => addr0(7),
      O => words_reg_0_255_0_0_i_26_n_0
    );
words_reg_0_255_0_0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => addr0(4),
      I1 => Q(7),
      I2 => addr0(5),
      I3 => Q(14),
      I4 => Q(8),
      O => words_reg_0_255_0_0_i_27_n_0
    );
words_reg_0_255_0_0_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_29_n_0,
      CO(3) => words_reg_0_255_0_0_i_28_n_0,
      CO(2) => words_reg_0_255_0_0_i_28_n_1,
      CO(1) => words_reg_0_255_0_0_i_28_n_2,
      CO(0) => words_reg_0_255_0_0_i_28_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => \^bank_reg[13][5]_0\(4 downto 3),
      DI(0) => addr1(5),
      O(3 downto 0) => addr0(8 downto 5),
      S(3) => addr1(8),
      S(2 downto 1) => words_reg_0_255_0_0_i_27_0(1 downto 0),
      S(0) => words_reg_0_255_0_0_i_33_n_0
    );
words_reg_0_255_0_0_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => words_reg_0_255_0_0_i_29_n_0,
      CO(2) => words_reg_0_255_0_0_i_29_n_1,
      CO(1) => words_reg_0_255_0_0_i_29_n_2,
      CO(0) => words_reg_0_255_0_0_i_29_n_3,
      CYINIT => '0',
      DI(3 downto 1) => \^bank_reg[13][5]_0\(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => addr0(4 downto 1),
      S(3 downto 1) => words_reg_0_255_0_0_i_22_0(2 downto 0),
      S(0) => words_reg_0_255_0_0_i_37_n_0
    );
words_reg_0_255_0_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => en_store,
      I1 => \^instruction_reg_reg[15]\,
      I2 => \^instruction_reg_reg[15]_0\,
      O => \instruction_reg_reg[12]\
    );
words_reg_0_255_0_0_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_28_n_0,
      CO(3 downto 0) => NLW_words_reg_0_255_0_0_i_30_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_words_reg_0_255_0_0_i_30_O_UNCONNECTED(3 downto 1),
      O(0) => addr0(9),
      S(3 downto 1) => B"000",
      S(0) => addr1(9)
    );
words_reg_0_255_0_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => addr1(5),
      I1 => \bank[2][5]_i_2_n_0\,
      O => words_reg_0_255_0_0_i_33_n_0
    );
words_reg_0_255_0_0_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \bank[2][1]_i_6_n_0\,
      I1 => \bank[2][1]_i_7_n_0\,
      I2 => \bank[2][1]_i_8_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][1]_i_9_n_0\,
      I5 => \store_register[3]_i_11_n_0\,
      O => words_reg_0_255_0_0_i_37_n_0
    );
words_reg_0_255_0_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(7),
      O => addr(7)
    );
words_reg_0_255_0_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(6),
      O => addr(6)
    );
words_reg_0_255_0_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(5),
      O => addr(5)
    );
words_reg_0_255_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(4),
      O => addr(4)
    );
words_reg_0_255_0_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(3),
      O => addr(3)
    );
words_reg_0_255_0_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(2),
      O => addr(2)
    );
words_reg_0_255_1_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(1),
      I1 => en_store,
      O => data_out(1)
    );
words_reg_0_255_2_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(2),
      I1 => en_store,
      O => data_out(2)
    );
words_reg_0_255_3_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(3),
      I1 => en_store,
      O => data_out(3)
    );
words_reg_0_255_4_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(4),
      I1 => en_store,
      O => data_out(4)
    );
words_reg_0_255_5_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(5),
      I1 => en_store,
      O => data_out(5)
    );
words_reg_0_255_6_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(6),
      I1 => en_store,
      O => data_out(6)
    );
words_reg_0_255_7_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(7),
      I1 => en_store,
      O => data_out(7)
    );
words_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg[15]_0\,
      I1 => \^instruction_reg_reg[15]\,
      I2 => en_store,
      O => \instruction_reg_reg[15]_1\
    );
words_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg[15]\,
      I1 => \^instruction_reg_reg[15]_0\,
      I2 => en_store,
      O => \instruction_reg_reg[15]_2\
    );
words_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => en_store,
      I1 => \^instruction_reg_reg[15]\,
      I2 => \^instruction_reg_reg[15]_0\,
      O => \instruction_reg_reg[12]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_core is
  port (
    \instruction_reg_reg[12]_0\ : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \instruction_reg_reg[15]_0\ : out STD_LOGIC;
    \instruction_reg_reg[15]_1\ : out STD_LOGIC;
    \instruction_reg_reg[12]_1\ : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_load0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_core : entity is "core";
end slower_core_plaquita_0_0_core;

architecture STRUCTURE of slower_core_plaquita_0_0_core is
  signal addr1 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal alu_n_0 : STD_LOGIC;
  signal alu_n_1 : STD_LOGIC;
  signal alu_n_10 : STD_LOGIC;
  signal alu_n_2 : STD_LOGIC;
  signal alu_n_3 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal instruction_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal load_register : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_b : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal registers_n_19 : STD_LOGIC;
  signal registers_n_20 : STD_LOGIC;
  signal registers_n_21 : STD_LOGIC;
  signal registers_n_22 : STD_LOGIC;
  signal registers_n_23 : STD_LOGIC;
  signal registers_n_24 : STD_LOGIC;
  signal registers_n_25 : STD_LOGIC;
  signal registers_n_26 : STD_LOGIC;
  signal registers_n_49 : STD_LOGIC;
  signal registers_n_50 : STD_LOGIC;
  signal registers_n_51 : STD_LOGIC;
  signal registers_n_52 : STD_LOGIC;
  signal registers_n_53 : STD_LOGIC;
  signal registers_n_54 : STD_LOGIC;
  signal registers_n_55 : STD_LOGIC;
  signal registers_n_56 : STD_LOGIC;
  signal registers_n_57 : STD_LOGIC;
  signal registers_n_58 : STD_LOGIC;
  signal registers_n_59 : STD_LOGIC;
  signal registers_n_60 : STD_LOGIC;
  signal registers_n_61 : STD_LOGIC;
  signal registers_n_62 : STD_LOGIC;
  signal registers_n_63 : STD_LOGIC;
  signal registers_n_64 : STD_LOGIC;
  signal registers_n_65 : STD_LOGIC;
  signal registers_n_66 : STD_LOGIC;
  signal registers_n_67 : STD_LOGIC;
  signal registers_n_68 : STD_LOGIC;
  signal store_register : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal store_register0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_31_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_32_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_34_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_35_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_36_n_0 : STD_LOGIC;
begin
  led(3 downto 0) <= \^led\(3 downto 0);
alu: entity work.slower_core_plaquita_0_0_alu
     port map (
      CO(0) => alu_n_3,
      DI(3) => registers_n_50,
      DI(2 downto 1) => reg_a(2 downto 1),
      DI(0) => registers_n_51,
      O(2) => alu_n_0,
      O(1) => alu_n_1,
      O(0) => alu_n_2,
      Q(2 downto 0) => instruction_reg(11 downto 9),
      S(3) => registers_n_19,
      S(2) => registers_n_20,
      S(1) => registers_n_21,
      S(0) => registers_n_22,
      \bank[2][4]_i_14\(3) => registers_n_52,
      \bank[2][4]_i_14\(2 downto 1) => reg_a(6 downto 5),
      \bank[2][4]_i_14\(0) => registers_n_53,
      \bank[2][4]_i_14_0\(3) => registers_n_23,
      \bank[2][4]_i_14_0\(2) => registers_n_24,
      \bank[2][4]_i_14_0\(1) => registers_n_25,
      \bank[2][4]_i_14_0\(0) => registers_n_26,
      \bank[8][0]_i_6\ => registers_n_49,
      \instruction_reg_reg[11]\ => alu_n_8,
      \instruction_reg_reg[1]\(3) => alu_n_4,
      \instruction_reg_reg[1]\(2) => alu_n_5,
      \instruction_reg_reg[1]\(1) => alu_n_6,
      \instruction_reg_reg[1]\(0) => alu_n_7,
      \instruction_reg_reg[9]\ => alu_n_9,
      \instruction_reg_reg[9]_0\ => alu_n_10
    );
\instruction_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_68,
      Q => instruction_reg(0),
      R => '0'
    );
\instruction_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_59,
      Q => instruction_reg(10),
      R => '0'
    );
\instruction_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_58,
      Q => instruction_reg(11),
      R => '0'
    );
\instruction_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_57,
      Q => instruction_reg(12),
      R => '0'
    );
\instruction_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_56,
      Q => instruction_reg(13),
      R => '0'
    );
\instruction_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_55,
      Q => instruction_reg(14),
      R => '0'
    );
\instruction_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_54,
      Q => instruction_reg(15),
      R => '0'
    );
\instruction_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_67,
      Q => instruction_reg(1),
      R => '0'
    );
\instruction_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_66,
      Q => instruction_reg(3),
      R => '0'
    );
\instruction_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_65,
      Q => instruction_reg(4),
      R => '0'
    );
\instruction_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_64,
      Q => instruction_reg(5),
      R => '0'
    );
\instruction_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_63,
      Q => instruction_reg(6),
      R => '0'
    );
\instruction_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_62,
      Q => instruction_reg(7),
      R => '0'
    );
\instruction_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_61,
      Q => instruction_reg(8),
      R => '0'
    );
\instruction_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_60,
      Q => instruction_reg(9),
      R => '0'
    );
io: entity work.slower_core_plaquita_0_0_io
     port map (
      D(7 downto 0) => reg_a(7 downto 0),
      E(0) => store_register0,
      Q(7 downto 4) => store_register(7 downto 4),
      Q(3 downto 0) => \^led\(3 downto 0),
      \load_register_reg[7]_0\(7 downto 0) => load_register(7 downto 0),
      \load_register_reg[7]_1\(7 downto 0) => D(7 downto 0),
      sysclk => sysclk
    );
registers: entity work.slower_core_plaquita_0_0_registers
     port map (
      CO(0) => alu_n_3,
      D(7 downto 0) => reg_a(7 downto 0),
      DI(1) => registers_n_50,
      DI(0) => registers_n_51,
      E(0) => store_register0,
      O(2) => alu_n_0,
      O(1) => alu_n_1,
      O(0) => alu_n_2,
      Q(14 downto 2) => instruction_reg(15 downto 3),
      Q(1 downto 0) => instruction_reg(1 downto 0),
      S(3) => registers_n_19,
      S(2) => registers_n_20,
      S(1) => registers_n_21,
      S(0) => registers_n_22,
      addr(7 downto 0) => addr(7 downto 0),
      \bank[2][7]_i_9_0\(7 downto 4) => store_register(7 downto 4),
      \bank[2][7]_i_9_0\(3 downto 0) => \^led\(3 downto 0),
      \bank[2][7]_i_9_1\(7 downto 0) => load_register(7 downto 0),
      \bank[8][0]_i_2_0\ => alu_n_10,
      \bank[8][0]_i_2_1\ => alu_n_8,
      \bank[8][0]_i_5_0\ => alu_n_9,
      \bank[8][0]_i_7_0\(3) => alu_n_4,
      \bank[8][0]_i_7_0\(2) => alu_n_5,
      \bank[8][0]_i_7_0\(1) => alu_n_6,
      \bank[8][0]_i_7_0\(0) => alu_n_7,
      \bank_reg[13][5]_0\(4 downto 3) => addr1(7 downto 6),
      \bank_reg[13][5]_0\(2 downto 0) => addr1(4 downto 2),
      \bank_reg[14][7]_0\(4 downto 3) => reg_b(7 downto 6),
      \bank_reg[14][7]_0\(2 downto 0) => reg_b(4 downto 2),
      \bank_reg[9][0]_0\(0) => D(4),
      \bank_reg[9][2]_0\(14) => registers_n_54,
      \bank_reg[9][2]_0\(13) => registers_n_55,
      \bank_reg[9][2]_0\(12) => registers_n_56,
      \bank_reg[9][2]_0\(11) => registers_n_57,
      \bank_reg[9][2]_0\(10) => registers_n_58,
      \bank_reg[9][2]_0\(9) => registers_n_59,
      \bank_reg[9][2]_0\(8) => registers_n_60,
      \bank_reg[9][2]_0\(7) => registers_n_61,
      \bank_reg[9][2]_0\(6) => registers_n_62,
      \bank_reg[9][2]_0\(5) => registers_n_63,
      \bank_reg[9][2]_0\(4) => registers_n_64,
      \bank_reg[9][2]_0\(3) => registers_n_65,
      \bank_reg[9][2]_0\(2) => registers_n_66,
      \bank_reg[9][2]_0\(1) => registers_n_67,
      \bank_reg[9][2]_0\(0) => registers_n_68,
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      \instruction_reg_reg[12]\ => \instruction_reg_reg[12]_0\,
      \instruction_reg_reg[12]_0\ => \instruction_reg_reg[12]_1\,
      \instruction_reg_reg[15]\ => addr(8),
      \instruction_reg_reg[15]_0\ => addr(9),
      \instruction_reg_reg[15]_1\ => \instruction_reg_reg[15]_0\,
      \instruction_reg_reg[15]_2\ => \instruction_reg_reg[15]_1\,
      \instruction_reg_reg[1]\(3) => registers_n_23,
      \instruction_reg_reg[1]\(2) => registers_n_24,
      \instruction_reg_reg[1]\(1) => registers_n_25,
      \instruction_reg_reg[1]\(0) => registers_n_26,
      \instruction_reg_reg[1]_0\(1) => registers_n_52,
      \instruction_reg_reg[1]_0\(0) => registers_n_53,
      \instruction_reg_reg[9]\ => registers_n_49,
      sysclk => sysclk,
      words_reg_0_255_0_0_i_22_0(2) => words_reg_0_255_0_0_i_34_n_0,
      words_reg_0_255_0_0_i_22_0(1) => words_reg_0_255_0_0_i_35_n_0,
      words_reg_0_255_0_0_i_22_0(0) => words_reg_0_255_0_0_i_36_n_0,
      words_reg_0_255_0_0_i_27_0(1) => words_reg_0_255_0_0_i_31_n_0,
      words_reg_0_255_0_0_i_27_0(0) => words_reg_0_255_0_0_i_32_n_0
    );
words_reg_0_255_0_0_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(7),
      I1 => reg_b(7),
      O => words_reg_0_255_0_0_i_31_n_0
    );
words_reg_0_255_0_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(6),
      I1 => reg_b(6),
      O => words_reg_0_255_0_0_i_32_n_0
    );
words_reg_0_255_0_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(4),
      I1 => reg_b(4),
      O => words_reg_0_255_0_0_i_34_n_0
    );
words_reg_0_255_0_0_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(3),
      I1 => reg_b(3),
      O => words_reg_0_255_0_0_i_35_n_0
    );
words_reg_0_255_0_0_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(2),
      I1 => reg_b(2),
      O => words_reg_0_255_0_0_i_36_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_plaquita is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][7]_i_18\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC
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
      \instruction_reg_reg[12]_0\ => dut_n_0,
      \instruction_reg_reg[12]_1\ => dut_n_13,
      \instruction_reg_reg[15]_0\ => dut_n_11,
      \instruction_reg_reg[15]_1\ => dut_n_12,
      led(3 downto 0) => led(3 downto 0),
      sysclk => sysclk
    );
mem: entity work.slower_core_plaquita_0_0_mem
     port map (
      addr(9 downto 0) => addr(9 downto 0),
      \bank[2][7]_i_18_0\ => \bank[2][7]_i_18\,
      \bank[2][7]_i_18_1\ => dut_n_0,
      \bank[2][7]_i_18_2\ => dut_n_11,
      \bank[2][7]_i_18_3\ => dut_n_12,
      \bank[2][7]_i_18_4\ => dut_n_13,
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
      \bank[2][7]_i_18\ => sysclk,
      led(3 downto 0) => led(3 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
