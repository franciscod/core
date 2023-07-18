//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Jul 18 17:00:11 2023
//Host        : yintu running 64-bit major release  (build 9200)
//Command     : generate_target slower_core_wrapper.bd
//Design      : slower_core_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module slower_core_wrapper
   (btn,
    led,
    sw,
    sysclk);
  input [3:0]btn;
  output [3:0]led;
  input [3:0]sw;
  input sysclk;

  wire [3:0]btn;
  wire [3:0]led;
  wire [3:0]sw;
  wire sysclk;

  slower_core slower_core_i
       (.btn(btn),
        .led(led),
        .sw(sw),
        .sysclk(sysclk));
endmodule
