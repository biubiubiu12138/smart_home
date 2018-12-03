`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/30 19:51:09
// Design Name: 
// Module Name: uAHB2RAM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uAHB2RAM(
input wire hsel,
input wire fclk,
input wire reg_sys_rst_n,
output wire hreadyss,
input wire [31:0]haddrs,
input wire [1:0]htranss,
input wire hwrites,
input wire [2:0]hsizes,
input wire [31:0]hwdatas,
output wire [31:0]hrdatas
    );
      /////////////////////////////////////////////////////////////////////////////
     // Connect System Bus to RAM and Peripherals
     /////////////////////////////////////////////////////////////////////////////
  
    
  
     // AHB-Lite RAM
     AHB2MEM uAHB2RAM (
        .HSEL(hsel),
        .HCLK(fclk), 
        .HRESETn(reg_sys_rst_n), 
        .HREADY(hreadyss),     
        .HADDR(haddrs),
        .HTRANS(htranss), 
        .HWRITE(hwrites),
        .HSIZE(hsizes),
        .HWDATA(hwdatas), 
        .HRDATA(hrdatas), 
        .HREADYOUT(hreadyss)
     );

endmodule
