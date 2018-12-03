
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {/clk_wiz_clk_out1} \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.0} \
 ] $CLK
  set PORTIN [ create_bd_port -dir I -from 15 -to 0 PORTIN ]
  set PORTOUT [ create_bd_port -dir O -from 15 -to 0 PORTOUT ]
  set RESET [ create_bd_port -dir I -type rst RESET ]
  set TCK [ create_bd_port -dir I TCK ]
  set TDI [ create_bd_port -dir I TDI ]
  set TDO [ create_bd_port -dir O TDO ]
  set TMS [ create_bd_port -dir IO TMS ]
  set uart0_rxd [ create_bd_port -dir I uart0_rxd ]
  set uart0_txd [ create_bd_port -dir O uart0_txd ]

  # Create instance: ARM_SOC_0, and set properties
  set ARM_SOC_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ARM_SOC:1.0 ARM_SOC_0 ]

  # Create instance: cmsdk_ahb_gpio_0, and set properties
  set cmsdk_ahb_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:cmsdk_ahb_gpio:1.0 cmsdk_ahb_gpio_0 ]

  # Create instance: cmsdk_apb_subsystem_0, and set properties
  set cmsdk_apb_subsystem_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:cmsdk_apb_subsystem:1.0 cmsdk_apb_subsystem_0 ]

  # Create instance: cmsdk_mcu_mtx4x2_lite_0, and set properties
  set cmsdk_mcu_mtx4x2_lite_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:cmsdk_mcu_mtx4x2_lite:1.0 cmsdk_mcu_mtx4x2_lite_0 ]

  # Create instance: uAHB2RAM_0, and set properties
  set uAHB2RAM_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:uAHB2RAM:1.0 uAHB2RAM_0 ]

  # Create port connections
  connect_bd_net -net ARM_SOC_0_TDO [get_bd_ports TDO] [get_bd_pins ARM_SOC_0/TDO]
  connect_bd_net -net ARM_SOC_0_fclk_ss [get_bd_pins ARM_SOC_0/fclk_ss] [get_bd_pins cmsdk_ahb_gpio_0/FCLK] [get_bd_pins cmsdk_ahb_gpio_0/HCLK] [get_bd_pins cmsdk_apb_subsystem_0/HCLK] [get_bd_pins cmsdk_apb_subsystem_0/PCLK] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HCLK] [get_bd_pins uAHB2RAM_0/fclk]
  connect_bd_net -net ARM_SOC_0_haddrs [get_bd_pins ARM_SOC_0/haddrs] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HADDRS0]
  connect_bd_net -net ARM_SOC_0_hbursts [get_bd_pins ARM_SOC_0/hbursts] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HBURSTS0]
  connect_bd_net -net ARM_SOC_0_hmastlocks [get_bd_pins ARM_SOC_0/hmastlocks] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HMASTLOCKS0]
  connect_bd_net -net ARM_SOC_0_hprots [get_bd_pins ARM_SOC_0/hprots] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HPROTS0]
  connect_bd_net -net ARM_SOC_0_hsizes [get_bd_pins ARM_SOC_0/hsizes] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HSIZES0]
  connect_bd_net -net ARM_SOC_0_htranss [get_bd_pins ARM_SOC_0/htranss] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HTRANSS0]
  connect_bd_net -net ARM_SOC_0_hwdatas [get_bd_pins ARM_SOC_0/hwdatas] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWDATAS0]
  connect_bd_net -net ARM_SOC_0_hwrites [get_bd_pins ARM_SOC_0/hwrites] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWRITES0]
  connect_bd_net -net ARM_SOC_0_srs_rst_ss [get_bd_pins ARM_SOC_0/srs_rst_ss] [get_bd_pins cmsdk_ahb_gpio_0/HRESETn] [get_bd_pins cmsdk_apb_subsystem_0/HRESETn] [get_bd_pins cmsdk_apb_subsystem_0/PRESETn] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HRESETn] [get_bd_pins uAHB2RAM_0/reg_sys_rst_n]
  connect_bd_net -net CLK_1 [get_bd_ports CLK] [get_bd_pins ARM_SOC_0/CLK]
  connect_bd_net -net Net [get_bd_ports TMS] [get_bd_pins ARM_SOC_0/TMS]
  connect_bd_net -net PORTIN_1 [get_bd_ports PORTIN] [get_bd_pins cmsdk_ahb_gpio_0/PORTIN]
  connect_bd_net -net RESET_1 [get_bd_ports RESET] [get_bd_pins ARM_SOC_0/RESET]
  connect_bd_net -net TCK_1 [get_bd_ports TCK] [get_bd_pins ARM_SOC_0/TCK]
  connect_bd_net -net TDI_1 [get_bd_ports TDI] [get_bd_pins ARM_SOC_0/TDI]
  connect_bd_net -net cmsdk_ahb_gpio_0_HRDATA [get_bd_pins cmsdk_ahb_gpio_0/HRDATA] [get_bd_pins cmsdk_apb_subsystem_0/ext12_prdata]
  connect_bd_net -net cmsdk_ahb_gpio_0_HREADYOUT [get_bd_pins cmsdk_ahb_gpio_0/HREADYOUT] [get_bd_pins cmsdk_apb_subsystem_0/ext12_pready]
  connect_bd_net -net cmsdk_ahb_gpio_0_PORTOUT [get_bd_ports PORTOUT] [get_bd_pins cmsdk_ahb_gpio_0/PORTOUT]
  connect_bd_net -net cmsdk_apb_subsystem_0_HRDATA [get_bd_pins cmsdk_apb_subsystem_0/HRDATA] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HRDATAM1]
  connect_bd_net -net cmsdk_apb_subsystem_0_HREADYOUT [get_bd_pins cmsdk_ahb_gpio_0/HREADY] [get_bd_pins cmsdk_apb_subsystem_0/HREADYOUT] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HREADYOUTM1]
  connect_bd_net -net cmsdk_apb_subsystem_0_HRESP [get_bd_pins cmsdk_apb_subsystem_0/HRESP] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HRESPM1]
  connect_bd_net -net cmsdk_apb_subsystem_0_PADDR [get_bd_pins cmsdk_ahb_gpio_0/HADDR] [get_bd_pins cmsdk_apb_subsystem_0/PADDR]
  connect_bd_net -net cmsdk_apb_subsystem_0_PWDATA [get_bd_pins cmsdk_ahb_gpio_0/HWDATA] [get_bd_pins cmsdk_apb_subsystem_0/PWDATA]
  connect_bd_net -net cmsdk_apb_subsystem_0_PWRITE [get_bd_pins cmsdk_ahb_gpio_0/HWRITE] [get_bd_pins cmsdk_apb_subsystem_0/PWRITE]
  connect_bd_net -net cmsdk_apb_subsystem_0_ext12_psel [get_bd_pins cmsdk_ahb_gpio_0/HSEL] [get_bd_pins cmsdk_apb_subsystem_0/ext12_psel]
  connect_bd_net -net cmsdk_apb_subsystem_0_uart0_txd [get_bd_ports uart0_txd] [get_bd_pins cmsdk_apb_subsystem_0/uart0_txd]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HADDRM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HADDRM0] [get_bd_pins uAHB2RAM_0/haddrs]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HADDRM1 [get_bd_pins cmsdk_apb_subsystem_0/HADDR] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HADDRM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HPROTM1 [get_bd_pins cmsdk_apb_subsystem_0/HPROT] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HPROTM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HRDATAS0 [get_bd_pins ARM_SOC_0/hrdatas] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HRDATAS0]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HREADYMUXM1 [get_bd_pins cmsdk_apb_subsystem_0/HREADY] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HREADYMUXM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HREADYS0 [get_bd_pins ARM_SOC_0/hreadys] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HREADYS0]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HSELM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HSELM0] [get_bd_pins uAHB2RAM_0/hsel]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HSELM1 [get_bd_pins cmsdk_apb_subsystem_0/HSEL] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HSELM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HSIZEM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HSIZEM0] [get_bd_pins uAHB2RAM_0/hsizes]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HSIZEM1 [get_bd_pins cmsdk_ahb_gpio_0/HSIZE] [get_bd_pins cmsdk_apb_subsystem_0/HSIZE] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HSIZEM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HTRANSM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HTRANSM0] [get_bd_pins uAHB2RAM_0/htranss]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HTRANSM1 [get_bd_pins cmsdk_ahb_gpio_0/HTRANS] [get_bd_pins cmsdk_apb_subsystem_0/HTRANS] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HTRANSM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HWDATAM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWDATAM0] [get_bd_pins uAHB2RAM_0/hwdatas]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HWDATAM1 [get_bd_pins cmsdk_apb_subsystem_0/HWDATA] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWDATAM1]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HWRITEM0 [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWRITEM0] [get_bd_pins uAHB2RAM_0/hwrites]
  connect_bd_net -net cmsdk_mcu_mtx4x2_lite_0_HWRITEM1 [get_bd_pins cmsdk_apb_subsystem_0/HWRITE] [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HWRITEM1]
  connect_bd_net -net uAHB2RAM_0_hrdatas [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HRDATAM0] [get_bd_pins uAHB2RAM_0/hrdatas]
  connect_bd_net -net uAHB2RAM_0_hreadyss [get_bd_pins cmsdk_mcu_mtx4x2_lite_0/HREADYOUTM0] [get_bd_pins uAHB2RAM_0/hreadyss]
  connect_bd_net -net uart0_rxd_1 [get_bd_ports uart0_rxd] [get_bd_pins cmsdk_apb_subsystem_0/uart0_rxd]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


