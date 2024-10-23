# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\openfpga\Desktop\project\golden\example9_3\vitis_ide_v4\spi_flash_rw_v0_system\_ide\scripts\debugger_spi_flash_rw_v0-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\openfpga\Desktop\project\golden\example9_3\vitis_ide_v4\spi_flash_rw_v0_system\_ide\scripts\debugger_spi_flash_rw_v0-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0 && jtag_device_ctx=="jsn-JTAG-HS1-210512180081-43651093-0"}
fpga -file C:/Users/openfpga/Desktop/project/golden/example9_3/vitis_ide_v4/spi_flash_rw_v0/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/openfpga/Desktop/project/golden/example9_3/vitis_ide_v4/k7325t_platform/export/k7325t_platform/hw/system_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/openfpga/Desktop/project/golden/example9_3/vitis_ide_v4/spi_flash_rw_v0/Debug/spi_flash_rw_v0.elf
bpadd -addr &main
