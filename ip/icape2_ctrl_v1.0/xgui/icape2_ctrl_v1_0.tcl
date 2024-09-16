# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DEVICE_ID" -parent ${Page_0} -widget comboBox
  set FLASH_SIZE_SMALLER_256Mb [ipgui::add_param $IPINST -name "FLASH_SIZE_SMALLER_256Mb" -parent ${Page_0} -widget comboBox]
  set_property tooltip {0-->smaller 256Mb 1-->equal to or greater than 256 Mb} ${FLASH_SIZE_SMALLER_256Mb}


}

proc update_PARAM_VALUE.DEVICE_ID { PARAM_VALUE.DEVICE_ID } {
	# Procedure called to update DEVICE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEVICE_ID { PARAM_VALUE.DEVICE_ID } {
	# Procedure called to validate DEVICE_ID
	return true
}

proc update_PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb { PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb } {
	# Procedure called to update FLASH_SIZE_SMALLER_256Mb when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb { PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb } {
	# Procedure called to validate FLASH_SIZE_SMALLER_256Mb
	return true
}


proc update_MODELPARAM_VALUE.DEVICE_ID { MODELPARAM_VALUE.DEVICE_ID PARAM_VALUE.DEVICE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEVICE_ID}] ${MODELPARAM_VALUE.DEVICE_ID}
}

proc update_MODELPARAM_VALUE.FLASH_SIZE_SMALLER_256Mb { MODELPARAM_VALUE.FLASH_SIZE_SMALLER_256Mb PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FLASH_SIZE_SMALLER_256Mb}] ${MODELPARAM_VALUE.FLASH_SIZE_SMALLER_256Mb}
}

