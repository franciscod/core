// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Jul 18 17:01:32 2023
// Host        : yintu running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/core/carefully_organized_rock_ensemble/carefully_organized_rock_ensemble.gen/sources_1/bd/slower_core/ip/slower_core_plaquita_0_0/slower_core_plaquita_0_0_stub.v
// Design      : slower_core_plaquita_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "plaquita,Vivado 2023.1" *)
module slower_core_plaquita_0_0(sysclk, sw, btn, led)
/* synthesis syn_black_box black_box_pad_pin="sw[3:0],btn[3:0],led[3:0]" */
/* synthesis syn_force_seq_prim="sysclk" */;
  input sysclk /* synthesis syn_isclock = 1 */;
  input [3:0]sw;
  input [3:0]btn;
  output [3:0]led;
endmodule
