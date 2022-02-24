# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\ENSC462\part2b\part2b_vitus\audio1761_icc_config\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\ENSC462\part2b\part2b_vitus\audio1761_icc_config\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {audio1761_icc_config}\
-hw {D:\ENSC462\part2b\LAB2A_audio_pass_through_2\audio_pass_through\top_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {D:/ENSC462/part2b/part2b_vitus}

platform write
platform generate -domains 
platform active {audio1761_icc_config}
platform clean
platform generate
platform clean
platform generate
platform active {audio1761_icc_config}
platform config -updatehw {D:/ENSC462/part2b/LAB2A_audio_pass_through_2/audio_pass_through/top_wrapper.xsa}
platform clean
platform generate
