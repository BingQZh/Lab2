# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\ENSC462\part2b\part2b_vitus\audio1761_iic_config_system\_ide\scripts\systemdebugger_audio1761_iic_config_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\ENSC462\part2b\part2b_vitus\audio1761_iic_config_system\_ide\scripts\systemdebugger_audio1761_iic_config_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469772" && level==0 && jtag_device_ctx=="jsn-Zed-210248469772-03727093-0"}
fpga -file D:/ENSC462/part2b/part2b_vitus/audio1761_iic_config/_ide/bitstream/top_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/ENSC462/part2b/part2b_vitus/audio1761_icc_config/export/audio1761_icc_config/hw/top_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/ENSC462/part2b/part2b_vitus/audio1761_iic_config/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/ENSC462/part2b/part2b_vitus/audio1761_iic_config/Debug/audio1761_iic_config.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
