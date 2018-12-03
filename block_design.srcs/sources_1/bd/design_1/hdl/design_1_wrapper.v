//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Sun Jun 10 19:02:05 2018
//Host        : BIUBIUBIU running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input CLK;
  input [15:0]PORTIN;
  output [15:0]PORTOUT;
  input RESET;
  input TCK;
  input TDI;
  output TDO;
  inout TMS;
  input uart0_rxd;
  output uart0_txd;

  wire CLK;
  wire [15:0]PORTIN;
  wire [15:0]PORTOUT;
  wire RESET;
  wire TCK;
  wire TDI;
  wire TDO;
  wire TMS;
  wire uart0_rxd;
  wire uart0_txd;

  design_1 design_1_i
       (.CLK(CLK),
        .PORTIN(PORTIN),
        .PORTOUT(PORTOUT),
        .RESET(RESET),
        .TCK(TCK),
        .TDI(TDI),
        .TDO(TDO),
        .TMS(TMS),
        .uart0_rxd(uart0_rxd),
        .uart0_txd(uart0_txd));
endmodule
