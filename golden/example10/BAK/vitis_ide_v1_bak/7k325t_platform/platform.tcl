# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\openfpga\Desktop\project\golden\example4_6\vitis_ide_v1\7k325t_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\openfpga\Desktop\project\golden\example4_6\vitis_ide_v1\7k325t_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {7k325t_platform}\
-hw {C:\Users\openfpga\Desktop\project\golden\example4_6\vitis_ide_v1\system_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/openfpga/Desktop/project/golden/example4_6/vitis_ide_v1}

platform write
platform generate -domains 
platform active {7k325t_platform}
platform generate
