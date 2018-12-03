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


// IP VLNV: xilinx.com:user:ARM_SOC:1.0
// IP Revision: 2

(* X_CORE_INFO = "ARM_SOC,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_ARM_SOC_0_1,ARM_SOC,{}" *)
(* CORE_GENERATION_INFO = "design_1_ARM_SOC_0_1,ARM_SOC,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ARM_SOC,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ARM_SOC_0_1 (
  CLK,
  RESET,
  TDI,
  TCK,
  TMS,
  TDO,
  haddrs,
  hbursts,
  hmastlocks,
  hprots,
  hsizes,
  htranss,
  hwdatas,
  hwrites,
  hrdatas,
  hreadys,
  fclk_ss,
  srs_rst_ss
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RESET, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
input wire CLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire RESET;
input wire TDI;
input wire TCK;
inout wire TMS;
output wire TDO;
output wire [31 : 0] haddrs;
output wire [2 : 0] hbursts;
output wire hmastlocks;
output wire [3 : 0] hprots;
output wire [2 : 0] hsizes;
output wire [1 : 0] htranss;
output wire [31 : 0] hwdatas;
output wire hwrites;
input wire [31 : 0] hrdatas;
input wire hreadys;
output wire fclk_ss;
output wire srs_rst_ss;

  ARM_SOC inst (
    .CLK(CLK),
    .RESET(RESET),
    .TDI(TDI),
    .TCK(TCK),
    .TMS(TMS),
    .TDO(TDO),
    .haddrs(haddrs),
    .hbursts(hbursts),
    .hmastlocks(hmastlocks),
    .hprots(hprots),
    .hsizes(hsizes),
    .htranss(htranss),
    .hwdatas(hwdatas),
    .hwrites(hwrites),
    .hrdatas(hrdatas),
    .hreadys(hreadys),
    .fclk_ss(fclk_ss),
    .srs_rst_ss(srs_rst_ss)
  );
endmodule
