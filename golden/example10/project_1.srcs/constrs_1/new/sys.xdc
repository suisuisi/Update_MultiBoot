#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x800000 [current_design]

############## clock define##################
create_clock -period 5.000 [get_ports sys_clk_p]
set_property PACKAGE_PIN AE10 [get_ports sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15 [get_ports sys_clk_p]


set_property PACKAGE_PIN AA27 [get_ports UART_DEBUG_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_DEBUG_rxd]
set_property PACKAGE_PIN W28 [get_ports UART_DEBUG_txd]
set_property IOSTANDARD LVCMOS33 [get_ports UART_DEBUG_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
#set_property PACKAGE_PIN AE23 [get_ports {led[2]}]



set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[0]}]
set_property PACKAGE_PIN A21 [get_ports {dip_switches_4bits_tri_i[0]}]
set_property PACKAGE_PIN D18 [get_ports {dip_switches_4bits_tri_i[1]}]
set_property PACKAGE_PIN A22 [get_ports {dip_switches_4bits_tri_i[2]}]
set_property PACKAGE_PIN E20 [get_ports {dip_switches_4bits_tri_i[3]}]
set_property PACKAGE_PIN E21 [get_ports {dip_switches_4bits_tri_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_4bits_tri_i[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_4bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_4bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dip_switches_4bits_tri_i[0]}]
set_property PACKAGE_PIN AF21 [get_ports {push_buttons_4bits_tri_i[0]}]
set_property PACKAGE_PIN AF23 [get_ports {push_buttons_4bits_tri_i[1]}]
set_property PACKAGE_PIN AB22 [get_ports {push_buttons_4bits_tri_i[2]}]
set_property PACKAGE_PIN AC20 [get_ports {push_buttons_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_tri_o[0]}]
set_property PACKAGE_PIN AF20 [get_ports {led_tri_o[0]}]
set_property PACKAGE_PIN AE23 [get_ports {led_tri_o[1]}]
set_property PACKAGE_PIN AB23 [get_ports {led_tri_o[2]}]
set_property PACKAGE_PIN AC21 [get_ports {led_tri_o[3]}]

##############air_fan##################
set_property PACKAGE_PIN AB30 [get_ports {air_fan[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {air_fan[0]}]