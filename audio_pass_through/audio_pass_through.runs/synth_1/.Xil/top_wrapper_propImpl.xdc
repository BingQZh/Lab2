set_property SRC_FILE_INFO {cfile:D:/ENSC462/part2b/LAB2A_audio_pass_through_2/audio_pass_through/audio_pass_through.srcs/constrs_1/new/top.xdc rfile:../../../audio_pass_through.srcs/constrs_1/new/top.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB2 [get_ports mclk]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA6 [get_ports bclk]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y6 [get_ports lrclk]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y8 [get_ports sdata_out]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA7 [get_ports sdata_in]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB5 [get_ports iic_sda_io]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB4 [get_ports iic_scl_io]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_out1_top_clk_wiz_0_0] -to [get_clocks clk_fpga_0]
