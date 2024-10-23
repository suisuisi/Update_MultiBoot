# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\openfpga\Desktop\project\golden\example3\vitis_ide\golden_iprog_system\_ide\scripts\debugger_golden_iprog-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\openfpga\Desktop\project\golden\example3\vitis_ide\golden_iprog_system\_ide\scripts\debugger_golden_iprog-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-43651093-0"}
fpga -file C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/golden_iprog/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/k7_platform/export/k7_platform/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/openfpga/Desktop/project/golden/example3/vitis_ide/golden_iprog/Debug/golden_iprog.elf
bpadd -addr &main
