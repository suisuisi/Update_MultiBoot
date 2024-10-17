#############BPI Configurate Setting##################
#set_property BITSTREAM.CONFIG.BPI_SYNC_MODE Type1 [current_design]
#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
#set_property CONFIG_MODE BPI16 [current_design]
#set_property CFGBVS GND [current_design]
#set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x800000 [current_design]

############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_p]
set_property PACKAGE_PIN AU20 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]
# sys_clk_n AV19
set_property PACKAGE_PIN T21 [get_ports led]
set_property IOSTANDARD LVCMOS18 [get_ports led]

set_property PACKAGE_PIN AN23 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS18 [get_ports uart_tx]

#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
#set_property PACKAGE_PIN AE23 [get_ports {led[2]}]













