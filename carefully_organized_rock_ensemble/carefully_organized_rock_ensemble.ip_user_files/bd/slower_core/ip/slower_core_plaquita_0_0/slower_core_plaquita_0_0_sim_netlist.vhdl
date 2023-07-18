-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jul 18 00:42:44 2023
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
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction_reg_reg[11]\ : out STD_LOGIC;
    \instruction_reg_reg[9]\ : out STD_LOGIC;
    \instruction_reg_reg[9]_0\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_11\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][4]_i_11_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \bank[2][0]_i_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_alu : entity is "alu";
end slower_core_plaquita_0_0_alu;

architecture STRUCTURE of slower_core_plaquita_0_0_alu is
  signal \^o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \a_sub_b_carry__0_n_1\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_2\ : STD_LOGIC;
  signal \a_sub_b_carry__0_n_3\ : STD_LOGIC;
  signal a_sub_b_carry_n_0 : STD_LOGIC;
  signal a_sub_b_carry_n_1 : STD_LOGIC;
  signal a_sub_b_carry_n_2 : STD_LOGIC;
  signal a_sub_b_carry_n_3 : STD_LOGIC;
  signal a_sub_b_carry_n_5 : STD_LOGIC;
  signal a_sub_b_carry_n_7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bank[2][2]_i_16\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bank[8][0]_i_9\ : label is "soft_lutpair0";
begin
  O(1 downto 0) <= \^o\(1 downto 0);
a_sub_b_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => a_sub_b_carry_n_0,
      CO(2) => a_sub_b_carry_n_1,
      CO(1) => a_sub_b_carry_n_2,
      CO(0) => a_sub_b_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3) => \^o\(1),
      O(2) => a_sub_b_carry_n_5,
      O(1) => \^o\(0),
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
      DI(3 downto 0) => \bank[2][4]_i_11\(3 downto 0),
      O(3 downto 0) => \instruction_reg_reg[1]\(3 downto 0),
      S(3 downto 0) => \bank[2][4]_i_11_0\(3 downto 0)
    );
\bank[2][0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => a_sub_b_carry_n_7,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \bank[2][0]_i_4\,
      O => \instruction_reg_reg[11]\
    );
\bank[2][2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B3BF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => a_sub_b_carry_n_5,
      O => \instruction_reg_reg[9]\
    );
\bank[8][0]_i_9\: unisim.vcomponents.LUT4
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_io is
  port (
    io_load : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][3]_i_4\ : in STD_LOGIC;
    \bank[2][3]_i_4_0\ : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_io : entity is "io";
end slower_core_plaquita_0_0_io;

architecture STRUCTURE of slower_core_plaquita_0_0_io is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal io_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal load_register : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \load_register[0]_i_1_n_0\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\bank[2][0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => load_register(0),
      I1 => \bank[2][3]_i_4\,
      I2 => \^q\(0),
      I3 => \bank[2][3]_i_4_0\,
      O => io_load(0)
    );
\bank[2][1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => load_register(1),
      I1 => \bank[2][3]_i_4\,
      I2 => \^q\(1),
      I3 => \bank[2][3]_i_4_0\,
      O => io_load(1)
    );
\bank[2][2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => load_register(2),
      I1 => \bank[2][3]_i_4\,
      I2 => \^q\(2),
      I3 => \bank[2][3]_i_4_0\,
      O => io_load(2)
    );
\bank[2][3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B800"
    )
        port map (
      I0 => load_register(3),
      I1 => \bank[2][3]_i_4\,
      I2 => \^q\(3),
      I3 => \bank[2][3]_i_4_0\,
      O => io_load(3)
    );
\load_register[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(0),
      I1 => sw(0),
      O => \load_register[0]_i_1_n_0\
    );
\load_register[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(1),
      I1 => sw(1),
      O => io_in(1)
    );
\load_register[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(2),
      I1 => sw(2),
      O => io_in(2)
    );
\load_register[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => btn(3),
      I1 => sw(3),
      O => io_in(3)
    );
\load_register_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => '1',
      D => \load_register[0]_i_1_n_0\,
      Q => load_register(0),
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
      D => io_in(1),
      Q => load_register(1),
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
      D => io_in(2),
      Q => load_register(2),
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
      D => io_in(3),
      Q => load_register(3),
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
      Q => \^q\(0),
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
      Q => \^q\(1),
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
      Q => \^q\(2),
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
      Q => \^q\(3),
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
      Q => \^q\(4),
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
      Q => \^q\(5),
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
      Q => \^q\(6),
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
      Q => \^q\(7),
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
    \bank[2][7]_i_24_0\ : in STD_LOGIC;
    data_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[2][7]_i_24_1\ : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \bank[2][7]_i_24_2\ : in STD_LOGIC;
    \bank[2][7]_i_24_3\ : in STD_LOGIC;
    \bank[2][7]_i_24_4\ : in STD_LOGIC
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
\bank[2][0]_i_6\: unisim.vcomponents.LUT6
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
\bank[2][2]_i_14\: unisim.vcomponents.LUT6
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
\bank[2][4]_i_12\: unisim.vcomponents.LUT6
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
\bank[2][5]_i_14\: unisim.vcomponents.LUT6
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
\bank[2][6]_i_12\: unisim.vcomponents.LUT6
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
\bank[2][7]_i_24\: unisim.vcomponents.LUT6
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
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_0_255_1_1_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_0_255_2_2_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_0_255_3_3_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_0_255_4_4_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_0_255_5_5_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_0_255_6_6_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_0_255_7_7_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_1\
    );
words_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_256_511_0_0_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_256_511_1_1_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_256_511_2_2_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_256_511_3_3_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_256_511_4_4_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_256_511_5_5_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_256_511_6_6_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_256_511_7_7_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_2\
    );
words_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_512_767_0_0_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_512_767_1_1_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_512_767_2_2_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_512_767_3_3_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_512_767_4_4_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_512_767_5_5_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_512_767_6_6_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_512_767_7_7_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_3\
    );
words_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(0),
      O => words_reg_768_1023_0_0_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(1),
      O => words_reg_768_1023_1_1_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(2),
      O => words_reg_768_1023_2_2_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(3),
      O => words_reg_768_1023_3_3_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(4),
      O => words_reg_768_1023_4_4_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(5),
      O => words_reg_768_1023_5_5_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(6),
      O => words_reg_768_1023_6_6_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
    );
words_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      IS_WCLK_INVERTED => '1'
    )
        port map (
      A(7 downto 0) => addr(7 downto 0),
      D => data_out(7),
      O => words_reg_768_1023_7_7_n_0,
      WCLK => \bank[2][7]_i_24_0\,
      WE => \bank[2][7]_i_24_4\
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
    \instruction_reg_reg[12]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \instruction_reg_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \instruction_reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank_reg[13][5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \instruction_reg_reg[12]_2\ : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \instruction_reg_reg[10]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bank[2][7]_i_6_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bank_reg[9][2]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \bank_reg[12][3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][7]_i_18_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_load0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bank[8][0]_i_3_0\ : in STD_LOGIC;
    \bank[2][0]_i_2_0\ : in STD_LOGIC;
    \bank[8][1]_i_2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bank[2][2]_i_8_0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bank[2][6]_i_26_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    words_reg_0_255_0_0_i_26_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 0 to 0 );
    sysclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_registers : entity is "registers";
end slower_core_plaquita_0_0_registers;

architecture STRUCTURE of slower_core_plaquita_0_0_registers is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal a_sub_b_carry_i_6_n_0 : STD_LOGIC;
  signal addr0 : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal addr1 : STD_LOGIC_VECTOR ( 9 downto 4 );
  signal addr_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal bank : STD_LOGIC;
  signal \bank[10][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[10][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[10][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[11][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[11][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[11][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[12][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[12][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[13][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[13][4]_i_2_n_0\ : STD_LOGIC;
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
  signal \bank[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[1][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][0]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][1]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][2]_i_18_n_0\ : STD_LOGIC;
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
  signal \bank[2][3]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][4]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_12_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_13_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_7_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][5]_i_9_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_10_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_11_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_14_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_15_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_16_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_17_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_24_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_25_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_28_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_29_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_30_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_31_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_32_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_33_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_34_n_0\ : STD_LOGIC;
  signal \bank[2][6]_i_35_n_0\ : STD_LOGIC;
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
  signal \bank[2][7]_i_18_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_19_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_20_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_21_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_22_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_23_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_26_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_27_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_28_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_29_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_30_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_31_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_32_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_33_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_6_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_8_n_0\ : STD_LOGIC;
  signal \bank[2][7]_i_9_n_0\ : STD_LOGIC;
  signal \bank[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[3][4]_i_2_n_0\ : STD_LOGIC;
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
  signal \bank[4][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[4][7]_i_3_n_0\ : STD_LOGIC;
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
  signal \bank[8][0]_i_10_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_11_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_12_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_13_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_14_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][0]_i_8_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][1]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][2]_i_5_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_6_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_7_n_0\ : STD_LOGIC;
  signal \bank[8][3]_i_9_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_3_n_0\ : STD_LOGIC;
  signal \bank[8][4]_i_4_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][5]_i_2_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_1_n_0\ : STD_LOGIC;
  signal \bank[8][6]_i_2_n_0\ : STD_LOGIC;
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
  signal \bank[9][6]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_2_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_3_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_4_n_0\ : STD_LOGIC;
  signal \bank[9][7]_i_5_n_0\ : STD_LOGIC;
  signal \bank_reg[10]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bank_reg[11]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^bank_reg[13][5]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bank_reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \bank_reg[2][3]_i_24_n_0\ : STD_LOGIC;
  signal \bank_reg[2][3]_i_25_n_0\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_0\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_1\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_2\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_3\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_4\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_5\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_6\ : STD_LOGIC;
  signal \bank_reg[2][6]_i_22_n_7\ : STD_LOGIC;
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
  signal flags : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal instruction_addr0 : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \instruction_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \^instruction_reg_reg[12]_1\ : STD_LOGIC;
  signal \^instruction_reg_reg[12]_2\ : STD_LOGIC;
  signal \^instruction_reg_reg[15]\ : STD_LOGIC;
  signal \^instruction_reg_reg[15]_0\ : STD_LOGIC;
  signal \^instruction_reg_reg[6]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal io_load : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_b : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \store_register[0]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[0]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[1]_i_6_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[2]_i_5_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_10_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_11_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_12_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_13_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_14_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_6_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_7_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_8_n_0\ : STD_LOGIC;
  signal \store_register[3]_i_9_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[4]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[5]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_2_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_3_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_4_n_0\ : STD_LOGIC;
  signal \store_register[6]_i_5_n_0\ : STD_LOGIC;
  signal words_reg_0_255_0_0_i_12_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_15_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_26_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_27_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_28_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_29_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_30_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_30_n_1 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_30_n_2 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_30_n_3 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_34_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_35_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_38_n_0 : STD_LOGIC;
  signal \NLW_bank_reg[8][3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bank_reg[8][3]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_bank_reg[8][3]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_31_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_words_reg_0_255_0_0_i_31_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bank[10][4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[10][7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[11][4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[11][7]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bank[12][0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bank[12][2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \bank[12][4]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[12][5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bank[12][7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bank[12][7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bank[13][4]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[13][7]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \bank[14][1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bank[14][2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \bank[14][3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bank[14][4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[14][5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bank[14][6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \bank[14][7]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bank[14][7]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bank[1][4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bank[1][7]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[2][0]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[2][0]_i_15\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \bank[2][0]_i_16\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \bank[2][0]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bank[2][2]_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[2][2]_i_17\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bank[2][2]_i_18\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[2][3]_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[2][3]_i_17\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[2][3]_i_18\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bank[2][4]_i_14\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bank[2][4]_i_15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[2][4]_i_17\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bank[2][4]_i_19\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[2][4]_i_20\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bank[2][4]_i_21\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bank[2][4]_i_22\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bank[2][4]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[2][5]_i_10\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[2][5]_i_15\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \bank[2][5]_i_17\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bank[2][5]_i_18\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bank[2][5]_i_19\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bank[2][5]_i_24\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bank[2][5]_i_25\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \bank[2][6]_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bank[2][6]_i_13\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bank[2][6]_i_15\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[2][6]_i_16\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bank[2][6]_i_17\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[2][6]_i_20\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \bank[2][6]_i_21\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \bank[2][6]_i_31\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bank[2][6]_i_32\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \bank[2][7]_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank[2][7]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[2][7]_i_12\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bank[2][7]_i_13\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bank[2][7]_i_23\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \bank[2][7]_i_25\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bank[2][7]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[3][4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bank[3][7]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \bank[3][7]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bank[4][4]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bank[4][7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bank[5][2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bank[5][3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bank[5][4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bank[5][5]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bank[5][6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bank[5][7]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \bank[5][7]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bank[6][1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \bank[6][2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \bank[6][3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \bank[6][4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \bank[6][5]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bank[6][6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \bank[6][7]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \bank[6][7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bank[6][7]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bank[7][1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \bank[7][2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \bank[7][3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \bank[7][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[7][5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bank[7][6]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \bank[7][7]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \bank[7][7]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bank[8][0]_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bank[8][0]_i_13\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[8][0]_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bank[8][0]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bank[8][1]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[8][1]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bank[8][2]_i_3\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \bank[8][3]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \bank[8][3]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bank[8][4]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \bank[8][4]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bank[8][5]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bank[8][6]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[8][7]_i_6\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bank[8][7]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bank[9][1]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bank[9][1]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bank[9][3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bank[9][4]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \bank[9][4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bank[9][6]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bank[9][6]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \bank[9][7]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \store_register[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \store_register[0]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \store_register[0]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \store_register[1]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \store_register[1]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \store_register[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \store_register[3]_i_14\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \store_register[3]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \store_register[3]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \store_register[5]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \store_register[5]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \store_register[6]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_16 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_17 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_18 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_19 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_20 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_21 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_22 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_23 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_24 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_25 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_26 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_27 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of words_reg_0_255_0_0_i_28 : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_29 : label is 35;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_30 : label is 35;
  attribute ADDER_THRESHOLD of words_reg_0_255_0_0_i_31 : label is 35;
begin
  D(7 downto 0) <= \^d\(7 downto 0);
  \bank_reg[13][5]_0\(3 downto 0) <= \^bank_reg[13][5]_0\(3 downto 0);
  \instruction_reg_reg[12]_1\ <= \^instruction_reg_reg[12]_1\;
  \instruction_reg_reg[12]_2\ <= \^instruction_reg_reg[12]_2\;
  \instruction_reg_reg[15]\ <= \^instruction_reg_reg[15]\;
  \instruction_reg_reg[15]_0\ <= \^instruction_reg_reg[15]_0\;
  \instruction_reg_reg[6]\(3 downto 0) <= \^instruction_reg_reg[6]\(3 downto 0);
\a_sub_b_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      O => \bank[2][7]_i_6_0\(0)
    );
\a_sub_b_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^instruction_reg_reg[6]\(3),
      I1 => \bank[2][7]_i_6_n_0\,
      O => \instruction_reg_reg[6]_0\(3)
    );
\a_sub_b_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction_reg_reg[6]\(2),
      I1 => \^d\(6),
      O => \instruction_reg_reg[6]_0\(2)
    );
\a_sub_b_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      O => \instruction_reg_reg[6]_0\(1)
    );
\a_sub_b_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[2][4]_i_2_n_0\,
      O => \instruction_reg_reg[6]_0\(0)
    );
a_sub_b_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDA8"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[3]_i_8_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      O => DI(0)
    );
a_sub_b_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a_sub_b_carry_i_6_n_0,
      I1 => \^instruction_reg_reg[6]\(1),
      O => S(3)
    );
a_sub_b_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^instruction_reg_reg[6]\(0),
      I1 => \^d\(2),
      O => S(2)
    );
a_sub_b_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_b(1),
      I1 => \^d\(1),
      O => S(1)
    );
a_sub_b_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reg_b(0),
      I1 => \^d\(0),
      O => S(0)
    );
a_sub_b_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0355"
    )
        port map (
      I0 => \store_register[3]_i_9_n_0\,
      I1 => \store_register[3]_i_8_n_0\,
      I2 => \store_register[3]_i_7_n_0\,
      I3 => \store_register[3]_i_6_n_0\,
      O => a_sub_b_carry_i_6_n_0
    );
\bank[10][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[10][0]_i_1_n_0\
    );
\bank[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[10][1]_i_1_n_0\
    );
\bank[10][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[10][2]_i_1_n_0\
    );
\bank[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[10][3]_i_1_n_0\
    );
\bank[10][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[10][4]_i_2_n_0\,
      O => \bank[10][4]_i_1_n_0\
    );
\bank[10][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[10][4]_i_2_n_0\
    );
\bank[10][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[10][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[10][5]_i_1_n_0\
    );
\bank[10][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
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
      I3 => \store_register[1]_i_4_n_0\,
      I4 => Q(0),
      I5 => Q(2),
      O => \bank[10][7]_i_1_n_0\
    );
\bank[10][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[10][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[10][7]_i_2_n_0\
    );
\bank[10][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[10][7]_i_3_n_0\
    );
\bank[11][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[11][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[11][0]_i_1_n_0\
    );
\bank[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[11][1]_i_1_n_0\
    );
\bank[11][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[11][2]_i_1_n_0\
    );
\bank[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[11][3]_i_1_n_0\
    );
\bank[11][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[11][4]_i_2_n_0\,
      O => \bank[11][4]_i_1_n_0\
    );
\bank[11][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[11][4]_i_2_n_0\
    );
\bank[11][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[11][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[11][5]_i_1_n_0\
    );
\bank[11][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
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
\bank[11][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[11][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[11][7]_i_2_n_0\
    );
\bank[11][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(4),
      O => \bank[11][7]_i_3_n_0\
    );
\bank[12][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[2][7]_i_4_n_0\,
      O => \bank[12][0]_i_1_n_0\
    );
\bank[12][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][1]_i_3_n_0\,
      I3 => \bank[2][1]_i_4_n_0\,
      O => \bank[12][1]_i_1_n_0\
    );
\bank[12][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][2]_i_3_n_0\,
      O => \bank[12][2]_i_1_n_0\
    );
\bank[12][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][3]_i_3_n_0\,
      I3 => \bank[2][3]_i_4_n_0\,
      O => \bank[12][3]_i_1_n_0\
    );
\bank[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[12][4]_i_2_n_0\,
      O => \bank[12][4]_i_1_n_0\
    );
\bank[12][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[12][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[12][4]_i_2_n_0\
    );
\bank[12][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(5),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][5]_i_3_n_0\,
      O => \bank[12][5]_i_1_n_0\
    );
\bank[12][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][6]_i_3_n_0\,
      I3 => \bank[2][6]_i_4_n_0\,
      O => \bank[12][6]_i_1_n_0\
    );
\bank[12][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \bank[12][7]_i_3_n_0\,
      I1 => Q(11),
      I2 => Q(14),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(12),
      I5 => Q(13),
      O => \bank[12][7]_i_1_n_0\
    );
\bank[12][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_8_n_0\,
      O => \bank[12][7]_i_2_n_0\
    );
\bank[12][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(4),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(3),
      O => \bank[12][7]_i_3_n_0\
    );
\bank[13][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[13][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[13][0]_i_1_n_0\
    );
\bank[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[13][1]_i_1_n_0\
    );
\bank[13][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[13][2]_i_1_n_0\
    );
\bank[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[13][3]_i_1_n_0\
    );
\bank[13][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[13][4]_i_2_n_0\,
      O => \bank[13][4]_i_1_n_0\
    );
\bank[13][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[13][4]_i_2_n_0\
    );
\bank[13][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[13][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[13][5]_i_1_n_0\
    );
\bank[13][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[13][6]_i_1_n_0\
    );
\bank[13][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => Q(6),
      I4 => \bank[5][7]_i_3_n_0\,
      O => \bank[13][7]_i_1_n_0\
    );
\bank[13][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[13][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[13][7]_i_2_n_0\
    );
\bank[13][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \bank[5][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => Q(4),
      O => \bank[13][7]_i_3_n_0\
    );
\bank[14][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[14][7]_i_3_n_0\,
      I3 => reg_b(0),
      O => \bank[14][0]_i_1_n_0\
    );
\bank[14][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => reg_b(1),
      O => \bank[14][1]_i_1_n_0\
    );
\bank[14][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      O => \bank[14][2]_i_1_n_0\
    );
\bank[14][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      O => \bank[14][3]_i_1_n_0\
    );
\bank[14][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
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
      I2 => \^instruction_reg_reg[6]\(2),
      O => \bank[14][6]_i_1_n_0\
    );
\bank[14][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => Q(6),
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => Q(3),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[14][7]_i_1_n_0\
    );
\bank[14][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[14][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      O => \bank[14][7]_i_2_n_0\
    );
\bank[14][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[14][7]_i_3_n_0\
    );
\bank[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[1][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[1][0]_i_1_n_0\
    );
\bank[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[1][1]_i_1_n_0\
    );
\bank[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[1][2]_i_1_n_0\
    );
\bank[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[1][3]_i_1_n_0\
    );
\bank[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[1][4]_i_2_n_0\,
      O => \bank[1][4]_i_1_n_0\
    );
\bank[1][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[1][4]_i_2_n_0\
    );
\bank[1][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[1][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[1][5]_i_1_n_0\
    );
\bank[1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
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
\bank[1][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[1][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[1][7]_i_2_n_0\
    );
\bank[1][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(3),
      I4 => Q(4),
      O => \bank[1][7]_i_3_n_0\
    );
\bank[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[2][0]_i_1_n_0\
    );
\bank[2][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55330F0055330FFF"
    )
        port map (
      I0 => \^d\(6),
      I1 => \^d\(2),
      I2 => \^d\(4),
      I3 => Q(5),
      I4 => Q(4),
      I5 => \^d\(0),
      O => \bank[2][0]_i_10_n_0\
    );
\bank[2][0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(4),
      I1 => \^d\(0),
      I2 => Q(3),
      O => \bank[2][0]_i_11_n_0\
    );
\bank[2][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3BCB3BCBC80B3BC"
    )
        port map (
      I0 => \bank_reg[2][3]_i_19_n_7\,
      I1 => Q(9),
      I2 => Q(8),
      I3 => \^d\(0),
      I4 => \bank[2][0]_i_13_n_0\,
      I5 => \bank[2][0]_i_14_n_0\,
      O => \instruction_reg_reg[10]\
    );
\bank[2][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"575757F7F7F757F7"
    )
        port map (
      I0 => \store_register[3]_i_14_n_0\,
      I1 => \store_register[3]_i_13_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => \bank[2][0]_i_15_n_0\,
      I4 => \bank[6][7]_i_3_n_0\,
      I5 => \bank[2][0]_i_16_n_0\,
      O => \bank[2][0]_i_13_n_0\
    );
\bank[2][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \bank[2][0]_i_17_n_0\,
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank[2][0]_i_18_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \store_register[3]_i_10_n_0\,
      I5 => \store_register[3]_i_14_n_0\,
      O => \bank[2][0]_i_14_n_0\
    );
\bank[2][0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => Q(3),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => flags(0),
      O => \bank[2][0]_i_15_n_0\
    );
\bank[2][0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[10]\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[11]\(0),
      O => \bank[2][0]_i_16_n_0\
    );
\bank[2][0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[4]\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[5]\(0),
      O => \bank[2][0]_i_17_n_0\
    );
\bank[2][0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[6]\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[7]\(0),
      O => \bank[2][0]_i_18_n_0\
    );
\bank[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAEEEA"
    )
        port map (
      I0 => \bank[2][0]_i_3_n_0\,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => Q(3),
      I3 => \bank[8][0]_i_4_n_0\,
      I4 => \bank[2][0]_i_4_n_0\,
      I5 => \bank[2][0]_i_5_n_0\,
      O => \bank[2][0]_i_2_n_0\
    );
\bank[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF10FF10FF10"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(0),
      I3 => \bank[2][4]_i_3_n_0\,
      I4 => \bank_reg[12][3]_0\(0),
      I5 => \^instruction_reg_reg[12]_1\,
      O => \bank[2][0]_i_3_n_0\
    );
\bank[2][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040F0400F7FFF7F"
    )
        port map (
      I0 => \^d\(0),
      I1 => Q(8),
      I2 => Q(10),
      I3 => Q(9),
      I4 => \bank[2][0]_i_8_n_0\,
      I5 => \bank[2][0]_i_2_0\,
      O => \bank[2][0]_i_4_n_0\
    );
\bank[2][0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => reg_b(0),
      I2 => \bank[2][4]_i_3_n_0\,
      O => \bank[2][0]_i_5_n_0\
    );
\bank[2][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47474747000000FF"
    )
        port map (
      I0 => \bank[2][1]_i_15_n_0\,
      I1 => Q(3),
      I2 => \bank[2][0]_i_10_n_0\,
      I3 => \bank[2][0]_i_11_n_0\,
      I4 => Q(5),
      I5 => \bank[2][6]_i_17_n_0\,
      O => \bank[2][0]_i_8_n_0\
    );
\bank[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[2][1]_i_1_n_0\
    );
\bank[2][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2AAAAA0020AAAA"
    )
        port map (
      I0 => \bank[2][1]_i_14_n_0\,
      I1 => \bank[2][2]_i_18_n_0\,
      I2 => Q(3),
      I3 => \bank[2][2]_i_17_n_0\,
      I4 => \bank[2][6]_i_17_n_0\,
      I5 => \bank[2][1]_i_15_n_0\,
      O => \bank[2][1]_i_12_n_0\
    );
\bank[2][1]_i_13\: unisim.vcomponents.LUT6
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
      O => \bank[2][1]_i_13_n_0\
    );
\bank[2][1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFFFFFEFF"
    )
        port map (
      I0 => Q(5),
      I1 => \bank[2][6]_i_17_n_0\,
      I2 => Q(4),
      I3 => \^d\(1),
      I4 => Q(3),
      I5 => \^d\(0),
      O => \bank[2][1]_i_14_n_0\
    );
\bank[2][1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACC0F00AACC0FFF"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => a_sub_b_carry_i_6_n_0,
      I2 => \^d\(5),
      I3 => Q(5),
      I4 => Q(4),
      I5 => \^d\(1),
      O => \bank[2][1]_i_15_n_0\
    );
\bank[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][1]_i_5_n_0\,
      I1 => \bank[2][1]_i_6_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][1]_i_7_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][1]_i_8_n_0\,
      O => reg_b(1)
    );
\bank[2][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454045404040454"
    )
        port map (
      I0 => \bank[2][7]_i_17_n_0\,
      I1 => Q(4),
      I2 => \bank[8][0]_i_4_n_0\,
      I3 => \bank[2][1]_i_9_n_0\,
      I4 => \bank[2][6]_i_10_n_0\,
      I5 => \^d\(1),
      O => \bank[2][1]_i_3_n_0\
    );
\bank[2][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF323232FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(1),
      I3 => reg_b(1),
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => \bank_reg[12][3]_0\(1),
      O => \bank[2][1]_i_4_n_0\
    );
\bank[2][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => flags(1),
      I1 => \bank[9][1]_i_2_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[10]\(1),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[11]\(1),
      O => \bank[2][1]_i_5_n_0\
    );
\bank[2][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(1),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => instruction_addr0(3),
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(1),
      O => \bank[2][1]_i_6_n_0\
    );
\bank[2][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(1),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(1),
      I4 => Q(3),
      I5 => \bank_reg[3]\(1),
      O => \bank[2][1]_i_7_n_0\
    );
\bank[2][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[6]\(1),
      I1 => \bank_reg[7]\(1),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[4]\(1),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[5]\(1),
      O => \bank[2][1]_i_8_n_0\
    );
\bank[2][1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080B3BF"
    )
        port map (
      I0 => \bank[2][1]_i_12_n_0\,
      I1 => Q(10),
      I2 => Q(9),
      I3 => O(0),
      I4 => \bank[2][1]_i_13_n_0\,
      O => \bank[2][1]_i_9_n_0\
    );
\bank[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[2][2]_i_1_n_0\
    );
\bank[2][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABAAAAAAABAAABA"
    )
        port map (
      I0 => \bank[2][2]_i_8_0\,
      I1 => \bank[2][2]_i_17_n_0\,
      I2 => \bank[2][6]_i_16_n_0\,
      I3 => \bank[2][2]_i_18_n_0\,
      I4 => \bank[2][3]_i_17_n_0\,
      I5 => Q(3),
      O => \bank[2][2]_i_10_n_0\
    );
\bank[2][2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(8),
      I3 => Q(5),
      O => \bank[2][2]_i_11_n_0\
    );
\bank[2][2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF44CF77"
    )
        port map (
      I0 => \^d\(0),
      I1 => Q(4),
      I2 => \^d\(1),
      I3 => Q(3),
      I4 => \^d\(2),
      O => \bank[2][2]_i_12_n_0\
    );
\bank[2][2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA3CFCC0"
    )
        port map (
      I0 => \bank_reg[2][3]_i_19_n_5\,
      I1 => \^instruction_reg_reg[6]\(0),
      I2 => \^d\(2),
      I3 => Q(8),
      I4 => Q(9),
      I5 => Q(10),
      O => \bank[2][2]_i_13_n_0\
    );
\bank[2][2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => Q(5),
      O => \bank[2][2]_i_17_n_0\
    );
\bank[2][2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(4),
      I1 => Q(4),
      I2 => \^d\(6),
      I3 => Q(5),
      I4 => \^d\(2),
      O => \bank[2][2]_i_18_n_0\
    );
\bank[2][2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \bank[2][2]_i_4_n_0\,
      I1 => \bank[2][2]_i_5_n_0\,
      I2 => \bank[2][2]_i_6_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][2]_i_7_n_0\,
      I5 => \store_register[3]_i_14_n_0\,
      O => \^instruction_reg_reg[6]\(0)
    );
\bank[2][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0074"
    )
        port map (
      I0 => \bank[2][2]_i_8_n_0\,
      I1 => \bank[8][0]_i_4_n_0\,
      I2 => Q(5),
      I3 => \bank[2][7]_i_17_n_0\,
      I4 => \bank[2][2]_i_9_n_0\,
      O => \bank[2][2]_i_3_n_0\
    );
\bank[2][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(2),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(2),
      I4 => Q(3),
      I5 => \bank_reg[3]\(2),
      O => \bank[2][2]_i_4_n_0\
    );
\bank[2][2]_i_5\: unisim.vcomponents.LUT6
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
      O => \bank[2][2]_i_5_n_0\
    );
\bank[2][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => flags(2),
      I1 => \bank[9][2]_i_2_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[10]\(2),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[11]\(2),
      O => \bank[2][2]_i_6_n_0\
    );
\bank[2][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(2),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => instruction_addr0(4),
      I4 => Q(3),
      I5 => addr1(4),
      O => \bank[2][2]_i_7_n_0\
    );
\bank[2][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444474744474"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[2][6]_i_10_n_0\,
      I2 => \bank[2][2]_i_10_n_0\,
      I3 => \bank[2][2]_i_11_n_0\,
      I4 => \bank[2][2]_i_12_n_0\,
      I5 => \bank[2][2]_i_13_n_0\,
      O => \bank[2][2]_i_8_n_0\
    );
\bank[2][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF323232FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(2),
      I3 => \^instruction_reg_reg[6]\(0),
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => \bank_reg[12][3]_0\(2),
      O => \bank[2][2]_i_9_n_0\
    );
\bank[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[2][3]_i_1_n_0\
    );
\bank[2][3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \store_register[2]_i_4_n_0\,
      O => \bank[2][3]_i_12_n_0\
    );
\bank[2][3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[6]\(3),
      I1 => \store_register[2]_i_4_n_0\,
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
\bank[2][3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEBFBFBFAEBF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \bank[2][5]_i_19_n_0\,
      I3 => \^d\(3),
      I4 => Q(3),
      I5 => \^d\(2),
      O => \bank[2][3]_i_15_n_0\
    );
\bank[2][3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F1405404014054"
    )
        port map (
      I0 => Q(10),
      I1 => \^instruction_reg_reg[6]\(1),
      I2 => Q(8),
      I3 => a_sub_b_carry_i_6_n_0,
      I4 => Q(9),
      I5 => \bank_reg[2][3]_i_19_n_4\,
      O => \bank[2][3]_i_16_n_0\
    );
\bank[2][3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC77FC44"
    )
        port map (
      I0 => \^d\(5),
      I1 => Q(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => Q(5),
      I4 => a_sub_b_carry_i_6_n_0,
      O => \bank[2][3]_i_17_n_0\
    );
\bank[2][3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F077F044"
    )
        port map (
      I0 => \^d\(5),
      I1 => Q(4),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => Q(5),
      I4 => a_sub_b_carry_i_6_n_0,
      O => \bank[2][3]_i_18_n_0\
    );
\bank[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBAAAAABFBFAFA"
    )
        port map (
      I0 => \bank[2][3]_i_5_n_0\,
      I1 => \bank[2][3]_i_6_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][3]_i_7_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][3]_i_8_n_0\,
      O => \^instruction_reg_reg[6]\(1)
    );
\bank[2][3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a_sub_b_carry_i_6_n_0,
      I1 => \^instruction_reg_reg[6]\(1),
      O => \bank[2][3]_i_20_n_0\
    );
\bank[2][3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959596A6A6A596A"
    )
        port map (
      I0 => \^d\(2),
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank_reg[2][3]_i_24_n_0\,
      I3 => \bank[2][2]_i_5_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][2]_i_4_n_0\,
      O => \bank[2][3]_i_21_n_0\
    );
\bank[2][3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank_reg[2][3]_i_25_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][1]_i_6_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][1]_i_5_n_0\,
      O => \bank[2][3]_i_22_n_0\
    );
\bank[2][3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5959596A6A6A596A"
    )
        port map (
      I0 => \^d\(0),
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][3]_i_26_n_0\,
      I3 => \store_register[3]_i_11_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \store_register[3]_i_10_n_0\,
      O => \bank[2][3]_i_23_n_0\
    );
\bank[2][3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0B8F000F0B8"
    )
        port map (
      I0 => \bank[2][0]_i_16_n_0\,
      I1 => Q(4),
      I2 => \bank[2][0]_i_15_n_0\,
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(5),
      I5 => \store_register[3]_i_13_n_0\,
      O => \bank[2][3]_i_26_n_0\
    );
\bank[2][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045454540454"
    )
        port map (
      I0 => \bank[2][7]_i_17_n_0\,
      I1 => Q(6),
      I2 => \bank[8][0]_i_4_n_0\,
      I3 => \bank[2][3]_i_9_n_0\,
      I4 => \bank[2][6]_i_10_n_0\,
      I5 => a_sub_b_carry_i_6_n_0,
      O => \bank[2][3]_i_3_n_0\
    );
\bank[2][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF323232FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(3),
      I3 => \^instruction_reg_reg[6]\(1),
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => \bank_reg[12][3]_0\(3),
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
\bank[2][3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F113FDD"
    )
        port map (
      I0 => \bank_reg[1]\(3),
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank_reg[2]\(3),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \bank_reg[3]\(3),
      O => \bank[2][3]_i_6_n_0\
    );
\bank[2][3]_i_7\: unisim.vcomponents.LUT6
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
      O => \bank[2][3]_i_7_n_0\
    );
\bank[2][3]_i_8\: unisim.vcomponents.LUT6
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
      O => \bank[2][3]_i_8_n_0\
    );
\bank[2][3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFAFCF"
    )
        port map (
      I0 => \bank[2][3]_i_14_n_0\,
      I1 => \bank[2][3]_i_15_n_0\,
      I2 => \bank[2][6]_i_16_n_0\,
      I3 => \bank[2][6]_i_17_n_0\,
      I4 => O(1),
      I5 => \bank[2][3]_i_16_n_0\,
      O => \bank[2][3]_i_9_n_0\
    );
\bank[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[2][4]_i_6_n_0\,
      O => \bank[2][4]_i_1_n_0\
    );
\bank[2][4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10551555"
    )
        port map (
      I0 => \bank[2][4]_i_15_n_0\,
      I1 => \bank_reg[7]\(4),
      I2 => Q(3),
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => \bank_reg[6]\(4),
      O => \bank[2][4]_i_10_n_0\
    );
\bank[2][4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0A0CFAFCF"
    )
        port map (
      I0 => \bank[2][4]_i_16_n_0\,
      I1 => \bank[2][4]_i_17_n_0\,
      I2 => \bank[2][6]_i_16_n_0\,
      I3 => \bank[2][6]_i_17_n_0\,
      I4 => \bank[8][1]_i_2_0\(0),
      I5 => \bank[2][4]_i_18_n_0\,
      O => \bank[2][4]_i_11_n_0\
    );
\bank[2][4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33001000000000"
    )
        port map (
      I0 => Q(11),
      I1 => Q(13),
      I2 => Q(12),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(14),
      I5 => words_reg_0_255_0_0_i_15_n_0,
      O => \^instruction_reg_reg[12]_1\
    );
\bank[2][4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \bank[2][7]_i_18_0\(0),
      I1 => \^instruction_reg_reg[12]_2\,
      I2 => \^instruction_reg_reg[12]_1\,
      O => io_load(4)
    );
\bank[2][4]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA32AA02"
    )
        port map (
      I0 => \bank_reg[4]\(4),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \bank_reg[5]\(4),
      O => \bank[2][4]_i_15_n_0\
    );
\bank[2][4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8CCB800B800"
    )
        port map (
      I0 => \bank[2][4]_i_19_n_0\,
      I1 => Q(6),
      I2 => \bank[2][4]_i_20_n_0\,
      I3 => Q(3),
      I4 => \bank[2][4]_i_21_n_0\,
      I5 => \bank[2][4]_i_22_n_0\,
      O => \bank[2][4]_i_16_n_0\
    );
\bank[2][4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFB00"
    )
        port map (
      I0 => Q(4),
      I1 => \^d\(0),
      I2 => Q(3),
      I3 => Q(5),
      I4 => \bank[8][3]_i_7_n_0\,
      O => \bank[2][4]_i_17_n_0\
    );
\bank[2][4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F1511004015110"
    )
        port map (
      I0 => Q(10),
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => Q(8),
      I3 => \^d\(4),
      I4 => Q(9),
      I5 => \bank_reg[2][6]_i_22_n_7\,
      O => \bank[2][4]_i_18_n_0\
    );
\bank[2][4]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAF3"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \^d\(5),
      I2 => Q(5),
      I3 => Q(4),
      O => \bank[2][4]_i_19_n_0\
    );
\bank[2][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \bank[2][4]_i_7_n_0\,
      I1 => \bank[2][4]_i_8_n_0\,
      I2 => \bank[2][4]_i_9_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][4]_i_10_n_0\,
      I5 => \store_register[3]_i_14_n_0\,
      O => \bank[2][4]_i_2_n_0\
    );
\bank[2][4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC8D"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \^d\(5),
      I3 => Q(5),
      O => \bank[2][4]_i_20_n_0\
    );
\bank[2][4]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => Q(5),
      O => \bank[2][4]_i_21_n_0\
    );
\bank[2][4]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDFD"
    )
        port map (
      I0 => \^d\(4),
      I1 => Q(5),
      I2 => Q(4),
      I3 => \^d\(6),
      O => \bank[2][4]_i_22_n_0\
    );
\bank[2][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F0100000101"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(13),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][4]_i_3_n_0\
    );
\bank[2][4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A808A8080808A8"
    )
        port map (
      I0 => \bank[2][6]_i_11_n_0\,
      I1 => Q(7),
      I2 => \bank[8][0]_i_4_n_0\,
      I3 => \bank[2][4]_i_11_n_0\,
      I4 => \bank[2][6]_i_10_n_0\,
      I5 => \^d\(4),
      O => \bank[2][4]_i_4_n_0\
    );
\bank[2][4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(4),
      I3 => \^instruction_reg_reg[12]_1\,
      I4 => io_load(4),
      O => \bank[2][4]_i_5_n_0\
    );
\bank[2][4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[2][4]_i_6_n_0\
    );
\bank[2][4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3F3F505F3030"
    )
        port map (
      I0 => \bank_reg[10]\(4),
      I1 => \bank_reg[11]\(4),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[8][4]\,
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank[9][4]_i_3_n_0\,
      O => \bank[2][4]_i_7_n_0\
    );
\bank[2][4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101F1010101F1F1F"
    )
        port map (
      I0 => Q(3),
      I1 => \bank_reg[14]\(4),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg_n_0_[12][4]\,
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \^bank_reg[13][5]_0\(2),
      O => \bank[2][4]_i_8_n_0\
    );
\bank[2][4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"331DFF1D"
    )
        port map (
      I0 => \bank_reg[1]\(4),
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank_reg[3]\(4),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \bank_reg[2]\(4),
      O => \bank[2][4]_i_9_n_0\
    );
\bank[2][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[2][7]_i_5_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[2][5]_i_1_n_0\
    );
\bank[2][5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA32AA02"
    )
        port map (
      I0 => \bank_reg[4]\(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \bank_reg[5]\(5),
      O => \bank[2][5]_i_10_n_0\
    );
\bank[2][5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"23232322FFFFFFFF"
    )
        port map (
      I0 => \bank[10][7]_i_3_n_0\,
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => Q(6),
      I3 => Q(4),
      I4 => Q(5),
      I5 => \bank[2][5]_i_16_n_0\,
      O => \bank[2][5]_i_11_n_0\
    );
\bank[2][5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3013301033133310"
    )
        port map (
      I0 => \bank[2][5]_i_17_n_0\,
      I1 => \bank[2][6]_i_17_n_0\,
      I2 => Q(4),
      I3 => Q(5),
      I4 => \bank[2][5]_i_18_n_0\,
      I5 => \bank[2][5]_i_19_n_0\,
      O => \bank[2][5]_i_12_n_0\
    );
\bank[2][5]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F0CCAA"
    )
        port map (
      I0 => \bank[2][5]_i_20_n_0\,
      I1 => \bank[2][5]_i_21_n_0\,
      I2 => \bank[8][1]_i_2_0\(1),
      I3 => Q(9),
      I4 => Q(10),
      O => \bank[2][5]_i_13_n_0\
    );
\bank[2][5]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \bank[2][7]_i_18_0\(1),
      I1 => \^instruction_reg_reg[12]_2\,
      I2 => \^instruction_reg_reg[12]_1\,
      O => io_load(5)
    );
\bank[2][5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC44CCCCCC0C"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[2][6]_i_17_n_0\,
      I2 => \^d\(5),
      I3 => Q(5),
      I4 => Q(4),
      I5 => Q(3),
      O => \bank[2][5]_i_16_n_0\
    );
\bank[2][5]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => Q(3),
      I2 => \^d\(3),
      O => \bank[2][5]_i_17_n_0\
    );
\bank[2][5]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \^d\(4),
      I1 => Q(3),
      I2 => \^d\(5),
      O => \bank[2][5]_i_18_n_0\
    );
\bank[2][5]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(0),
      I1 => Q(3),
      I2 => \^d\(1),
      O => \bank[2][5]_i_19_n_0\
    );
\bank[2][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][5]_i_4_n_0\,
      I1 => \bank[2][5]_i_5_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][5]_i_6_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][5]_i_7_n_0\,
      O => \bank[2][5]_i_2_n_0\
    );
\bank[2][5]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E888EEE"
    )
        port map (
      I0 => Q(8),
      I1 => \^d\(5),
      I2 => \bank[2][5]_i_22_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[2][5]_i_23_n_0\,
      O => \bank[2][5]_i_20_n_0\
    );
\bank[2][5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B88B8B8BB88B"
    )
        port map (
      I0 => \bank_reg[2][6]_i_22_n_6\,
      I1 => Q(8),
      I2 => \^d\(5),
      I3 => \bank[2][5]_i_23_n_0\,
      I4 => \store_register[3]_i_14_n_0\,
      I5 => \bank[2][5]_i_22_n_0\,
      O => \bank[2][5]_i_21_n_0\
    );
\bank[2][5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAE2AA00AAE2"
    )
        port map (
      I0 => \bank[2][5]_i_24_n_0\,
      I1 => Q(4),
      I2 => \bank[2][5]_i_25_n_0\,
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(5),
      I5 => \bank[2][5]_i_5_n_0\,
      O => \bank[2][5]_i_22_n_0\
    );
\bank[2][5]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => \bank[2][5]_i_6_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => \bank[2][5]_i_10_n_0\,
      I3 => \bank[2][5]_i_26_n_0\,
      O => \bank[2][5]_i_23_n_0\
    );
\bank[2][5]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank[9][5]_i_2_n_0\,
      O => \bank[2][5]_i_24_n_0\
    );
\bank[2][5]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(5),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[11]\(5),
      O => \bank[2][5]_i_25_n_0\
    );
\bank[2][5]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C080008"
    )
        port map (
      I0 => \bank_reg[6]\(5),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(3),
      I4 => \bank_reg[7]\(5),
      O => \bank[2][5]_i_26_n_0\
    );
\bank[2][5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0074"
    )
        port map (
      I0 => \bank[2][5]_i_8_n_0\,
      I1 => \bank[8][0]_i_4_n_0\,
      I2 => Q(8),
      I3 => \bank[2][7]_i_17_n_0\,
      I4 => \bank[2][5]_i_9_n_0\,
      O => \bank[2][5]_i_3_n_0\
    );
\bank[2][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F50C0C05F5FCFC"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \bank[9][5]_i_2_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[10]\(5),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[11]\(5),
      O => \bank[2][5]_i_4_n_0\
    );
\bank[2][5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F004F703F304F7"
    )
        port map (
      I0 => \bank_reg[14]\(5),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => \bank_reg_n_0_[12][5]\,
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(3),
      O => \bank[2][5]_i_5_n_0\
    );
\bank[2][5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF30FF5FFF3FFF5F"
    )
        port map (
      I0 => \bank_reg[1]\(5),
      I1 => \bank_reg[3]\(5),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(4),
      I5 => \bank_reg[2]\(5),
      O => \bank[2][5]_i_6_n_0\
    );
\bank[2][5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10551555"
    )
        port map (
      I0 => \bank[2][5]_i_10_n_0\,
      I1 => \bank_reg[7]\(5),
      I2 => Q(3),
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => \bank_reg[6]\(5),
      O => \bank[2][5]_i_7_n_0\
    );
\bank[2][5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444477477777"
    )
        port map (
      I0 => \^d\(5),
      I1 => \bank[2][6]_i_10_n_0\,
      I2 => \bank[2][5]_i_11_n_0\,
      I3 => \bank[2][5]_i_12_n_0\,
      I4 => \bank[2][6]_i_16_n_0\,
      I5 => \bank[2][5]_i_13_n_0\,
      O => \bank[2][5]_i_8_n_0\
    );
\bank[2][5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32FF323210FF1010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(5),
      I3 => \bank[2][5]_i_2_n_0\,
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => io_load(5),
      O => \bank[2][5]_i_9_n_0\
    );
\bank[2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[2][6]_i_1_n_0\
    );
\bank[2][6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(8),
      I1 => Q(10),
      I2 => Q(9),
      O => \bank[2][6]_i_10_n_0\
    );
\bank[2][6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFDF0F0FDFD"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(13),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][6]_i_11_n_0\
    );
\bank[2][6]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \bank[2][7]_i_18_0\(2),
      I1 => \^instruction_reg_reg[12]_2\,
      I2 => \^instruction_reg_reg[12]_1\,
      O => io_load(6)
    );
\bank[2][6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF5CCC0CCC5"
    )
        port map (
      I0 => \^d\(6),
      I1 => Q(6),
      I2 => Q(4),
      I3 => Q(5),
      I4 => Q(3),
      I5 => \bank[2][7]_i_6_n_0\,
      O => \bank[2][6]_i_14_n_0\
    );
\bank[2][6]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \bank[2][2]_i_12_n_0\,
      I1 => Q(5),
      I2 => \bank[2][6]_i_20_n_0\,
      I3 => \bank[2][6]_i_21_n_0\,
      I4 => Q(4),
      O => \bank[2][6]_i_15_n_0\
    );
\bank[2][6]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      O => \bank[2][6]_i_16_n_0\
    );
\bank[2][6]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Q(10),
      I1 => Q(9),
      I2 => Q(8),
      O => \bank[2][6]_i_17_n_0\
    );
\bank[2][6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB333CBBB8CCC0"
    )
        port map (
      I0 => \bank_reg[2][6]_i_22_n_5\,
      I1 => Q(9),
      I2 => \bank[2][6]_i_23_n_0\,
      I3 => \bank[2][6]_i_24_n_0\,
      I4 => Q(8),
      I5 => \^d\(6),
      O => \bank[2][6]_i_18_n_0\
    );
\bank[2][6]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => addr_0(8),
      I1 => \bank[2][6]_i_25_n_0\,
      I2 => words_reg_0_255_0_0_i_28_n_0,
      I3 => words_reg_0_255_0_0_i_26_n_0,
      I4 => \bank[2][6]_i_26_n_0\,
      I5 => \bank[2][6]_i_11_n_0\,
      O => \^instruction_reg_reg[12]_2\
    );
\bank[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAA0F000FFF"
    )
        port map (
      I0 => \bank[2][6]_i_5_n_0\,
      I1 => \bank[2][6]_i_6_n_0\,
      I2 => \bank[2][6]_i_7_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][6]_i_8_n_0\,
      I5 => \store_register[3]_i_14_n_0\,
      O => \^instruction_reg_reg[6]\(2)
    );
\bank[2][6]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => a_sub_b_carry_i_6_n_0,
      I1 => Q(3),
      I2 => \^d\(4),
      O => \bank[2][6]_i_20_n_0\
    );
\bank[2][6]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(5),
      I1 => Q(3),
      I2 => \^d\(6),
      O => \bank[2][6]_i_21_n_0\
    );
\bank[2][6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200FF00E2000000"
    )
        port map (
      I0 => \bank[2][6]_i_31_n_0\,
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank[2][6]_i_32_n_0\,
      I3 => \store_register[3]_i_14_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][6]_i_5_n_0\,
      O => \bank[2][6]_i_23_n_0\
    );
\bank[2][6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000101555551015"
    )
        port map (
      I0 => \store_register[3]_i_14_n_0\,
      I1 => \bank[2][6]_i_33_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank[2][6]_i_34_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][6]_i_7_n_0\,
      O => \bank[2][6]_i_24_n_0\
    );
\bank[2][6]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => Q(3),
      I1 => Q(14),
      I2 => reg_b(0),
      O => \bank[2][6]_i_25_n_0\
    );
\bank[2][6]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFFAFFBFBFFFFF"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_27_n_0,
      I1 => Q(12),
      I2 => Q(14),
      I3 => addr0(9),
      I4 => Q(4),
      I5 => addr0(1),
      O => \bank[2][6]_i_26_n_0\
    );
\bank[2][6]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA666A6666"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_31_n_0\,
      I2 => Q(6),
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \bank[2][7]_i_14_n_0\,
      I5 => \bank[2][7]_i_13_n_0\,
      O => \bank[2][6]_i_27_n_0\
    );
\bank[2][6]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A9656565A9A9A9"
    )
        port map (
      I0 => \^d\(6),
      I1 => \store_register[3]_i_14_n_0\,
      I2 => \bank[2][6]_i_35_n_0\,
      I3 => \bank[2][6]_i_6_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][6]_i_5_n_0\,
      O => \bank[2][6]_i_28_n_0\
    );
\bank[2][6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9595959A959"
    )
        port map (
      I0 => \^d\(5),
      I1 => \bank[2][5]_i_23_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][5]_i_5_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][5]_i_4_n_0\,
      O => \bank[2][6]_i_29_n_0\
    );
\bank[2][6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \bank[2][7]_i_17_n_0\,
      I1 => Q(9),
      I2 => \bank[8][0]_i_4_n_0\,
      I3 => \bank[2][6]_i_9_n_0\,
      I4 => \bank[2][6]_i_10_n_0\,
      I5 => \^d\(6),
      O => \bank[2][6]_i_3_n_0\
    );
\bank[2][6]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[2][4]_i_2_n_0\,
      O => \bank[2][6]_i_30_n_0\
    );
\bank[2][6]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABABA8A"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[9]_0\(6),
      I4 => \store_register[6]_i_5_n_0\,
      O => \bank[2][6]_i_31_n_0\
    );
\bank[2][6]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[10]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[11]\(6),
      O => \bank[2][6]_i_32_n_0\
    );
\bank[2][6]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[6]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[7]\(6),
      O => \bank[2][6]_i_33_n_0\
    );
\bank[2][6]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[4]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[5]\(6),
      O => \bank[2][6]_i_34_n_0\
    );
\bank[2][6]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABA8A8A8ABA8A"
    )
        port map (
      I0 => \bank[2][6]_i_7_n_0\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(5),
      I3 => \bank[2][6]_i_34_n_0\,
      I4 => Q(4),
      I5 => \bank[2][6]_i_33_n_0\,
      O => \bank[2][6]_i_35_n_0\
    );
\bank[2][6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF323232FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(6),
      I3 => \^instruction_reg_reg[6]\(2),
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => io_load(6),
      O => \bank[2][6]_i_4_n_0\
    );
\bank[2][6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(6),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => \bank_reg_n_0_[12][6]\,
      I4 => Q(3),
      I5 => addr1(8),
      O => \bank[2][6]_i_5_n_0\
    );
\bank[2][6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \bank[9][6]_i_3_n_0\,
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[10]\(6),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[11]\(6),
      O => \bank[2][6]_i_6_n_0\
    );
\bank[2][6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCFFFFDFDCFFF"
    )
        port map (
      I0 => \bank_reg[1]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(6),
      I4 => Q(3),
      I5 => \bank_reg[3]\(6),
      O => \bank[2][6]_i_7_n_0\
    );
\bank[2][6]_i_8\: unisim.vcomponents.LUT6
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
      O => \bank[2][6]_i_8_n_0\
    );
\bank[2][6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \bank[2][6]_i_14_n_0\,
      I1 => \bank[2][6]_i_15_n_0\,
      I2 => \bank[2][6]_i_16_n_0\,
      I3 => \bank[8][1]_i_2_0\(2),
      I4 => \bank[2][6]_i_17_n_0\,
      I5 => \bank[2][6]_i_18_n_0\,
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
      I4 => \store_register[1]_i_4_n_0\,
      I5 => Q(0),
      O => \bank[2][7]_i_1_n_0\
    );
\bank[2][7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => \store_register[2]_i_4_n_0\,
      O => \bank[2][7]_i_10_n_0\
    );
\bank[2][7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF830080"
    )
        port map (
      I0 => \bank_reg[11]\(7),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => flags(7),
      O => \bank[2][7]_i_11_n_0\
    );
\bank[2][7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \bank_reg[10]\(7),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(2),
      O => \bank[2][7]_i_12_n_0\
    );
\bank[2][7]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33503303"
    )
        port map (
      I0 => \bank[2][7]_i_19_n_0\,
      I1 => \bank[2][7]_i_20_n_0\,
      I2 => Q(5),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(6),
      O => \bank[2][7]_i_13_n_0\
    );
\bank[2][7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA0AFCFCFA0A0C0C"
    )
        port map (
      I0 => \bank_reg[4]\(7),
      I1 => \bank_reg[5]\(7),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[6]\(7),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[7]\(7),
      O => \bank[2][7]_i_14_n_0\
    );
\bank[2][7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \bank[9][7]_i_2_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[2][7]_i_21_n_0\,
      O => \bank[2][7]_i_15_n_0\
    );
\bank[2][7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00800080FFBF0FBF"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => Q(8),
      I2 => Q(10),
      I3 => Q(9),
      I4 => \bank[2][7]_i_22_n_0\,
      I5 => \bank[2][7]_i_23_n_0\,
      O => \bank[2][7]_i_16_n_0\
    );
\bank[2][7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EC20FF20EC20FF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(14),
      I2 => flags(7),
      I3 => Q(13),
      I4 => Q(11),
      I5 => Q(12),
      O => \bank[2][7]_i_17_n_0\
    );
\bank[2][7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF323232FF101010"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(7),
      I3 => \^instruction_reg_reg[6]\(3),
      I4 => \bank[2][4]_i_3_n_0\,
      I5 => io_load(7),
      O => \bank[2][7]_i_18_n_0\
    );
\bank[2][7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F004F703F304F7"
    )
        port map (
      I0 => \bank_reg[14]\(7),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => \bank_reg_n_0_[12][7]\,
      I4 => Q(3),
      I5 => addr1(9),
      O => \bank[2][7]_i_19_n_0\
    );
\bank[2][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[2][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[2][7]_i_2_n_0\
    );
\bank[2][7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDCDCFFFFDFDCFFF"
    )
        port map (
      I0 => \bank_reg[1]\(7),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(7),
      I4 => Q(3),
      I5 => \bank_reg[3]\(7),
      O => \bank[2][7]_i_20_n_0\
    );
\bank[2][7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCACCC00CCAC"
    )
        port map (
      I0 => \bank_reg[10]\(7),
      I1 => flags(7),
      I2 => Q(4),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(3),
      I5 => \bank_reg[11]\(7),
      O => \bank[2][7]_i_21_n_0\
    );
\bank[2][7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[2][7]_i_26_n_0\,
      I1 => \bank[2][6]_i_17_n_0\,
      I2 => \bank[2][7]_i_27_n_0\,
      I3 => Q(5),
      I4 => \bank[2][7]_i_28_n_0\,
      O => \bank[2][7]_i_22_n_0\
    );
\bank[2][7]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F0CCAA"
    )
        port map (
      I0 => \bank[2][7]_i_29_n_0\,
      I1 => \bank[2][7]_i_30_n_0\,
      I2 => \bank[8][1]_i_2_0\(3),
      I3 => Q(9),
      I4 => Q(10),
      O => \bank[2][7]_i_23_n_0\
    );
\bank[2][7]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \bank[2][7]_i_18_0\(3),
      I1 => \^instruction_reg_reg[12]_2\,
      I2 => \^instruction_reg_reg[12]_1\,
      O => io_load(7)
    );
\bank[2][7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFF0000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(5),
      I4 => \bank[2][7]_i_6_n_0\,
      I5 => Q(6),
      O => \bank[2][7]_i_26_n_0\
    );
\bank[2][7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000FFF55335533"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(3),
      I2 => \^d\(0),
      I3 => Q(3),
      I4 => \^d\(1),
      I5 => Q(4),
      O => \bank[2][7]_i_27_n_0\
    );
\bank[2][7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F505F3F3F3030"
    )
        port map (
      I0 => \^d\(4),
      I1 => \^d\(5),
      I2 => Q(4),
      I3 => \^d\(6),
      I4 => \bank[2][7]_i_6_n_0\,
      I5 => Q(3),
      O => \bank[2][7]_i_28_n_0\
    );
\bank[2][7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA222FFFFFBBB"
    )
        port map (
      I0 => Q(8),
      I1 => \bank[2][7]_i_31_n_0\,
      I2 => \bank[2][3]_i_12_n_0\,
      I3 => \bank[2][7]_i_14_n_0\,
      I4 => \bank[2][7]_i_13_n_0\,
      I5 => \bank[2][7]_i_6_n_0\,
      O => \bank[2][7]_i_29_n_0\
    );
\bank[2][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000404"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(13),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_3_n_0\
    );
\bank[2][7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B88BB8"
    )
        port map (
      I0 => \bank_reg[2][6]_i_22_n_4\,
      I1 => Q(8),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_31_n_0\,
      I4 => \bank[2][7]_i_32_n_0\,
      I5 => \bank[2][7]_i_13_n_0\,
      O => \bank[2][7]_i_30_n_0\
    );
\bank[2][7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDFDFDFDFDD"
    )
        port map (
      I0 => \store_register[3]_i_14_n_0\,
      I1 => Q(5),
      I2 => \bank[2][7]_i_21_n_0\,
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => Q(4),
      I5 => \bank[9][7]_i_2_n_0\,
      O => \bank[2][7]_i_31_n_0\
    );
\bank[2][7]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B800000000"
    )
        port map (
      I0 => \bank[2][7]_i_33_n_0\,
      I1 => \bank[6][7]_i_3_n_0\,
      I2 => \bank_reg[5]\(7),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => \bank_reg[4]\(7),
      I5 => \bank[2][3]_i_12_n_0\,
      O => \bank[2][7]_i_32_n_0\
    );
\bank[2][7]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[6]\(7),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(3),
      I3 => \bank_reg[7]\(7),
      O => \bank[2][7]_i_33_n_0\
    );
\bank[2][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0005CF0F05C5C"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(13),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \bank[2][7]_i_4_n_0\
    );
\bank[2][7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[2][7]_i_5_n_0\
    );
\bank[2][7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111111111111FFF1"
    )
        port map (
      I0 => \bank[2][7]_i_9_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \bank[2][7]_i_10_n_0\,
      I3 => \bank[9][7]_i_2_n_0\,
      I4 => \bank[2][7]_i_11_n_0\,
      I5 => \bank[2][7]_i_12_n_0\,
      O => \bank[2][7]_i_6_n_0\
    );
\bank[2][7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAFAAAAEEAA"
    )
        port map (
      I0 => \bank[2][7]_i_13_n_0\,
      I1 => \bank[2][7]_i_14_n_0\,
      I2 => \bank[2][7]_i_15_n_0\,
      I3 => Q(5),
      I4 => \store_register[2]_i_4_n_0\,
      I5 => Q(6),
      O => \^instruction_reg_reg[6]\(3)
    );
\bank[2][7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0074"
    )
        port map (
      I0 => \bank[2][7]_i_16_n_0\,
      I1 => \bank[8][0]_i_4_n_0\,
      I2 => Q(10),
      I3 => \bank[2][7]_i_17_n_0\,
      I4 => \bank[2][7]_i_18_n_0\,
      O => \bank[2][7]_i_8_n_0\
    );
\bank[2][7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(7),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(7),
      I4 => Q(0),
      I5 => \bank_reg[3]\(7),
      O => \bank[2][7]_i_9_n_0\
    );
\bank[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[3][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[3][0]_i_1_n_0\
    );
\bank[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[3][1]_i_1_n_0\
    );
\bank[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[3][2]_i_1_n_0\
    );
\bank[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[3][3]_i_1_n_0\
    );
\bank[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[3][4]_i_2_n_0\,
      O => \bank[3][4]_i_1_n_0\
    );
\bank[3][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[3][4]_i_2_n_0\
    );
\bank[3][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[3][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[3][5]_i_1_n_0\
    );
\bank[3][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
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
\bank[3][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[3][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[3][7]_i_2_n_0\
    );
\bank[3][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(4),
      O => \bank[3][7]_i_3_n_0\
    );
\bank[3][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \store_register[2]_i_4_n_0\,
      I1 => Q(0),
      O => \bank[3][7]_i_4_n_0\
    );
\bank[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAEAAA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => reg_b(0),
      O => \bank[4][0]_i_1_n_0\
    );
\bank[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => reg_b(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_3_n_0\,
      I5 => \bank[2][1]_i_4_n_0\,
      O => \bank[4][1]_i_1_n_0\
    );
\bank[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[4][2]_i_1_n_0\
    );
\bank[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][3]_i_3_n_0\,
      I5 => \bank[2][3]_i_4_n_0\,
      O => \bank[4][3]_i_1_n_0\
    );
\bank[4][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF15151510"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      I3 => \bank[2][4]_i_4_n_0\,
      I4 => \bank[2][4]_i_5_n_0\,
      I5 => \bank[4][4]_i_2_n_0\,
      O => \bank[4][4]_i_1_n_0\
    );
\bank[4][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
      O => \bank[4][4]_i_2_n_0\
    );
\bank[4][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C5FFC500"
    )
        port map (
      I0 => \bank[2][5]_i_2_n_0\,
      I1 => \^d\(5),
      I2 => \bank[4][7]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
      O => \bank[4][5]_i_1_n_0\
    );
\bank[4][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][6]_i_3_n_0\,
      I5 => \bank[2][6]_i_4_n_0\,
      O => \bank[4][6]_i_1_n_0\
    );
\bank[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => Q(3),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(4),
      I4 => Q(6),
      I5 => Q(5),
      O => \bank[4][7]_i_1_n_0\
    );
\bank[4][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[4][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => \bank[4][7]_i_2_n_0\
    );
\bank[4][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(4),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(3),
      O => \bank[4][7]_i_3_n_0\
    );
\bank[5][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[5][7]_i_5_n_0\,
      I3 => reg_b(0),
      O => \bank[5][0]_i_1_n_0\
    );
\bank[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => reg_b(1),
      O => \bank[5][1]_i_1_n_0\
    );
\bank[5][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      O => \bank[5][2]_i_1_n_0\
    );
\bank[5][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      O => \bank[5][3]_i_1_n_0\
    );
\bank[5][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
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
      I2 => \^instruction_reg_reg[6]\(2),
      O => \bank[5][6]_i_1_n_0\
    );
\bank[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => Q(6),
      I3 => \bank[5][7]_i_4_n_0\,
      I4 => Q(4),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[5][7]_i_1_n_0\
    );
\bank[5][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[5][7]_i_5_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      O => \bank[5][7]_i_2_n_0\
    );
\bank[5][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \store_register[2]_i_4_n_0\,
      I1 => Q(5),
      O => \bank[5][7]_i_3_n_0\
    );
\bank[5][7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \store_register[2]_i_4_n_0\,
      I1 => Q(3),
      O => \bank[5][7]_i_4_n_0\
    );
\bank[5][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bank[5][7]_i_3_n_0\,
      I1 => Q(6),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => Q(4),
      O => \bank[5][7]_i_5_n_0\
    );
\bank[6][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[6][7]_i_4_n_0\,
      I3 => reg_b(0),
      O => \bank[6][0]_i_1_n_0\
    );
\bank[6][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => reg_b(1),
      O => \bank[6][1]_i_1_n_0\
    );
\bank[6][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      O => \bank[6][2]_i_1_n_0\
    );
\bank[6][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      O => \bank[6][3]_i_1_n_0\
    );
\bank[6][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
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
      I2 => \^instruction_reg_reg[6]\(2),
      O => \bank[6][6]_i_1_n_0\
    );
\bank[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => Q(6),
      I3 => \bank[6][7]_i_3_n_0\,
      I4 => Q(3),
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[6][7]_i_1_n_0\
    );
\bank[6][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[6][7]_i_4_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      O => \bank[6][7]_i_2_n_0\
    );
\bank[6][7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => \store_register[2]_i_4_n_0\,
      O => \bank[6][7]_i_3_n_0\
    );
\bank[6][7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \bank[6][7]_i_4_n_0\
    );
\bank[7][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \bank[2][0]_i_2_n_0\,
      I1 => \^d\(0),
      I2 => \bank[7][7]_i_3_n_0\,
      I3 => reg_b(0),
      O => \bank[7][0]_i_1_n_0\
    );
\bank[7][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => reg_b(1),
      O => \bank[7][1]_i_1_n_0\
    );
\bank[7][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      O => \bank[7][2]_i_1_n_0\
    );
\bank[7][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
      O => \bank[7][3]_i_1_n_0\
    );
\bank[7][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80B0"
    )
        port map (
      I0 => \^d\(4),
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[2][4]_i_2_n_0\,
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
      I2 => \^instruction_reg_reg[6]\(2),
      O => \bank[7][6]_i_1_n_0\
    );
\bank[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \bank[2][7]_i_3_n_0\,
      I1 => \bank[5][7]_i_3_n_0\,
      I2 => Q(6),
      I3 => Q(3),
      I4 => \bank[6][7]_i_3_n_0\,
      I5 => \bank[2][7]_i_4_n_0\,
      O => \bank[7][7]_i_1_n_0\
    );
\bank[7][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[7][7]_i_3_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      O => \bank[7][7]_i_2_n_0\
    );
\bank[7][7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => Q(3),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(4),
      O => \bank[7][7]_i_3_n_0\
    );
\bank[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000EEEEEEEE"
    )
        port map (
      I0 => \bank[8][0]_i_2_n_0\,
      I1 => \bank[2][0]_i_2_n_0\,
      I2 => \bank[8][0]_i_3_n_0\,
      I3 => \bank[8][0]_i_4_n_0\,
      I4 => flags(0),
      I5 => \bank[8][7]_i_5_n_0\,
      O => \bank[8][0]_i_1_n_0\
    );
\bank[8][0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBB0888"
    )
        port map (
      I0 => \bank[8][1]_i_2_0\(2),
      I1 => Q(10),
      I2 => Q(9),
      I3 => Q(8),
      I4 => \bank[2][6]_i_18_n_0\,
      O => \bank[8][0]_i_10_n_0\
    );
\bank[8][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFABAAAAEFAB"
    )
        port map (
      I0 => \bank[2][6]_i_17_n_0\,
      I1 => Q(4),
      I2 => \bank[2][6]_i_21_n_0\,
      I3 => \bank[2][6]_i_20_n_0\,
      I4 => Q(5),
      I5 => \bank[2][2]_i_12_n_0\,
      O => \bank[8][0]_i_11_n_0\
    );
\bank[8][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A002A2220002022"
    )
        port map (
      I0 => \bank[2][6]_i_17_n_0\,
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => Q(3),
      I3 => \bank[8][0]_i_14_n_0\,
      I4 => Q(6),
      I5 => \^d\(6),
      O => \bank[8][0]_i_12_n_0\
    );
\bank[8][0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC80B3BC"
    )
        port map (
      I0 => \bank_reg[2][6]_i_22_n_6\,
      I1 => Q(9),
      I2 => Q(8),
      I3 => \^d\(5),
      I4 => \bank[2][5]_i_2_n_0\,
      O => \bank[8][0]_i_13_n_0\
    );
\bank[8][0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \bank[8][0]_i_14_n_0\
    );
\bank[8][0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => reg_b(0),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \^d\(0),
      I3 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][0]_i_2_n_0\
    );
\bank[8][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \bank[2][3]_i_9_n_0\,
      I1 => \bank[8][0]_i_5_n_0\,
      I2 => \bank[8][0]_i_6_n_0\,
      I3 => \bank[8][0]_i_7_n_0\,
      I4 => \bank[8][0]_i_8_n_0\,
      I5 => \bank[2][4]_i_11_n_0\,
      O => \bank[8][0]_i_3_n_0\
    );
\bank[8][0]_i_4\: unisim.vcomponents.LUT6
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
      O => \bank[8][0]_i_4_n_0\
    );
\bank[8][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAA8AA"
    )
        port map (
      I0 => \bank[2][2]_i_10_n_0\,
      I1 => Q(5),
      I2 => \bank[2][6]_i_17_n_0\,
      I3 => \bank[2][6]_i_16_n_0\,
      I4 => \bank[2][2]_i_12_n_0\,
      I5 => \bank[2][2]_i_13_n_0\,
      O => \bank[8][0]_i_5_n_0\
    );
\bank[8][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000044F0F00044"
    )
        port map (
      I0 => \bank[2][1]_i_13_n_0\,
      I1 => \bank[8][0]_i_3_0\,
      I2 => \bank[2][1]_i_12_n_0\,
      I3 => \bank[2][0]_i_2_0\,
      I4 => \bank[2][6]_i_16_n_0\,
      I5 => \bank[2][0]_i_8_n_0\,
      O => \bank[8][0]_i_6_n_0\
    );
\bank[8][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3FFFFFFAAFFAA"
    )
        port map (
      I0 => \bank[8][0]_i_10_n_0\,
      I1 => \bank[8][0]_i_11_n_0\,
      I2 => \bank[8][0]_i_12_n_0\,
      I3 => \bank[2][7]_i_23_n_0\,
      I4 => \bank[2][7]_i_22_n_0\,
      I5 => \bank[2][6]_i_16_n_0\,
      O => \bank[8][0]_i_7_n_0\
    );
\bank[8][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DFD0D0D0DFDFDF"
    )
        port map (
      I0 => \bank[2][5]_i_11_n_0\,
      I1 => \bank[2][5]_i_12_n_0\,
      I2 => \bank[2][6]_i_16_n_0\,
      I3 => \bank[8][1]_i_2_0\(1),
      I4 => \bank[2][6]_i_17_n_0\,
      I5 => \bank[8][0]_i_13_n_0\,
      O => \bank[8][0]_i_8_n_0\
    );
\bank[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8AAA8AA888"
    )
        port map (
      I0 => \bank[8][1]_i_2_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[8][1]_i_3_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[2][1]_i_3_n_0\,
      O => \bank[8][1]_i_1_n_0\
    );
\bank[8][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14FF14FFFFFF00FF"
    )
        port map (
      I0 => \bank[8][1]_i_4_n_0\,
      I1 => \bank[2][7]_i_6_n_0\,
      I2 => \bank[8][2]_i_4_n_0\,
      I3 => \bank[8][7]_i_5_n_0\,
      I4 => flags(1),
      I5 => \bank[8][0]_i_4_n_0\,
      O => \bank[8][1]_i_2_n_0\
    );
\bank[8][1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(1),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => reg_b(1),
      O => \bank[8][1]_i_3_n_0\
    );
\bank[8][1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFAF77F"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => \^instruction_reg_reg[6]\(3),
      I4 => Q(10),
      O => \bank[8][1]_i_4_n_0\
    );
\bank[8][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[8][2]_i_2_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][2]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => \bank[8][2]_i_1_n_0\
    );
\bank[8][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[8][2]_i_4_n_0\,
      I1 => \bank[8][0]_i_4_n_0\,
      I2 => flags(2),
      O => \bank[8][2]_i_2_n_0\
    );
\bank[8][2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(2),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \^instruction_reg_reg[6]\(0),
      O => \bank[8][2]_i_3_n_0\
    );
\bank[8][2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808CB3BF"
    )
        port map (
      I0 => \bank[2][7]_i_22_n_0\,
      I1 => Q(10),
      I2 => Q(9),
      I3 => \bank[8][1]_i_2_0\(3),
      I4 => \bank[8][2]_i_5_n_0\,
      O => \bank[8][2]_i_4_n_0\
    );
\bank[8][2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC80B3BC"
    )
        port map (
      I0 => \bank_reg[2][6]_i_22_n_4\,
      I1 => Q(9),
      I2 => Q(8),
      I3 => \^instruction_reg_reg[6]\(3),
      I4 => \bank[2][7]_i_6_n_0\,
      O => \bank[8][2]_i_5_n_0\
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
      I4 => \bank[8][0]_i_4_n_0\,
      I5 => flags(3),
      O => \bank[8][3]_i_2_n_0\
    );
\bank[8][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(3),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \^instruction_reg_reg[6]\(1),
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
      INIT => X"33333333BBBB3F33"
    )
        port map (
      I0 => \bank[2][6]_i_21_n_0\,
      I1 => Q(10),
      I2 => \bank[2][7]_i_6_n_0\,
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \bank[8][3]_i_6_n_0\
    );
\bank[8][3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5030305F503F3F"
    )
        port map (
      I0 => \^d\(1),
      I1 => \^d\(2),
      I2 => Q(4),
      I3 => a_sub_b_carry_i_6_n_0,
      I4 => Q(3),
      I5 => \^d\(4),
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
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \bank[8][4]_i_2_n_0\,
      I1 => \bank[8][4]_i_3_n_0\,
      I2 => \bank[2][4]_i_4_n_0\,
      I3 => \bank[8][4]_i_4_n_0\,
      I4 => \bank_reg_n_0_[8][4]\,
      I5 => \bank[8][7]_i_5_n_0\,
      O => \bank[8][4]_i_1_n_0\
    );
\bank[8][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A202"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[8][7]_i_7_n_0\,
      I3 => \^d\(4),
      O => \bank[8][4]_i_2_n_0\
    );
\bank[8][4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF10FF10FF10"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \bank[2][6]_i_11_n_0\,
      I2 => data_load0(4),
      I3 => \bank[2][4]_i_3_n_0\,
      I4 => io_load(4),
      I5 => \^instruction_reg_reg[12]_1\,
      O => \bank[8][4]_i_3_n_0\
    );
\bank[8][4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[2][4]_i_3_n_0\,
      O => \bank[8][4]_i_4_n_0\
    );
\bank[8][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8B8BBB88"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][5]_i_2_n_0\,
      I3 => \bank[2][5]_i_3_n_0\,
      I4 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][5]_i_1_n_0\
    );
\bank[8][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \^d\(5),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \bank[2][5]_i_2_n_0\,
      O => \bank[8][5]_i_2_n_0\
    );
\bank[8][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8BBB8BBB8BB888"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[8][6]_i_2_n_0\,
      I4 => \bank[2][6]_i_4_n_0\,
      I5 => \bank[2][6]_i_3_n_0\,
      O => \bank[8][6]_i_1_n_0\
    );
\bank[8][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(6),
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \^instruction_reg_reg[6]\(2),
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
      I4 => \store_register[2]_i_4_n_0\,
      I5 => Q(11),
      O => \bank[8][7]_i_1_n_0\
    );
\bank[8][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8BB88"
    )
        port map (
      I0 => \bank[8][7]_i_4_n_0\,
      I1 => \bank[8][7]_i_5_n_0\,
      I2 => \bank[8][7]_i_6_n_0\,
      I3 => \bank[2][7]_i_8_n_0\,
      I4 => \bank[2][7]_i_4_n_0\,
      O => \bank[8][7]_i_2_n_0\
    );
\bank[8][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF88888888888888"
    )
        port map (
      I0 => \bank[8][7]_i_7_n_0\,
      I1 => \bank[2][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \store_register[3]_i_6_n_0\,
      I4 => \bank[3][7]_i_4_n_0\,
      I5 => \store_register[1]_i_4_n_0\,
      O => \bank[8][7]_i_3_n_0\
    );
\bank[8][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4A5F4F0A4A0A4"
    )
        port map (
      I0 => \bank[8][0]_i_4_n_0\,
      I1 => Q(8),
      I2 => flags(7),
      I3 => \bank[8][7]_i_8_n_0\,
      I4 => Q(10),
      I5 => Q(9),
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
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(11),
      I5 => \bank[8][7]_i_3_n_0\,
      O => \bank[8][7]_i_5_n_0\
    );
\bank[8][7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => \bank[8][7]_i_7_n_0\,
      I2 => \^instruction_reg_reg[6]\(3),
      O => \bank[8][7]_i_6_n_0\
    );
\bank[8][7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(6),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(5),
      O => \bank[8][7]_i_7_n_0\
    );
\bank[8][7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000070077777"
    )
        port map (
      I0 => Q(5),
      I1 => flags(2),
      I2 => flags(0),
      I3 => Q(0),
      I4 => Q(3),
      I5 => \bank[8][7]_i_9_n_0\,
      O => \bank[8][7]_i_8_n_0\
    );
\bank[8][7]_i_9\: unisim.vcomponents.LUT6
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
      O => \bank[8][7]_i_9_n_0\
    );
\bank[9][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFF8F8"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[9][0]_i_2_n_0\,
      I2 => \bank[2][0]_i_2_n_0\,
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(0)
    );
\bank[9][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \^d\(0),
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => reg_b(0),
      O => \bank[9][0]_i_2_n_0\
    );
\bank[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB8B8"
    )
        port map (
      I0 => \bank[9][1]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][1]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][1]_i_4_n_0\,
      I5 => \bank[2][1]_i_3_n_0\,
      O => p_1_in(1)
    );
\bank[9][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => \bank_reg[9]__0\(1),
      O => \bank[9][1]_i_2_n_0\
    );
\bank[9][1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => reg_b(1),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \^d\(1),
      O => \bank[9][1]_i_3_n_0\
    );
\bank[9][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bank[9][2]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][2]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][2]_i_3_n_0\,
      O => p_1_in(2)
    );
\bank[9][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bank_reg[9]_0\(2),
      I1 => \bank_reg[9]__0\(1),
      I2 => \bank_reg[9]__0\(0),
      O => \bank[9][2]_i_2_n_0\
    );
\bank[9][2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => \^d\(2),
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \^instruction_reg_reg[6]\(0),
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
      I1 => a_sub_b_carry_i_6_n_0,
      I2 => \^instruction_reg_reg[6]\(1),
      I3 => \bank[9][7]_i_5_n_0\,
      O => \bank[9][3]_i_3_n_0\
    );
\bank[9][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAAFEAAFE"
    )
        port map (
      I0 => \bank[9][4]_i_2_n_0\,
      I1 => \bank[8][4]_i_3_n_0\,
      I2 => \bank[2][4]_i_4_n_0\,
      I3 => \bank[8][4]_i_4_n_0\,
      I4 => \bank[9][4]_i_3_n_0\,
      I5 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(4)
    );
\bank[9][4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A202"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][4]_i_2_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \^d\(4),
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
\bank[9][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47774744"
    )
        port map (
      I0 => \bank[9][5]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[9][5]_i_3_n_0\,
      I3 => \bank[2][7]_i_4_n_0\,
      I4 => \bank[2][5]_i_3_n_0\,
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
\bank[9][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF01000000"
    )
        port map (
      I0 => \^d\(5),
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \bank[2][5]_i_2_n_0\,
      O => \bank[9][5]_i_3_n_0\
    );
\bank[9][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF54FF54"
    )
        port map (
      I0 => \bank[2][7]_i_4_n_0\,
      I1 => \bank[2][6]_i_4_n_0\,
      I2 => \bank[2][6]_i_3_n_0\,
      I3 => \bank[9][6]_i_2_n_0\,
      I4 => \bank[9][6]_i_3_n_0\,
      I5 => \bank[9][7]_i_3_n_0\,
      O => p_1_in(6)
    );
\bank[9][6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \^instruction_reg_reg[6]\(2),
      I1 => \bank[2][7]_i_4_n_0\,
      I2 => \bank[9][7]_i_5_n_0\,
      I3 => \^d\(6),
      O => \bank[9][6]_i_2_n_0\
    );
\bank[9][6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bank_reg[9]_0\(6),
      I1 => \store_register[6]_i_5_n_0\,
      O => \bank[9][6]_i_3_n_0\
    );
\bank[9][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77477444"
    )
        port map (
      I0 => \bank[9][7]_i_2_n_0\,
      I1 => \bank[9][7]_i_3_n_0\,
      I2 => \bank[2][7]_i_4_n_0\,
      I3 => \bank[9][7]_i_4_n_0\,
      I4 => \bank[2][7]_i_8_n_0\,
      O => p_1_in(7)
    );
\bank[9][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \bank_reg[9]_0\(7),
      I1 => \store_register[6]_i_5_n_0\,
      I2 => \bank_reg[9]_0\(6),
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
\bank[9][7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF01000000"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      I1 => Q(4),
      I2 => \bank[5][7]_i_4_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => Q(6),
      I5 => \^instruction_reg_reg[6]\(3),
      O => \bank[9][7]_i_4_n_0\
    );
\bank[9][7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => Q(4),
      I1 => \bank[5][7]_i_4_n_0\,
      I2 => \bank[5][7]_i_3_n_0\,
      I3 => Q(6),
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
    );
\bank_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][2]_i_1_n_0\,
      Q => addr1(4),
      R => sw(0)
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
      R => sw(0)
    );
\bank_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][4]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(2),
      R => sw(0)
    );
\bank_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sysclk,
      CE => \bank[13][7]_i_1_n_0\,
      D => \bank[13][5]_i_1_n_0\,
      Q => \^bank_reg[13][5]_0\(3),
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
    );
\bank_reg[2][3]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bank_reg[2][3]_i_19_n_0\,
      CO(2) => \bank_reg[2][3]_i_19_n_1\,
      CO(1) => \bank_reg[2][3]_i_19_n_2\,
      CO(0) => \bank_reg[2][3]_i_19_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^d\(3 downto 0),
      O(3) => \bank_reg[2][3]_i_19_n_4\,
      O(2) => \bank_reg[2][3]_i_19_n_5\,
      O(1) => \bank_reg[2][3]_i_19_n_6\,
      O(0) => \bank_reg[2][3]_i_19_n_7\,
      S(3) => \bank[2][3]_i_20_n_0\,
      S(2) => \bank[2][3]_i_21_n_0\,
      S(1) => \bank[2][3]_i_22_n_0\,
      S(0) => \bank[2][3]_i_23_n_0\
    );
\bank_reg[2][3]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][2]_i_7_n_0\,
      I1 => \bank[2][2]_i_6_n_0\,
      O => \bank_reg[2][3]_i_24_n_0\,
      S => \bank[5][7]_i_3_n_0\
    );
\bank_reg[2][3]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \bank[2][1]_i_8_n_0\,
      I1 => \bank[2][1]_i_7_n_0\,
      O => \bank_reg[2][3]_i_25_n_0\,
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
    );
\bank_reg[2][6]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \bank_reg[2][3]_i_19_n_0\,
      CO(3) => \bank_reg[2][6]_i_22_n_0\,
      CO(2) => \bank_reg[2][6]_i_22_n_1\,
      CO(1) => \bank_reg[2][6]_i_22_n_2\,
      CO(0) => \bank_reg[2][6]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^d\(7 downto 4),
      O(3) => \bank_reg[2][6]_i_22_n_4\,
      O(2) => \bank_reg[2][6]_i_22_n_5\,
      O(1) => \bank_reg[2][6]_i_22_n_6\,
      O(0) => \bank_reg[2][6]_i_22_n_7\,
      S(3) => \bank[2][6]_i_27_n_0\,
      S(2) => \bank[2][6]_i_28_n_0\,
      S(1) => \bank[2][6]_i_29_n_0\,
      S(0) => \bank[2][6]_i_30_n_0\
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      CI => \bank_reg[2][6]_i_22_n_0\,
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
      R => sw(0)
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
\store_register[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEEEAEFFFFFFFF"
    )
        port map (
      I0 => \store_register[0]_i_2_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \store_register[0]_i_3_n_0\,
      I3 => \store_register[1]_i_4_n_0\,
      I4 => \store_register[0]_i_4_n_0\,
      I5 => \store_register[0]_i_5_n_0\,
      O => \^d\(0)
    );
\store_register[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bank_reg[2]\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(2),
      O => \store_register[0]_i_2_n_0\
    );
\store_register[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(0),
      O => \store_register[0]_i_3_n_0\
    );
\store_register[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20EF"
    )
        port map (
      I0 => \bank_reg[9]__0\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => flags(0),
      O => \store_register[0]_i_4_n_0\
    );
\store_register[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFBFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => \bank_reg[3]\(0),
      I2 => Q(1),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(0),
      I5 => \bank_reg[1]\(0),
      O => \store_register[0]_i_5_n_0\
    );
\store_register[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAEEEFFFFFFFF"
    )
        port map (
      I0 => \store_register[1]_i_2_n_0\,
      I1 => \store_register[3]_i_6_n_0\,
      I2 => \store_register[1]_i_3_n_0\,
      I3 => \store_register[1]_i_4_n_0\,
      I4 => \store_register[1]_i_5_n_0\,
      I5 => \store_register[1]_i_6_n_0\,
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
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(2),
      O => \store_register[1]_i_2_n_0\
    );
\store_register[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75454575"
    )
        port map (
      I0 => flags(1),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[9]__0\(1),
      I4 => \bank_reg[9]__0\(0),
      O => \store_register[1]_i_3_n_0\
    );
\store_register[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \store_register[2]_i_4_n_0\,
      I1 => Q(1),
      O => \store_register[1]_i_4_n_0\
    );
\store_register[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(1),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(1),
      O => \store_register[1]_i_5_n_0\
    );
\store_register[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFFFFFBFFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => \bank_reg[3]\(1),
      I2 => Q(1),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => Q(0),
      I5 => \bank_reg[1]\(1),
      O => \store_register[1]_i_6_n_0\
    );
\store_register[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACFAAC0AAAAAAAA"
    )
        port map (
      I0 => \store_register[2]_i_2_n_0\,
      I1 => \store_register[2]_i_3_n_0\,
      I2 => Q(1),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \store_register[2]_i_5_n_0\,
      I5 => Q(2),
      O => \^d\(2)
    );
\store_register[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(2),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(2),
      I4 => Q(0),
      I5 => \bank_reg[3]\(2),
      O => \store_register[2]_i_2_n_0\
    );
\store_register[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[10]\(2),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(2),
      O => \store_register[2]_i_3_n_0\
    );
\store_register[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F0000000000"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(13),
      I3 => flags(7),
      I4 => Q(14),
      I5 => Q(7),
      O => \store_register[2]_i_4_n_0\
    );
\store_register[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8ABABA8ABA8ABA8A"
    )
        port map (
      I0 => flags(2),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[9]_0\(2),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]__0\(0),
      O => \store_register[2]_i_5_n_0\
    );
\store_register[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \store_register[3]_i_3_n_0\,
      I1 => \store_register[3]_i_4_n_0\,
      I2 => reg_b(0),
      I3 => Q(14),
      I4 => Q(3),
      O => E(0)
    );
\store_register[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(0),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(4),
      I3 => \bank_reg[2]\(0),
      I4 => Q(3),
      I5 => \bank_reg[3]\(0),
      O => \store_register[3]_i_10_n_0\
    );
\store_register[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank_reg[6]\(0),
      I1 => \bank_reg[7]\(0),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[4]\(0),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => \bank_reg[5]\(0),
      O => \store_register[3]_i_11_n_0\
    );
\store_register[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFC0CFA0A0C0CF"
    )
        port map (
      I0 => \bank_reg[10]\(0),
      I1 => \bank_reg[11]\(0),
      I2 => \bank[6][7]_i_3_n_0\,
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank[5][7]_i_4_n_0\,
      I5 => flags(0),
      O => \store_register[3]_i_12_n_0\
    );
\store_register[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0FFB08FC0CFB08"
    )
        port map (
      I0 => \bank_reg[14]\(0),
      I1 => Q(4),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => instruction_addr0(2),
      I4 => Q(3),
      I5 => \^bank_reg[13][5]_0\(0),
      O => \store_register[3]_i_13_n_0\
    );
\store_register[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => \store_register[2]_i_4_n_0\,
      O => \store_register[3]_i_14_n_0\
    );
\store_register[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDA8"
    )
        port map (
      I0 => \store_register[3]_i_6_n_0\,
      I1 => \store_register[3]_i_7_n_0\,
      I2 => \store_register[3]_i_8_n_0\,
      I3 => \store_register[3]_i_9_n_0\,
      O => \^d\(3)
    );
\store_register[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77777577"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => Q(14),
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(12),
      I4 => Q(13),
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
\store_register[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \store_register[3]_i_10_n_0\,
      I1 => \store_register[3]_i_11_n_0\,
      I2 => \store_register[3]_i_12_n_0\,
      I3 => \bank[5][7]_i_3_n_0\,
      I4 => \store_register[3]_i_13_n_0\,
      I5 => \store_register[3]_i_14_n_0\,
      O => reg_b(0)
    );
\store_register[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => \store_register[2]_i_4_n_0\,
      O => \store_register[3]_i_6_n_0\
    );
\store_register[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF150010"
    )
        port map (
      I0 => Q(1),
      I1 => \bank[9][3]_i_2_n_0\,
      I2 => Q(0),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => flags(3),
      O => \store_register[3]_i_7_n_0\
    );
\store_register[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008A0080"
    )
        port map (
      I0 => Q(1),
      I1 => \bank_reg[11]\(3),
      I2 => Q(0),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \bank_reg[10]\(3),
      O => \store_register[3]_i_8_n_0\
    );
\store_register[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(3),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(3),
      I4 => Q(0),
      I5 => \bank_reg[3]\(3),
      O => \store_register[3]_i_9_n_0\
    );
\store_register[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5530553F55555555"
    )
        port map (
      I0 => \store_register[4]_i_2_n_0\,
      I1 => \store_register[4]_i_3_n_0\,
      I2 => Q(1),
      I3 => \store_register[2]_i_4_n_0\,
      I4 => \store_register[4]_i_4_n_0\,
      I5 => Q(2),
      O => \^d\(4)
    );
\store_register[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF305FFFFF3F5F"
    )
        port map (
      I0 => \bank_reg[2]\(4),
      I1 => \bank_reg[3]\(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \store_register[2]_i_4_n_0\,
      I5 => \bank_reg[1]\(4),
      O => \store_register[4]_i_2_n_0\
    );
\store_register[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(4),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(4),
      O => \store_register[4]_i_3_n_0\
    );
\store_register[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => \bank_reg_n_0_[8][4]\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank[9][4]_i_3_n_0\,
      O => \store_register[4]_i_4_n_0\
    );
\store_register[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50535F5355555555"
    )
        port map (
      I0 => \store_register[5]_i_2_n_0\,
      I1 => \store_register[5]_i_3_n_0\,
      I2 => \store_register[2]_i_4_n_0\,
      I3 => Q(1),
      I4 => \store_register[5]_i_4_n_0\,
      I5 => Q(2),
      O => \^d\(5)
    );
\store_register[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF305FFFFF3F5F"
    )
        port map (
      I0 => \bank_reg[2]\(5),
      I1 => \bank_reg[3]\(5),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \store_register[2]_i_4_n_0\,
      I5 => \bank_reg[1]\(5),
      O => \store_register[5]_i_2_n_0\
    );
\store_register[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7545"
    )
        port map (
      I0 => \bank_reg_n_0_[8][5]\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank[9][5]_i_2_n_0\,
      O => \store_register[5]_i_3_n_0\
    );
\store_register[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \bank_reg[10]\(5),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(5),
      O => \store_register[5]_i_4_n_0\
    );
\store_register[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FF0000E200"
    )
        port map (
      I0 => \store_register[6]_i_2_n_0\,
      I1 => Q(1),
      I2 => \store_register[6]_i_3_n_0\,
      I3 => Q(2),
      I4 => \store_register[2]_i_4_n_0\,
      I5 => \store_register[6]_i_4_n_0\,
      O => \^d\(6)
    );
\store_register[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8ABABA8A"
    )
        port map (
      I0 => \bank_reg_n_0_[8][6]\,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[9]_0\(6),
      I4 => \store_register[6]_i_5_n_0\,
      O => \store_register[6]_i_2_n_0\
    );
\store_register[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \bank_reg[10]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(0),
      I3 => \bank_reg[11]\(6),
      O => \store_register[6]_i_3_n_0\
    );
\store_register[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3232300002023000"
    )
        port map (
      I0 => \bank_reg[1]\(6),
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(1),
      I3 => \bank_reg[2]\(6),
      I4 => Q(0),
      I5 => \bank_reg[3]\(6),
      O => \store_register[6]_i_4_n_0\
    );
\store_register[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \bank_reg[9]_0\(5),
      I1 => \bank_reg[9]_0\(3),
      I2 => \bank_reg[9]_0\(2),
      I3 => \bank_reg[9]__0\(0),
      I4 => \bank_reg[9]__0\(1),
      I5 => \bank_reg[9]_0\(4),
      O => \store_register[6]_i_5_n_0\
    );
\store_register[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bank[2][7]_i_6_n_0\,
      O => \^d\(7)
    );
words_reg_0_255_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(0),
      O => addr(0)
    );
words_reg_0_255_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100001011000000"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_15_n_0,
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(11),
      I3 => Q(14),
      I4 => Q(13),
      I5 => Q(12),
      O => words_reg_0_255_0_0_i_12_n_0
    );
words_reg_0_255_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
      I2 => Q(12),
      I3 => Q(13),
      I4 => words_reg_0_255_0_0_i_15_n_0,
      I5 => addr_0(9),
      O => \^instruction_reg_reg[15]_0\
    );
words_reg_0_255_0_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => addr_0(1),
      I1 => words_reg_0_255_0_0_i_26_n_0,
      I2 => words_reg_0_255_0_0_i_27_n_0,
      I3 => words_reg_0_255_0_0_i_28_n_0,
      I4 => addr_0(9),
      I5 => addr_0(8),
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
      I1 => words_reg_0_255_0_0_i_12_n_0,
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
      INIT => X"E2"
    )
        port map (
      I0 => reg_b(0),
      I1 => Q(14),
      I2 => Q(3),
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
words_reg_0_255_0_0_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => addr0(4),
      I1 => Q(7),
      I2 => addr0(5),
      I3 => Q(14),
      I4 => Q(8),
      O => words_reg_0_255_0_0_i_26_n_0
    );
words_reg_0_255_0_0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => addr0(3),
      I1 => Q(6),
      I2 => addr0(2),
      I3 => Q(14),
      I4 => Q(5),
      O => words_reg_0_255_0_0_i_27_n_0
    );
words_reg_0_255_0_0_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => addr0(7),
      I1 => Q(10),
      I2 => addr0(6),
      I3 => Q(14),
      I4 => Q(9),
      O => words_reg_0_255_0_0_i_28_n_0
    );
words_reg_0_255_0_0_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_30_n_0,
      CO(3) => words_reg_0_255_0_0_i_29_n_0,
      CO(2) => words_reg_0_255_0_0_i_29_n_1,
      CO(1) => words_reg_0_255_0_0_i_29_n_2,
      CO(0) => words_reg_0_255_0_0_i_29_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => \^bank_reg[13][5]_0\(3 downto 2),
      DI(0) => addr1(5),
      O(3 downto 0) => addr0(8 downto 5),
      S(3) => addr1(8),
      S(2 downto 1) => words_reg_0_255_0_0_i_26_0(1 downto 0),
      S(0) => words_reg_0_255_0_0_i_34_n_0
    );
words_reg_0_255_0_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_12_n_0,
      I1 => \^instruction_reg_reg[15]\,
      I2 => \^instruction_reg_reg[15]_0\,
      O => \instruction_reg_reg[12]\
    );
words_reg_0_255_0_0_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => words_reg_0_255_0_0_i_30_n_0,
      CO(2) => words_reg_0_255_0_0_i_30_n_1,
      CO(1) => words_reg_0_255_0_0_i_30_n_2,
      CO(0) => words_reg_0_255_0_0_i_30_n_3,
      CYINIT => '0',
      DI(3) => addr1(4),
      DI(2 downto 1) => \^bank_reg[13][5]_0\(1 downto 0),
      DI(0) => '0',
      O(3 downto 0) => addr0(4 downto 1),
      S(3) => words_reg_0_255_0_0_i_35_n_0,
      S(2 downto 1) => \bank[2][6]_i_26_0\(1 downto 0),
      S(0) => words_reg_0_255_0_0_i_38_n_0
    );
words_reg_0_255_0_0_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => words_reg_0_255_0_0_i_29_n_0,
      CO(3 downto 0) => NLW_words_reg_0_255_0_0_i_31_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_words_reg_0_255_0_0_i_31_O_UNCONNECTED(3 downto 1),
      O(0) => addr0(9),
      S(3 downto 1) => B"000",
      S(0) => addr1(9)
    );
words_reg_0_255_0_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => addr1(5),
      I1 => \bank[2][5]_i_2_n_0\,
      O => words_reg_0_255_0_0_i_34_n_0
    );
words_reg_0_255_0_0_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => addr1(4),
      I1 => \bank[2][4]_i_2_n_0\,
      O => words_reg_0_255_0_0_i_35_n_0
    );
words_reg_0_255_0_0_i_38: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \bank[2][1]_i_5_n_0\,
      I1 => \bank[2][1]_i_6_n_0\,
      I2 => \store_register[3]_i_14_n_0\,
      I3 => \bank[2][1]_i_7_n_0\,
      I4 => \bank[5][7]_i_3_n_0\,
      I5 => \bank[2][1]_i_8_n_0\,
      O => words_reg_0_255_0_0_i_38_n_0
    );
words_reg_0_255_0_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABA00000000"
    )
        port map (
      I0 => Q(14),
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => \store_register[2]_i_4_n_0\,
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
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(1)
    );
words_reg_0_255_2_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(2),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(2)
    );
words_reg_0_255_3_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(3),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(3)
    );
words_reg_0_255_4_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(4),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(4)
    );
words_reg_0_255_5_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(5),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(5)
    );
words_reg_0_255_6_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(6),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(6)
    );
words_reg_0_255_7_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^d\(7),
      I1 => words_reg_0_255_0_0_i_12_n_0,
      O => data_out(7)
    );
words_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg[15]_0\,
      I1 => \^instruction_reg_reg[15]\,
      I2 => words_reg_0_255_0_0_i_12_n_0,
      O => \instruction_reg_reg[15]_1\
    );
words_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^instruction_reg_reg[15]\,
      I1 => \^instruction_reg_reg[15]_0\,
      I2 => words_reg_0_255_0_0_i_12_n_0,
      O => \instruction_reg_reg[15]_2\
    );
words_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => words_reg_0_255_0_0_i_12_n_0,
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
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of slower_core_plaquita_0_0_core : entity is "core";
end slower_core_plaquita_0_0_core;

architecture STRUCTURE of slower_core_plaquita_0_0_core is
  signal addr1 : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal alu_n_0 : STD_LOGIC;
  signal alu_n_1 : STD_LOGIC;
  signal alu_n_2 : STD_LOGIC;
  signal alu_n_3 : STD_LOGIC;
  signal alu_n_4 : STD_LOGIC;
  signal alu_n_5 : STD_LOGIC;
  signal alu_n_6 : STD_LOGIC;
  signal alu_n_7 : STD_LOGIC;
  signal alu_n_8 : STD_LOGIC;
  signal alu_n_9 : STD_LOGIC;
  signal instruction_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal io_load : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reg_a : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_b : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal registers_n_10 : STD_LOGIC;
  signal registers_n_23 : STD_LOGIC;
  signal registers_n_24 : STD_LOGIC;
  signal registers_n_25 : STD_LOGIC;
  signal registers_n_26 : STD_LOGIC;
  signal registers_n_39 : STD_LOGIC;
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
  signal registers_n_6 : STD_LOGIC;
  signal registers_n_60 : STD_LOGIC;
  signal registers_n_61 : STD_LOGIC;
  signal registers_n_62 : STD_LOGIC;
  signal registers_n_63 : STD_LOGIC;
  signal registers_n_64 : STD_LOGIC;
  signal registers_n_65 : STD_LOGIC;
  signal registers_n_66 : STD_LOGIC;
  signal registers_n_7 : STD_LOGIC;
  signal registers_n_8 : STD_LOGIC;
  signal registers_n_9 : STD_LOGIC;
  signal store_register : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal store_register0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_32_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_33_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_36_n_0 : STD_LOGIC;
  signal words_reg_0_255_0_0_i_37_n_0 : STD_LOGIC;
begin
alu: entity work.slower_core_plaquita_0_0_alu
     port map (
      CO(0) => alu_n_2,
      DI(3) => registers_n_50,
      DI(2 downto 0) => reg_a(2 downto 0),
      O(1) => alu_n_0,
      O(0) => alu_n_1,
      Q(2 downto 0) => instruction_reg(11 downto 9),
      S(3) => registers_n_7,
      S(2) => registers_n_8,
      S(1) => registers_n_9,
      S(0) => registers_n_10,
      \bank[2][0]_i_4\ => registers_n_49,
      \bank[2][4]_i_11\(3) => registers_n_51,
      \bank[2][4]_i_11\(2 downto 0) => reg_a(6 downto 4),
      \bank[2][4]_i_11_0\(3) => registers_n_23,
      \bank[2][4]_i_11_0\(2) => registers_n_24,
      \bank[2][4]_i_11_0\(1) => registers_n_25,
      \bank[2][4]_i_11_0\(0) => registers_n_26,
      \instruction_reg_reg[11]\ => alu_n_7,
      \instruction_reg_reg[1]\(3) => alu_n_3,
      \instruction_reg_reg[1]\(2) => alu_n_4,
      \instruction_reg_reg[1]\(1) => alu_n_5,
      \instruction_reg_reg[1]\(0) => alu_n_6,
      \instruction_reg_reg[9]\ => alu_n_8,
      \instruction_reg_reg[9]_0\ => alu_n_9
    );
\instruction_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_66,
      Q => instruction_reg(0),
      R => '0'
    );
\instruction_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_57,
      Q => instruction_reg(10),
      R => '0'
    );
\instruction_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_56,
      Q => instruction_reg(11),
      R => '0'
    );
\instruction_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_55,
      Q => instruction_reg(12),
      R => '0'
    );
\instruction_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_54,
      Q => instruction_reg(13),
      R => '0'
    );
\instruction_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_53,
      Q => instruction_reg(14),
      R => '0'
    );
\instruction_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_52,
      Q => instruction_reg(15),
      R => '0'
    );
\instruction_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_65,
      Q => instruction_reg(1),
      R => '0'
    );
\instruction_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_64,
      Q => instruction_reg(3),
      R => '0'
    );
\instruction_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_63,
      Q => instruction_reg(4),
      R => '0'
    );
\instruction_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_62,
      Q => instruction_reg(5),
      R => '0'
    );
\instruction_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_61,
      Q => instruction_reg(6),
      R => '0'
    );
\instruction_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_60,
      Q => instruction_reg(7),
      R => '0'
    );
\instruction_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_59,
      Q => instruction_reg(8),
      R => '0'
    );
\instruction_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sysclk,
      CE => '1',
      D => registers_n_58,
      Q => instruction_reg(9),
      R => '0'
    );
io: entity work.slower_core_plaquita_0_0_io
     port map (
      D(7 downto 0) => reg_a(7 downto 0),
      E(0) => store_register0,
      Q(7 downto 4) => store_register(7 downto 4),
      Q(3 downto 0) => led(3 downto 0),
      \bank[2][3]_i_4\ => registers_n_39,
      \bank[2][3]_i_4_0\ => registers_n_6,
      btn(3 downto 0) => btn(3 downto 0),
      io_load(3 downto 0) => io_load(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0),
      sysclk => sysclk
    );
registers: entity work.slower_core_plaquita_0_0_registers
     port map (
      CO(0) => alu_n_2,
      D(7 downto 0) => reg_a(7 downto 0),
      DI(0) => registers_n_50,
      E(0) => store_register0,
      O(1) => alu_n_0,
      O(0) => alu_n_1,
      Q(14 downto 2) => instruction_reg(15 downto 3),
      Q(1 downto 0) => instruction_reg(1 downto 0),
      S(3) => registers_n_7,
      S(2) => registers_n_8,
      S(1) => registers_n_9,
      S(0) => registers_n_10,
      addr(7 downto 0) => addr(7 downto 0),
      \bank[2][0]_i_2_0\ => alu_n_7,
      \bank[2][2]_i_8_0\ => alu_n_8,
      \bank[2][6]_i_26_0\(1) => words_reg_0_255_0_0_i_36_n_0,
      \bank[2][6]_i_26_0\(0) => words_reg_0_255_0_0_i_37_n_0,
      \bank[2][7]_i_18_0\(3 downto 0) => store_register(7 downto 4),
      \bank[2][7]_i_6_0\(0) => registers_n_51,
      \bank[8][0]_i_3_0\ => alu_n_9,
      \bank[8][1]_i_2_0\(3) => alu_n_3,
      \bank[8][1]_i_2_0\(2) => alu_n_4,
      \bank[8][1]_i_2_0\(1) => alu_n_5,
      \bank[8][1]_i_2_0\(0) => alu_n_6,
      \bank_reg[12][3]_0\(3 downto 0) => io_load(3 downto 0),
      \bank_reg[13][5]_0\(3 downto 2) => addr1(7 downto 6),
      \bank_reg[13][5]_0\(1 downto 0) => addr1(3 downto 2),
      \bank_reg[9][2]_0\(14) => registers_n_52,
      \bank_reg[9][2]_0\(13) => registers_n_53,
      \bank_reg[9][2]_0\(12) => registers_n_54,
      \bank_reg[9][2]_0\(11) => registers_n_55,
      \bank_reg[9][2]_0\(10) => registers_n_56,
      \bank_reg[9][2]_0\(9) => registers_n_57,
      \bank_reg[9][2]_0\(8) => registers_n_58,
      \bank_reg[9][2]_0\(7) => registers_n_59,
      \bank_reg[9][2]_0\(6) => registers_n_60,
      \bank_reg[9][2]_0\(5) => registers_n_61,
      \bank_reg[9][2]_0\(4) => registers_n_62,
      \bank_reg[9][2]_0\(3) => registers_n_63,
      \bank_reg[9][2]_0\(2) => registers_n_64,
      \bank_reg[9][2]_0\(1) => registers_n_65,
      \bank_reg[9][2]_0\(0) => registers_n_66,
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      \instruction_reg_reg[10]\ => registers_n_49,
      \instruction_reg_reg[12]\ => \instruction_reg_reg[12]_0\,
      \instruction_reg_reg[12]_0\ => \instruction_reg_reg[12]_1\,
      \instruction_reg_reg[12]_1\ => registers_n_6,
      \instruction_reg_reg[12]_2\ => registers_n_39,
      \instruction_reg_reg[15]\ => addr(8),
      \instruction_reg_reg[15]_0\ => addr(9),
      \instruction_reg_reg[15]_1\ => \instruction_reg_reg[15]_0\,
      \instruction_reg_reg[15]_2\ => \instruction_reg_reg[15]_1\,
      \instruction_reg_reg[6]\(3 downto 2) => reg_b(7 downto 6),
      \instruction_reg_reg[6]\(1 downto 0) => reg_b(3 downto 2),
      \instruction_reg_reg[6]_0\(3) => registers_n_23,
      \instruction_reg_reg[6]_0\(2) => registers_n_24,
      \instruction_reg_reg[6]_0\(1) => registers_n_25,
      \instruction_reg_reg[6]_0\(0) => registers_n_26,
      sw(0) => sw(0),
      sysclk => sysclk,
      words_reg_0_255_0_0_i_26_0(1) => words_reg_0_255_0_0_i_32_n_0,
      words_reg_0_255_0_0_i_26_0(0) => words_reg_0_255_0_0_i_33_n_0
    );
words_reg_0_255_0_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(7),
      I1 => reg_b(7),
      O => words_reg_0_255_0_0_i_32_n_0
    );
words_reg_0_255_0_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(6),
      I1 => reg_b(6),
      O => words_reg_0_255_0_0_i_33_n_0
    );
words_reg_0_255_0_0_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(3),
      I1 => reg_b(3),
      O => words_reg_0_255_0_0_i_36_n_0
    );
words_reg_0_255_0_0_i_37: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr1(2),
      I1 => reg_b(2),
      O => words_reg_0_255_0_0_i_37_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity slower_core_plaquita_0_0_plaquita is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bank[2][7]_i_24\ : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sysclk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 )
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
      addr(9 downto 0) => addr(9 downto 0),
      btn(3 downto 0) => btn(3 downto 0),
      data_load0(7 downto 0) => data_load0(7 downto 0),
      data_out(7 downto 0) => data_out(7 downto 0),
      \instruction_reg_reg[12]_0\ => dut_n_0,
      \instruction_reg_reg[12]_1\ => dut_n_13,
      \instruction_reg_reg[15]_0\ => dut_n_11,
      \instruction_reg_reg[15]_1\ => dut_n_12,
      led(3 downto 0) => led(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0),
      sysclk => sysclk
    );
mem: entity work.slower_core_plaquita_0_0_mem
     port map (
      addr(9 downto 0) => addr(9 downto 0),
      \bank[2][7]_i_24_0\ => \bank[2][7]_i_24\,
      \bank[2][7]_i_24_1\ => dut_n_0,
      \bank[2][7]_i_24_2\ => dut_n_11,
      \bank[2][7]_i_24_3\ => dut_n_12,
      \bank[2][7]_i_24_4\ => dut_n_13,
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
      \bank[2][7]_i_24\ => sysclk,
      btn(3 downto 0) => btn(3 downto 0),
      led(3 downto 0) => led(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0),
      sysclk => sysclk
    );
end STRUCTURE;
