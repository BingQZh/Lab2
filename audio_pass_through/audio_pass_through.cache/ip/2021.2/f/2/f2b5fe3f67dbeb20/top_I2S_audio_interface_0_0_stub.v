// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Feb 18 03:32:28 2022
// Host        : DESKTOP-HD705MT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_I2S_audio_interface_0_0_stub.v
// Design      : top_I2S_audio_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "I2S_audio_interface,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rst, fpga_clk, bclk, lrclk, sdata_in, 
  audio_valid_adau, audio_r_adau, audio_l_adau, audio_valid_pl, audio_r_pl, audio_l_pl, 
  sdata_out)
/* synthesis syn_black_box black_box_pad_pin="rst,fpga_clk,bclk,lrclk,sdata_in,audio_valid_adau,audio_r_adau[23:0],audio_l_adau[23:0],audio_valid_pl,audio_r_pl[23:0],audio_l_pl[23:0],sdata_out" */;
  input rst;
  input fpga_clk;
  input bclk;
  input lrclk;
  input sdata_in;
  input audio_valid_adau;
  input [23:0]audio_r_adau;
  input [23:0]audio_l_adau;
  output audio_valid_pl;
  output [23:0]audio_r_pl;
  output [23:0]audio_l_pl;
  output sdata_out;
endmodule
