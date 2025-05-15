// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed May 14 20:13:24 2025
// Host        : pclab4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/student/Documents/jromeo/FinalProject/Waveform/Waveform/Waveform.gen/sources_1/ip/myproject_0/myproject_0_stub.v
// Design      : myproject_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "myproject,Vivado 2023.2" *)
module myproject_0(input_1_ap_vld, layer5_out_0_ap_vld, 
  layer5_out_1_ap_vld, input_1, layer5_out_0, layer5_out_1, ap_clk, ap_rst, ap_start, ap_done, 
  ap_ready, ap_idle)
/* synthesis syn_black_box black_box_pad_pin="input_1_ap_vld,layer5_out_0_ap_vld,layer5_out_1_ap_vld,input_1[1799:0],layer5_out_0[23:0],layer5_out_1[23:0],ap_rst,ap_start,ap_done,ap_ready,ap_idle" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input input_1_ap_vld;
  output layer5_out_0_ap_vld;
  output layer5_out_1_ap_vld;
  input [1799:0]input_1;
  output [23:0]layer5_out_0;
  output [23:0]layer5_out_1;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_ready;
  output ap_idle;
endmodule
