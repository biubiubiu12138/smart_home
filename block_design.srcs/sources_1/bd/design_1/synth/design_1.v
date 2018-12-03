//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Sun Jun 10 19:02:05 2018
//Host        : BIUBIUBIU running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=5,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    PORTIN,
    PORTOUT,
    RESET,
    TCK,
    TDI,
    TDO,
    TMS,
    uart0_rxd,
    uart0_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET RESET, CLK_DOMAIN /clk_wiz_clk_out1, FREQ_HZ 100000000, PHASE 0.0" *) input CLK;
  input [15:0]PORTIN;
  output [15:0]PORTOUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW" *) input RESET;
  input TCK;
  input TDI;
  output TDO;
  inout TMS;
  input uart0_rxd;
  output uart0_txd;

  wire ARM_SOC_0_TDO;
  wire ARM_SOC_0_fclk_ss;
  wire [31:0]ARM_SOC_0_haddrs;
  wire [2:0]ARM_SOC_0_hbursts;
  wire ARM_SOC_0_hmastlocks;
  wire [3:0]ARM_SOC_0_hprots;
  wire [2:0]ARM_SOC_0_hsizes;
  wire [1:0]ARM_SOC_0_htranss;
  wire [31:0]ARM_SOC_0_hwdatas;
  wire ARM_SOC_0_hwrites;
  wire ARM_SOC_0_srs_rst_ss;
  wire CLK_1;
  wire Net;
  wire [15:0]PORTIN_1;
  wire RESET_1;
  wire TCK_1;
  wire TDI_1;
  wire [31:0]cmsdk_ahb_gpio_0_HRDATA;
  wire cmsdk_ahb_gpio_0_HREADYOUT;
  wire [15:0]cmsdk_ahb_gpio_0_PORTOUT;
  wire [31:0]cmsdk_apb_subsystem_0_HRDATA;
  wire cmsdk_apb_subsystem_0_HREADYOUT;
  wire cmsdk_apb_subsystem_0_HRESP;
  wire [11:0]cmsdk_apb_subsystem_0_PADDR;
  wire [31:0]cmsdk_apb_subsystem_0_PWDATA;
  wire cmsdk_apb_subsystem_0_PWRITE;
  wire cmsdk_apb_subsystem_0_ext12_psel;
  wire cmsdk_apb_subsystem_0_uart0_txd;
  wire [31:0]cmsdk_mcu_mtx4x2_lite_0_HADDRM0;
  wire [31:0]cmsdk_mcu_mtx4x2_lite_0_HADDRM1;
  wire [3:0]cmsdk_mcu_mtx4x2_lite_0_HPROTM1;
  wire [31:0]cmsdk_mcu_mtx4x2_lite_0_HRDATAS0;
  wire cmsdk_mcu_mtx4x2_lite_0_HREADYMUXM1;
  wire cmsdk_mcu_mtx4x2_lite_0_HREADYS0;
  wire cmsdk_mcu_mtx4x2_lite_0_HSELM0;
  wire cmsdk_mcu_mtx4x2_lite_0_HSELM1;
  wire [2:0]cmsdk_mcu_mtx4x2_lite_0_HSIZEM0;
  wire [2:0]cmsdk_mcu_mtx4x2_lite_0_HSIZEM1;
  wire [1:0]cmsdk_mcu_mtx4x2_lite_0_HTRANSM0;
  wire [1:0]cmsdk_mcu_mtx4x2_lite_0_HTRANSM1;
  wire [31:0]cmsdk_mcu_mtx4x2_lite_0_HWDATAM0;
  wire [31:0]cmsdk_mcu_mtx4x2_lite_0_HWDATAM1;
  wire cmsdk_mcu_mtx4x2_lite_0_HWRITEM0;
  wire cmsdk_mcu_mtx4x2_lite_0_HWRITEM1;
  wire [31:0]uAHB2RAM_0_hrdatas;
  wire uAHB2RAM_0_hreadyss;
  wire uart0_rxd_1;

  assign CLK_1 = CLK;
  assign PORTIN_1 = PORTIN[15:0];
  assign PORTOUT[15:0] = cmsdk_ahb_gpio_0_PORTOUT;
  assign RESET_1 = RESET;
  assign TCK_1 = TCK;
  assign TDI_1 = TDI;
  assign TDO = ARM_SOC_0_TDO;
  assign uart0_rxd_1 = uart0_rxd;
  assign uart0_txd = cmsdk_apb_subsystem_0_uart0_txd;
  design_1_ARM_SOC_0_1 ARM_SOC_0
       (.CLK(CLK_1),
        .RESET(RESET_1),
        .TCK(TCK_1),
        .TDI(TDI_1),
        .TDO(ARM_SOC_0_TDO),
        .TMS(TMS),
        .fclk_ss(ARM_SOC_0_fclk_ss),
        .haddrs(ARM_SOC_0_haddrs),
        .hbursts(ARM_SOC_0_hbursts),
        .hmastlocks(ARM_SOC_0_hmastlocks),
        .hprots(ARM_SOC_0_hprots),
        .hrdatas(cmsdk_mcu_mtx4x2_lite_0_HRDATAS0),
        .hreadys(cmsdk_mcu_mtx4x2_lite_0_HREADYS0),
        .hsizes(ARM_SOC_0_hsizes),
        .htranss(ARM_SOC_0_htranss),
        .hwdatas(ARM_SOC_0_hwdatas),
        .hwrites(ARM_SOC_0_hwrites),
        .srs_rst_ss(ARM_SOC_0_srs_rst_ss));
  design_1_cmsdk_ahb_gpio_0_0 cmsdk_ahb_gpio_0
       (.ECOREVNUM({1'b0,1'b0,1'b0,1'b0}),
        .FCLK(ARM_SOC_0_fclk_ss),
        .HADDR(cmsdk_apb_subsystem_0_PADDR),
        .HCLK(ARM_SOC_0_fclk_ss),
        .HRDATA(cmsdk_ahb_gpio_0_HRDATA),
        .HREADY(cmsdk_apb_subsystem_0_HREADYOUT),
        .HREADYOUT(cmsdk_ahb_gpio_0_HREADYOUT),
        .HRESETn(ARM_SOC_0_srs_rst_ss),
        .HSEL(cmsdk_apb_subsystem_0_ext12_psel),
        .HSIZE(cmsdk_mcu_mtx4x2_lite_0_HSIZEM1),
        .HTRANS(cmsdk_mcu_mtx4x2_lite_0_HTRANSM1),
        .HWDATA(cmsdk_apb_subsystem_0_PWDATA),
        .HWRITE(cmsdk_apb_subsystem_0_PWRITE),
        .PORTIN(PORTIN_1),
        .PORTOUT(cmsdk_ahb_gpio_0_PORTOUT));
  design_1_cmsdk_apb_subsystem_0_0 cmsdk_apb_subsystem_0
       (.HADDR(cmsdk_mcu_mtx4x2_lite_0_HADDRM1[15:0]),
        .HCLK(ARM_SOC_0_fclk_ss),
        .HPROT(cmsdk_mcu_mtx4x2_lite_0_HPROTM1),
        .HRDATA(cmsdk_apb_subsystem_0_HRDATA),
        .HREADY(cmsdk_mcu_mtx4x2_lite_0_HREADYMUXM1),
        .HREADYOUT(cmsdk_apb_subsystem_0_HREADYOUT),
        .HRESETn(ARM_SOC_0_srs_rst_ss),
        .HRESP(cmsdk_apb_subsystem_0_HRESP),
        .HSEL(cmsdk_mcu_mtx4x2_lite_0_HSELM1),
        .HSIZE(cmsdk_mcu_mtx4x2_lite_0_HSIZEM1),
        .HTRANS(cmsdk_mcu_mtx4x2_lite_0_HTRANSM1),
        .HWDATA(cmsdk_mcu_mtx4x2_lite_0_HWDATAM1),
        .HWRITE(cmsdk_mcu_mtx4x2_lite_0_HWRITEM1),
        .PADDR(cmsdk_apb_subsystem_0_PADDR),
        .PCLK(ARM_SOC_0_fclk_ss),
        .PCLKEN(1'b0),
        .PCLKG(1'b0),
        .PRESETn(ARM_SOC_0_srs_rst_ss),
        .PWDATA(cmsdk_apb_subsystem_0_PWDATA),
        .PWRITE(cmsdk_apb_subsystem_0_PWRITE),
        .ext12_prdata(cmsdk_ahb_gpio_0_HRDATA),
        .ext12_pready(cmsdk_ahb_gpio_0_HREADYOUT),
        .ext12_psel(cmsdk_apb_subsystem_0_ext12_psel),
        .ext12_pslverr(1'b0),
        .ext13_prdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ext13_pready(1'b0),
        .ext13_pslverr(1'b0),
        .ext14_prdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ext14_pready(1'b0),
        .ext14_pslverr(1'b0),
        .ext15_prdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ext15_pready(1'b0),
        .ext15_pslverr(1'b0),
        .timer0_extin(1'b0),
        .timer1_extin(1'b0),
        .uart0_rxd(uart0_rxd_1),
        .uart0_txd(cmsdk_apb_subsystem_0_uart0_txd),
        .uart1_rxd(1'b0),
        .uart2_rxd(1'b0));
  design_1_cmsdk_mcu_mtx4x2_lite_0_0 cmsdk_mcu_mtx4x2_lite_0
       (.HADDRM0(cmsdk_mcu_mtx4x2_lite_0_HADDRM0),
        .HADDRM1(cmsdk_mcu_mtx4x2_lite_0_HADDRM1),
        .HADDRS0(ARM_SOC_0_haddrs),
        .HADDRS1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HADDRS2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HADDRS3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HAUSERS0({1'b0,1'b0,1'b0}),
        .HAUSERS1({1'b0,1'b0,1'b0}),
        .HAUSERS2({1'b0,1'b0,1'b0}),
        .HAUSERS3({1'b0,1'b0,1'b0}),
        .HBURSTS0(ARM_SOC_0_hbursts),
        .HBURSTS1({1'b0,1'b0,1'b0}),
        .HBURSTS2({1'b0,1'b0,1'b0}),
        .HBURSTS3({1'b0,1'b0,1'b0}),
        .HCLK(ARM_SOC_0_fclk_ss),
        .HMASTLOCKS0(ARM_SOC_0_hmastlocks),
        .HMASTLOCKS1(1'b0),
        .HMASTLOCKS2(1'b0),
        .HMASTLOCKS3(1'b0),
        .HPROTM1(cmsdk_mcu_mtx4x2_lite_0_HPROTM1),
        .HPROTS0(ARM_SOC_0_hprots),
        .HPROTS1({1'b0,1'b0,1'b0,1'b0}),
        .HPROTS2({1'b0,1'b0,1'b0,1'b0}),
        .HPROTS3({1'b0,1'b0,1'b0,1'b0}),
        .HRDATAM0(uAHB2RAM_0_hrdatas),
        .HRDATAM1(cmsdk_apb_subsystem_0_HRDATA),
        .HRDATAS0(cmsdk_mcu_mtx4x2_lite_0_HRDATAS0),
        .HREADYMUXM1(cmsdk_mcu_mtx4x2_lite_0_HREADYMUXM1),
        .HREADYOUTM0(uAHB2RAM_0_hreadyss),
        .HREADYOUTM1(cmsdk_apb_subsystem_0_HREADYOUT),
        .HREADYS0(cmsdk_mcu_mtx4x2_lite_0_HREADYS0),
        .HRESETn(ARM_SOC_0_srs_rst_ss),
        .HRESPM0(1'b0),
        .HRESPM1(cmsdk_apb_subsystem_0_HRESP),
        .HRUSERM0({1'b0,1'b0,1'b0}),
        .HRUSERM1({1'b0,1'b0,1'b0}),
        .HSELM0(cmsdk_mcu_mtx4x2_lite_0_HSELM0),
        .HSELM1(cmsdk_mcu_mtx4x2_lite_0_HSELM1),
        .HSIZEM0(cmsdk_mcu_mtx4x2_lite_0_HSIZEM0),
        .HSIZEM1(cmsdk_mcu_mtx4x2_lite_0_HSIZEM1),
        .HSIZES0(ARM_SOC_0_hsizes),
        .HSIZES1({1'b0,1'b0,1'b0}),
        .HSIZES2({1'b0,1'b0,1'b0}),
        .HSIZES3({1'b0,1'b0,1'b0}),
        .HTRANSM0(cmsdk_mcu_mtx4x2_lite_0_HTRANSM0),
        .HTRANSM1(cmsdk_mcu_mtx4x2_lite_0_HTRANSM1),
        .HTRANSS0(ARM_SOC_0_htranss),
        .HTRANSS1({1'b0,1'b0}),
        .HTRANSS2({1'b0,1'b0}),
        .HTRANSS3({1'b0,1'b0}),
        .HWDATAM0(cmsdk_mcu_mtx4x2_lite_0_HWDATAM0),
        .HWDATAM1(cmsdk_mcu_mtx4x2_lite_0_HWDATAM1),
        .HWDATAS0(ARM_SOC_0_hwdatas),
        .HWDATAS1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HWDATAS2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HWDATAS3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HWRITEM0(cmsdk_mcu_mtx4x2_lite_0_HWRITEM0),
        .HWRITEM1(cmsdk_mcu_mtx4x2_lite_0_HWRITEM1),
        .HWRITES0(ARM_SOC_0_hwrites),
        .HWRITES1(1'b0),
        .HWRITES2(1'b0),
        .HWRITES3(1'b0),
        .HWUSERS0({1'b0,1'b0,1'b0}),
        .HWUSERS1({1'b0,1'b0,1'b0}),
        .HWUSERS2({1'b0,1'b0,1'b0}),
        .HWUSERS3({1'b0,1'b0,1'b0}),
        .REMAP({1'b0,1'b0,1'b0,1'b0}),
        .SCANENABLE(1'b0),
        .SCANINHCLK(1'b0));
  design_1_uAHB2RAM_0_6 uAHB2RAM_0
       (.fclk(ARM_SOC_0_fclk_ss),
        .haddrs(cmsdk_mcu_mtx4x2_lite_0_HADDRM0),
        .hrdatas(uAHB2RAM_0_hrdatas),
        .hreadyss(uAHB2RAM_0_hreadyss),
        .hsel(cmsdk_mcu_mtx4x2_lite_0_HSELM0),
        .hsizes(cmsdk_mcu_mtx4x2_lite_0_HSIZEM0),
        .htranss(cmsdk_mcu_mtx4x2_lite_0_HTRANSM0),
        .hwdatas(cmsdk_mcu_mtx4x2_lite_0_HWDATAM0),
        .hwrites(cmsdk_mcu_mtx4x2_lite_0_HWRITEM0),
        .reg_sys_rst_n(ARM_SOC_0_srs_rst_ss));
endmodule
