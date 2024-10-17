# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\project\golden\example6\vitis_ide_v2\7VX690T_PLATFORM\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\project\golden\example6\vitis_ide_v2\7VX690T_PLATFORM\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {7VX690T_PLATFORM}\
-hw {E:\project\golden\example6\vitis_ide_v2\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {E:/project/golden/example6/vitis_ide_v2}

platform write
platform generate -domains 
platform active {7VX690T_PLATFORM}
platform generate
bsp reload
platform clean
platform generate
