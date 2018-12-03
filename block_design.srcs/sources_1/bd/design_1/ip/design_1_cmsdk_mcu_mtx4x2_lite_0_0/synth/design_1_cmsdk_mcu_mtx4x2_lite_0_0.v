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


// IP VLNV: xilinx.com:user:cmsdk_mcu_mtx4x2_lite:1.0
// IP Revision: 2

(* X_CORE_INFO = "cmsdk_mcu_mtx4x2_lite,Vivado 2018.1" *)
(* CHECK_LICENSE_TYPE = "design_1_cmsdk_mcu_mtx4x2_lite_0_0,cmsdk_mcu_mtx4x2_lite,{}" *)
(* CORE_GENERATION_INFO = "design_1_cmsdk_mcu_mtx4x2_lite_0_0,cmsdk_mcu_mtx4x2_lite,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cmsdk_mcu_mtx4x2_lite,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_cmsdk_mcu_mtx4x2_lite_0_0 (
  HCLK,
  HRESETn,
  REMAP,
  HADDRS0,
  HTRANSS0,
  HWRITES0,
  HSIZES0,
  HBURSTS0,
  HPROTS0,
  HWDATAS0,
  HMASTLOCKS0,
  HAUSERS0,
  HWUSERS0,
  HADDRS1,
  HTRANSS1,
  HWRITES1,
  HSIZES1,
  HBURSTS1,
  HPROTS1,
  HWDATAS1,
  HMASTLOCKS1,
  HAUSERS1,
  HWUSERS1,
  HADDRS2,
  HTRANSS2,
  HWRITES2,
  HSIZES2,
  HBURSTS2,
  HPROTS2,
  HWDATAS2,
  HMASTLOCKS2,
  HAUSERS2,
  HWUSERS2,
  HADDRS3,
  HTRANSS3,
  HWRITES3,
  HSIZES3,
  HBURSTS3,
  HPROTS3,
  HWDATAS3,
  HMASTLOCKS3,
  HAUSERS3,
  HWUSERS3,
  HRDATAM0,
  HREADYOUTM0,
  HRESPM0,
  HRUSERM0,
  HRDATAM1,
  HREADYOUTM1,
  HRESPM1,
  HRUSERM1,
  SCANENABLE,
  SCANINHCLK,
  HSELM0,
  HADDRM0,
  HTRANSM0,
  HWRITEM0,
  HSIZEM0,
  HBURSTM0,
  HPROTM0,
  HWDATAM0,
  HMASTLOCKM0,
  HREADYMUXM0,
  HAUSERM0,
  HWUSERM0,
  HSELM1,
  HADDRM1,
  HTRANSM1,
  HWRITEM1,
  HSIZEM1,
  HBURSTM1,
  HPROTM1,
  HWDATAM1,
  HMASTLOCKM1,
  HREADYMUXM1,
  HAUSERM1,
  HWUSERM1,
  HRDATAS0,
  HREADYS0,
  HRESPS0,
  HRUSERS0,
  HRDATAS1,
  HREADYS1,
  HRESPS1,
  HRUSERS1,
  HRDATAS2,
  HREADYS2,
  HRESPS2,
  HRUSERS2,
  HRDATAS3,
  HREADYS3,
  HRESPS3,
  HRUSERS3,
  SCANOUTHCLK
);

input wire HCLK;
input wire HRESETn;
input wire [3 : 0] REMAP;
input wire [31 : 0] HADDRS0;
input wire [1 : 0] HTRANSS0;
input wire HWRITES0;
input wire [2 : 0] HSIZES0;
input wire [2 : 0] HBURSTS0;
input wire [3 : 0] HPROTS0;
input wire [31 : 0] HWDATAS0;
input wire HMASTLOCKS0;
input wire [2 : 0] HAUSERS0;
input wire [2 : 0] HWUSERS0;
input wire [31 : 0] HADDRS1;
input wire [1 : 0] HTRANSS1;
input wire HWRITES1;
input wire [2 : 0] HSIZES1;
input wire [2 : 0] HBURSTS1;
input wire [3 : 0] HPROTS1;
input wire [31 : 0] HWDATAS1;
input wire HMASTLOCKS1;
input wire [2 : 0] HAUSERS1;
input wire [2 : 0] HWUSERS1;
input wire [31 : 0] HADDRS2;
input wire [1 : 0] HTRANSS2;
input wire HWRITES2;
input wire [2 : 0] HSIZES2;
input wire [2 : 0] HBURSTS2;
input wire [3 : 0] HPROTS2;
input wire [31 : 0] HWDATAS2;
input wire HMASTLOCKS2;
input wire [2 : 0] HAUSERS2;
input wire [2 : 0] HWUSERS2;
input wire [31 : 0] HADDRS3;
input wire [1 : 0] HTRANSS3;
input wire HWRITES3;
input wire [2 : 0] HSIZES3;
input wire [2 : 0] HBURSTS3;
input wire [3 : 0] HPROTS3;
input wire [31 : 0] HWDATAS3;
input wire HMASTLOCKS3;
input wire [2 : 0] HAUSERS3;
input wire [2 : 0] HWUSERS3;
input wire [31 : 0] HRDATAM0;
input wire HREADYOUTM0;
input wire HRESPM0;
input wire [2 : 0] HRUSERM0;
input wire [31 : 0] HRDATAM1;
input wire HREADYOUTM1;
input wire HRESPM1;
input wire [2 : 0] HRUSERM1;
input wire SCANENABLE;
input wire SCANINHCLK;
output wire HSELM0;
output wire [31 : 0] HADDRM0;
output wire [1 : 0] HTRANSM0;
output wire HWRITEM0;
output wire [2 : 0] HSIZEM0;
output wire [2 : 0] HBURSTM0;
output wire [3 : 0] HPROTM0;
output wire [31 : 0] HWDATAM0;
output wire HMASTLOCKM0;
output wire HREADYMUXM0;
output wire [2 : 0] HAUSERM0;
output wire [2 : 0] HWUSERM0;
output wire HSELM1;
output wire [31 : 0] HADDRM1;
output wire [1 : 0] HTRANSM1;
output wire HWRITEM1;
output wire [2 : 0] HSIZEM1;
output wire [2 : 0] HBURSTM1;
output wire [3 : 0] HPROTM1;
output wire [31 : 0] HWDATAM1;
output wire HMASTLOCKM1;
output wire HREADYMUXM1;
output wire [2 : 0] HAUSERM1;
output wire [2 : 0] HWUSERM1;
output wire [31 : 0] HRDATAS0;
output wire HREADYS0;
output wire HRESPS0;
output wire [2 : 0] HRUSERS0;
output wire [31 : 0] HRDATAS1;
output wire HREADYS1;
output wire HRESPS1;
output wire [2 : 0] HRUSERS1;
output wire [31 : 0] HRDATAS2;
output wire HREADYS2;
output wire HRESPS2;
output wire [2 : 0] HRUSERS2;
output wire [31 : 0] HRDATAS3;
output wire HREADYS3;
output wire HRESPS3;
output wire [2 : 0] HRUSERS3;
output wire SCANOUTHCLK;

  cmsdk_mcu_mtx4x2_lite inst (
    .HCLK(HCLK),
    .HRESETn(HRESETn),
    .REMAP(REMAP),
    .HADDRS0(HADDRS0),
    .HTRANSS0(HTRANSS0),
    .HWRITES0(HWRITES0),
    .HSIZES0(HSIZES0),
    .HBURSTS0(HBURSTS0),
    .HPROTS0(HPROTS0),
    .HWDATAS0(HWDATAS0),
    .HMASTLOCKS0(HMASTLOCKS0),
    .HAUSERS0(HAUSERS0),
    .HWUSERS0(HWUSERS0),
    .HADDRS1(HADDRS1),
    .HTRANSS1(HTRANSS1),
    .HWRITES1(HWRITES1),
    .HSIZES1(HSIZES1),
    .HBURSTS1(HBURSTS1),
    .HPROTS1(HPROTS1),
    .HWDATAS1(HWDATAS1),
    .HMASTLOCKS1(HMASTLOCKS1),
    .HAUSERS1(HAUSERS1),
    .HWUSERS1(HWUSERS1),
    .HADDRS2(HADDRS2),
    .HTRANSS2(HTRANSS2),
    .HWRITES2(HWRITES2),
    .HSIZES2(HSIZES2),
    .HBURSTS2(HBURSTS2),
    .HPROTS2(HPROTS2),
    .HWDATAS2(HWDATAS2),
    .HMASTLOCKS2(HMASTLOCKS2),
    .HAUSERS2(HAUSERS2),
    .HWUSERS2(HWUSERS2),
    .HADDRS3(HADDRS3),
    .HTRANSS3(HTRANSS3),
    .HWRITES3(HWRITES3),
    .HSIZES3(HSIZES3),
    .HBURSTS3(HBURSTS3),
    .HPROTS3(HPROTS3),
    .HWDATAS3(HWDATAS3),
    .HMASTLOCKS3(HMASTLOCKS3),
    .HAUSERS3(HAUSERS3),
    .HWUSERS3(HWUSERS3),
    .HRDATAM0(HRDATAM0),
    .HREADYOUTM0(HREADYOUTM0),
    .HRESPM0(HRESPM0),
    .HRUSERM0(HRUSERM0),
    .HRDATAM1(HRDATAM1),
    .HREADYOUTM1(HREADYOUTM1),
    .HRESPM1(HRESPM1),
    .HRUSERM1(HRUSERM1),
    .SCANENABLE(SCANENABLE),
    .SCANINHCLK(SCANINHCLK),
    .HSELM0(HSELM0),
    .HADDRM0(HADDRM0),
    .HTRANSM0(HTRANSM0),
    .HWRITEM0(HWRITEM0),
    .HSIZEM0(HSIZEM0),
    .HBURSTM0(HBURSTM0),
    .HPROTM0(HPROTM0),
    .HWDATAM0(HWDATAM0),
    .HMASTLOCKM0(HMASTLOCKM0),
    .HREADYMUXM0(HREADYMUXM0),
    .HAUSERM0(HAUSERM0),
    .HWUSERM0(HWUSERM0),
    .HSELM1(HSELM1),
    .HADDRM1(HADDRM1),
    .HTRANSM1(HTRANSM1),
    .HWRITEM1(HWRITEM1),
    .HSIZEM1(HSIZEM1),
    .HBURSTM1(HBURSTM1),
    .HPROTM1(HPROTM1),
    .HWDATAM1(HWDATAM1),
    .HMASTLOCKM1(HMASTLOCKM1),
    .HREADYMUXM1(HREADYMUXM1),
    .HAUSERM1(HAUSERM1),
    .HWUSERM1(HWUSERM1),
    .HRDATAS0(HRDATAS0),
    .HREADYS0(HREADYS0),
    .HRESPS0(HRESPS0),
    .HRUSERS0(HRUSERS0),
    .HRDATAS1(HRDATAS1),
    .HREADYS1(HREADYS1),
    .HRESPS1(HRESPS1),
    .HRUSERS1(HRUSERS1),
    .HRDATAS2(HRDATAS2),
    .HREADYS2(HREADYS2),
    .HRESPS2(HRESPS2),
    .HRUSERS2(HRUSERS2),
    .HRDATAS3(HRDATAS3),
    .HREADYS3(HREADYS3),
    .HRESPS3(HRESPS3),
    .HRUSERS3(HRUSERS3),
    .SCANOUTHCLK(SCANOUTHCLK)
  );
endmodule
