// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Feb 17 20:56:58 2022
// Host        : DESKTOP-HD705MT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ENSC462/part2b/LAB2A_audio_pass_through_2/audio_pass_through/audio_pass_through.gen/sources_1/bd/top/ip/top_clk_wiz_0_0/top_clk_wiz_0_0_stub.v
// Design      : top_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module top_clk_wiz_0_0(clk_out1, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1;
endmodule
