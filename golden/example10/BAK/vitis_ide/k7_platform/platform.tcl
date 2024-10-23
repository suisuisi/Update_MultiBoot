# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\openfpga\Desktop\project\golden\example3\vitis_ide\k7_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\openfpga\Desktop\project\golden\example3\vitis_ide\k7_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {k7_platform}\
-hw {C:\Users\openfpga\Desktop\project\golden\example3\vitis_ide\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide}

platform write
platform generate -domains 
platform active {k7_platform}
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
bsp reload
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
bsp reload
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
platform active {k7_platform}
bsp reload
platform generate
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform active {k7_platform}
platform config -updatehw {C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/system_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
