#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x800000 [current_design]


############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_p]
set_property PACKAGE_PIN E3 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]

set_property PACKAGE_PIN H5 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

set_property PACKAGE_PIN T9 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]


set_property PACKAGE_PIN D9 [get_ports {key[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
set_property PACKAGE_PIN C9 [get_ports {key[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[1]}]







