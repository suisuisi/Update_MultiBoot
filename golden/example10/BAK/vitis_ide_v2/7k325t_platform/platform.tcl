# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\openfpga\Desktop\project\golden\example9_2\vitis_ide_v2\7k325t_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\openfpga\Desktop\project\golden\example9_2\vitis_ide_v2\7k325t_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {7k325t_platform}\
-hw {C:\Users\openfpga\Desktop\project\golden\example9_2\vitis_ide_v2\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v2}

platform write
platform generate -domains 
platform active {7k325t_platform}
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v2/system_wrapper.xsa}
platform generate -domains 
bsp reload
platform clean
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v2/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v2/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v2/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
