-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Tue Jul 18 01:07:31 2023
-- Host        : yintu running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/core/carefully_organized_rock_ensemble/carefully_organized_rock_ensemble.gen/sources_1/bd/slower_core/ip/slower_core_clk_wiz_0_0/slower_core_clk_wiz_0_0_stub.vhdl
-- Design      : slower_core_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity slower_core_clk_wiz_0_0 is
  Port ( 
    core_clk : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end slower_core_clk_wiz_0_0;

architecture stub of slower_core_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "core_clk,reset,locked,clk_in1";
begin
end;
