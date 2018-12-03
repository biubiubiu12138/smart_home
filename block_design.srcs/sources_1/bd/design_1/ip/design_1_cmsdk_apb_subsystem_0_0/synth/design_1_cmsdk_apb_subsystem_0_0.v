// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:cmsdk_apb_subsystem:1.0
// IP Revision: 2

(* X_CORE_INFO = "cmsdk_apb_subsystem,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_cmsdk_apb_subsystem_0_0,cmsdk_apb_subsystem,{}" *)
(* CORE_GENERATION_INFO = "design_1_cmsdk_apb_subsystem_0_0,cmsdk_apb_subsystem,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cmsdk_apb_subsystem,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,APB_EXT_PORT12_ENABLE=0,APB_EXT_PORT13_ENABLE=0,APB_EXT_PORT14_ENABLE=0,APB_EXT_PORT15_ENABLE=0,INCLUDE_IRQ_SYNCHRONIZER=0,INCLUDE_APB_TEST_SLAVE=1,INCLUDE_APB_TIMER0=1,INCLUDE_APB_TIMER1=1,INCLUDE_APB_DUALTIMER0=1,INCLUDE_APB_UART0=1,INCLUDE_APB_UART1=1,INCLUDE_APB_UART2=1\
,INCLUDE_APB_WATCHDOG=1,BE=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_cmsdk_apb_subsystem_0_0 (
  HCLK,
  HRESETn,
  HSEL,
  HADDR,
  HTRANS,
  HWRITE,
  HSIZE,
  HPROT,
  HREADY,
  HWDATA,
  HREADYOUT,
  HRDATA,
  HRESP,
  PCLK,
  PCLKG,
  PCLKEN,
  PRESETn,
  PADDR,
  PWRITE,
  PWDATA,
  PENABLE,
  ext12_psel,
  ext13_psel,
  ext14_psel,
  ext15_psel,
  ext12_prdata,
  ext12_pready,
  ext12_pslverr,
  ext13_prdata,
  ext13_pready,
  ext13_pslverr,
  ext14_prdata,
  ext14_pready,
  ext14_pslverr,
  ext15_prdata,
  ext15_pready,
  ext15_pslverr,
  APBACTIVE,
  uart0_rxd,
  uart0_txd,
  uart0_txen,
  uart1_rxd,
  uart1_txd,
  uart1_txen,
  uart2_rxd,
  uart2_txd,
  uart2_txen,
  timer0_extin,
  timer1_extin,
  apbsubsys_interrupt,
  watchdog_interrupt,
  watchdog_reset
);

input wire HCLK;
input wire HRESETn;
input wire HSEL;
input wire [15 : 0] HADDR;
input wire [1 : 0] HTRANS;
input wire HWRITE;
input wire [2 : 0] HSIZE;
input wire [3 : 0] HPROT;
input wire HREADY;
input wire [31 : 0] HWDATA;
output wire HREADYOUT;
output wire [31 : 0] HRDATA;
output wire HRESP;
input wire PCLK;
input wire PCLKG;
input wire PCLKEN;
input wire PRESETn;
output wire [11 : 0] PADDR;
output wire PWRITE;
output wire [31 : 0] PWDATA;
output wire PENABLE;
output wire ext12_psel;
output wire ext13_psel;
output wire ext14_psel;
output wire ext15_psel;
input wire [31 : 0] ext12_prdata;
input wire ext12_pready;
input wire ext12_pslverr;
input wire [31 : 0] ext13_prdata;
input wire ext13_pready;
input wire ext13_pslverr;
input wire [31 : 0] ext14_prdata;
input wire ext14_pready;
input wire ext14_pslverr;
input wire [31 : 0] ext15_prdata;
input wire ext15_pready;
input wire ext15_pslverr;
output wire APBACTIVE;
input wire uart0_rxd;
output wire uart0_txd;
output wire uart0_txen;
input wire uart1_rxd;
output wire uart1_txd;
output wire uart1_txen;
input wire uart2_rxd;
output wire uart2_txd;
output wire uart2_txen;
input wire timer0_extin;
input wire timer1_extin;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME apbsubsys_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 apbsubsys_interrupt INTERRUPT" *)
output wire [31 : 0] apbsubsys_interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME watchdog_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 watchdog_interrupt INTERRUPT" *)
output wire watchdog_interrupt;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME watchdog_reset, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 watchdog_reset RST" *)
output wire watchdog_reset;

  cmsdk_apb_subsystem #(
    .APB_EXT_PORT12_ENABLE(0),
    .APB_EXT_PORT13_ENABLE(0),
    .APB_EXT_PORT14_ENABLE(0),
    .APB_EXT_PORT15_ENABLE(0),
    .INCLUDE_IRQ_SYNCHRONIZER(0),
    .INCLUDE_APB_TEST_SLAVE(1),
    .INCLUDE_APB_TIMER0(1),
    .INCLUDE_APB_TIMER1(1),
    .INCLUDE_APB_DUALTIMER0(1),
    .INCLUDE_APB_UART0(1),
    .INCLUDE_APB_UART1(1),
    .INCLUDE_APB_UART2(1),
    .INCLUDE_APB_WATCHDOG(1),
    .BE(0)
  ) inst (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .HSEL(HSEL),
    .HADDR(HADDR),
    .HTRANS(HTRANS),
    .HWRITE(HWRITE),
    .HSIZE(HSIZE),
    .HPROT(HPROT),
    .HREADY(HREADY),
    .HWDATA(HWDATA),
    .HREADYOUT(HREADYOUT),
    .HRDATA(HRDATA),
    .HRESP(HRESP),
    .PCLK(PCLK),
    .PCLKG(PCLKG),
    .PCLKEN(PCLKEN),
    .PRESETn(PRESETn),
    .PADDR(PADDR),
    .PWRITE(PWRITE),
    .PWDATA(PWDATA),
    .PENABLE(PENABLE),
    .ext12_psel(ext12_psel),
    .ext13_psel(ext13_psel),
    .ext14_psel(ext14_psel),
    .ext15_psel(ext15_psel),
    .ext12_prdata(ext12_prdata),
    .ext12_pready(ext12_pready),
    .ext12_pslverr(ext12_pslverr),
    .ext13_prdata(ext13_prdata),
    .ext13_pready(ext13_pready),
    .ext13_pslverr(ext13_pslverr),
    .ext14_prdata(ext14_prdata),
    .ext14_pready(ext14_pready),
    .ext14_pslverr(ext14_pslverr),
    .ext15_prdata(ext15_prdata),
    .ext15_pready(ext15_pready),
    .ext15_pslverr(ext15_pslverr),
    .APBACTIVE(APBACTIVE),
    .uart0_rxd(uart0_rxd),
    .uart0_txd(uart0_txd),
    .uart0_txen(uart0_txen),
    .uart1_rxd(uart1_rxd),
    .uart1_txd(uart1_txd),
    .uart1_txen(uart1_txen),
    .uart2_rxd(uart2_rxd),
    .uart2_txd(uart2_txd),
    .uart2_txen(uart2_txen),
    .timer0_extin(timer0_extin),
    .timer1_extin(timer1_extin),
    .apbsubsys_interrupt(apbsubsys_interrupt),
    .watchdog_interrupt(watchdog_interrupt),
    .watchdog_reset(watchdog_reset)
  );
endmodule
