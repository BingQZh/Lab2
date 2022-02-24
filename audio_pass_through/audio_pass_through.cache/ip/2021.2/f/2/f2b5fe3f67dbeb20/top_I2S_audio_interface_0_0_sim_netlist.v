// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Feb 18 03:32:28 2022
// Host        : DESKTOP-HD705MT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_I2S_audio_interface_0_0_sim_netlist.v
// Design      : top_I2S_audio_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_I2S_audio_interface_0_0,I2S_audio_interface,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "I2S_audio_interface,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    fpga_clk,
    bclk,
    lrclk,
    sdata_in,
    audio_valid_adau,
    audio_r_adau,
    audio_l_adau,
    audio_valid_pl,
    audio_r_pl,
    audio_l_pl,
    sdata_out);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 fpga_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME fpga_clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input fpga_clk;
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

  wire \<const0> ;
  wire \<const1> ;

  assign audio_l_pl[23] = \<const0> ;
  assign audio_l_pl[22] = \<const0> ;
  assign audio_l_pl[21] = \<const0> ;
  assign audio_l_pl[20] = \<const0> ;
  assign audio_l_pl[19] = \<const0> ;
  assign audio_l_pl[18] = \<const0> ;
  assign audio_l_pl[17] = \<const0> ;
  assign audio_l_pl[16] = \<const0> ;
  assign audio_l_pl[15] = \<const0> ;
  assign audio_l_pl[14] = \<const0> ;
  assign audio_l_pl[13] = \<const0> ;
  assign audio_l_pl[12] = \<const0> ;
  assign audio_l_pl[11] = \<const0> ;
  assign audio_l_pl[10] = \<const0> ;
  assign audio_l_pl[9] = \<const0> ;
  assign audio_l_pl[8] = \<const0> ;
  assign audio_l_pl[7] = \<const0> ;
  assign audio_l_pl[6] = \<const0> ;
  assign audio_l_pl[5] = \<const0> ;
  assign audio_l_pl[4] = \<const0> ;
  assign audio_l_pl[3] = \<const0> ;
  assign audio_l_pl[2] = \<const0> ;
  assign audio_l_pl[1] = \<const0> ;
  assign audio_l_pl[0] = \<const0> ;
  assign audio_r_pl[23] = \<const0> ;
  assign audio_r_pl[22] = \<const0> ;
  assign audio_r_pl[21] = \<const0> ;
  assign audio_r_pl[20] = \<const0> ;
  assign audio_r_pl[19] = \<const0> ;
  assign audio_r_pl[18] = \<const0> ;
  assign audio_r_pl[17] = \<const0> ;
  assign audio_r_pl[16] = \<const0> ;
  assign audio_r_pl[15] = \<const0> ;
  assign audio_r_pl[14] = \<const0> ;
  assign audio_r_pl[13] = \<const0> ;
  assign audio_r_pl[12] = \<const0> ;
  assign audio_r_pl[11] = \<const0> ;
  assign audio_r_pl[10] = \<const0> ;
  assign audio_r_pl[9] = \<const0> ;
  assign audio_r_pl[8] = \<const0> ;
  assign audio_r_pl[7] = \<const0> ;
  assign audio_r_pl[6] = \<const0> ;
  assign audio_r_pl[5] = \<const0> ;
  assign audio_r_pl[4] = \<const0> ;
  assign audio_r_pl[3] = \<const0> ;
  assign audio_r_pl[2] = \<const0> ;
  assign audio_r_pl[1] = \<const0> ;
  assign audio_r_pl[0] = \<const0> ;
  assign audio_valid_pl = \<const1> ;
  assign sdata_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
