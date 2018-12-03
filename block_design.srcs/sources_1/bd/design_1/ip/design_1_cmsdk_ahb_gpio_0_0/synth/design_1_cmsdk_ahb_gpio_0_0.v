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


// IP VLNV: xilinx.com:user:cmsdk_ahb_gpio:1.0
// IP Revision: 2

(* X_CORE_INFO = "cmsdk_ahb_gpio,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_cmsdk_ahb_gpio_0_0,cmsdk_ahb_gpio,{}" *)
(* CORE_GENERATION_INFO = "design_1_cmsdk_ahb_gpio_0_0,cmsdk_ahb_gpio,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cmsdk_ahb_gpio,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ALTERNATE_FUNC_MASK=0xFFFF,ALTERNATE_FUNC_DEFAULT=0x0000,BE=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_cmsdk_ahb_gpio_0_0 (
  HCLK,
  HRESETn,
  FCLK,
  HSEL,
  HREADY,
  HTRANS,
  HSIZE,
  HWRITE,
  HADDR,
  HWDATA,
  ECOREVNUM,
  PORTIN,
  HREADYOUT,
  HRESP,
  HRDATA,
  PORTOUT,
  PORTEN,
  PORTFUNC,
  GPIOINT,
  COMBINT
);

input wire HCLK;
input wire HRESETn;
input wire FCLK;
input wire HSEL;
input wire HREADY;
input wire [1 : 0] HTRANS;
input wire [2 : 0] HSIZE;
input wire HWRITE;
input wire [11 : 0] HADDR;
input wire [31 : 0] HWDATA;
input wire [3 : 0] ECOREVNUM;
input wire [15 : 0] PORTIN;
output wire HREADYOUT;
output wire HRESP;
output wire [31 : 0] HRDATA;
output wire [15 : 0] PORTOUT;
output wire [15 : 0] PORTEN;
output wire [15 : 0] PORTFUNC;
output wire [15 : 0] GPIOINT;
output wire COMBINT;

  cmsdk_ahb_gpio #(
    .ALTERNATE_FUNC_MASK('HFFFF),
    .ALTERNATE_FUNC_DEFAULT('H0000),
    .BE(0)
  ) inst (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .FCLK(FCLK),
    .HSEL(HSEL),
    .HREADY(HREADY),
    .HTRANS(HTRANS),
    .HSIZE(HSIZE),
    .HWRITE(HWRITE),
    .HADDR(HADDR),
    .HWDATA(HWDATA),
    .ECOREVNUM(ECOREVNUM),
    .PORTIN(PORTIN),
    .HREADYOUT(HREADYOUT),
    .HRESP(HRESP),
    .HRDATA(HRDATA),
    .PORTOUT(PORTOUT),
    .PORTEN(PORTEN),
    .PORTFUNC(PORTFUNC),
    .GPIOINT(GPIOINT),
    .COMBINT(COMBINT)
  );
endmodule
