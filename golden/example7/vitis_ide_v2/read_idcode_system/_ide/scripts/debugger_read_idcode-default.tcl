# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\project\golden\example6\vitis_ide_v2\read_idcode_system\_ide\scripts\debugger_read_idcode-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\project\golden\example6\vitis_ide_v2\read_idcode_system\_ide\scripts\debugger_read_idcode-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 210241854537" && level==0 && jtag_device_ctx=="jsn-JTAG-HS2-210241854537-33691093-0"}
fpga -file E:/project/golden/example6/vitis_ide_v2/read_idcode/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw E:/project/golden/example6/vitis_ide_v2/7VX690T_PLATFORM/export/7VX690T_PLATFORM/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow E:/project/golden/example6/vitis_ide_v2/read_idcode/Debug/read_idcode.elf
bpadd -addr &main
