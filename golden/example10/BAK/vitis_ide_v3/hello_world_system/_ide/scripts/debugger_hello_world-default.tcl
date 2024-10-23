# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\openfpga\Desktop\project\golden\example9_2\vitis_ide_v3\hello_world_system\_ide\scripts\debugger_hello_world-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\openfpga\Desktop\project\golden\example9_2\vitis_ide_v3\hello_world_system\_ide\scripts\debugger_hello_world-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-43651093-0"}
fpga -file C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v3/hello_world/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v3/7k325t_platform/export/7k325t_platform/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/openfpga/Desktop/project/golden/example9_2/vitis_ide_v3/hello_world/Debug/hello_world.elf
bpadd -addr &main
