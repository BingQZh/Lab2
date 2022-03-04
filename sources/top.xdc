set_property PACKAGE_PIN AB2 [get_ports mclk]
set_property PACKAGE_PIN AA6 [get_ports bclk]
set_property PACKAGE_PIN Y6 [get_ports lrclk]
set_property PACKAGE_PIN Y8 [get_ports sdata_out]
set_property PACKAGE_PIN AA7 [get_ports sdata_in]
set_property PACKAGE_PIN AB5 [get_ports iic_sda_io]
set_property PACKAGE_PIN AB4 [get_ports iic_scl_io]
set_property PACKAGE_PIN H17 [get_ports {sel0}]
set_property PACKAGE_PIN M15 [get_ports {sel1}]

set_property IOSTANDARD LVCMOS33 [get_ports mclk]
set_property IOSTANDARD LVCMOS33 [get_ports bclk]
set_property IOSTANDARD LVCMOS33 [get_ports lrclk]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_out]
set_property IOSTANDARD LVCMOS33 [get_ports sdata_in]
set_property IOSTANDARD LVCMOS25 [get_ports {sel0}]
set_property IOSTANDARD LVCMOS25 [get_ports {sel1}]

set_property IOSTANDARD LVCMOS33 [get_ports iic_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_scl_io]

set_false_path \
  -from [get_clocks clk_out1_top_clk_wiz_0_0] \
  -to [get_clocks clk_fpga_0]