//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Tue Jul 18 01:18:20 2023
//Host        : yintu running 64-bit major release  (build 9200)
//Command     : generate_target slower_core.bd
//Design      : slower_core
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "slower_core,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=slower_core,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "slower_core.hwdef" *) 
module slower_core
   (btn,
    led,
    sw,
    sysclk);
  input [3:0]btn;
  output [3:0]led;
  input [3:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN slower_core_clk_100MHz, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire [3:0]btn;
  wire clk_wiz_0_core_clk;
  wire [3:0]plaquita_led;
  wire [3:0]sw;
  wire sysclk_125MHz;
  wire [0:0]xlconstant_0_dout;

  assign led[3:0] = plaquita_led;
  assign sysclk_125MHz = sysclk;
  slower_core_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sysclk_125MHz),
        .core_clk(clk_wiz_0_core_clk),
        .reset(xlconstant_0_dout));
  slower_core_plaquita_0_0 plaquita_0
       (.btn(btn),
        .led(plaquita_led),
        .sw(sw),
        .sysclk(clk_wiz_0_core_clk));
  slower_core_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
