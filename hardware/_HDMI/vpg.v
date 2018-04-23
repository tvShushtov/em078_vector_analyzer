// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------

`include "vpg.h"

module vpg(
	vgaclk,
	reset_n,
	//mode,
	//mode_change,
	//vpg_pclk,
	vpg_de,
	vpg_hs,
	vpg_vs,
	vpg_r,
	vpg_g,
	vpg_b,
	framestart,
	i_rgb,
	readreq
);

input					vgaclk;
input					reset_n;
//input		[3:0]		mode;
//input					mode_change;
//output				vpg_pclk;
output	reg			vpg_de;
output	reg			vpg_hs;
output	reg			vpg_vs;
output	reg [7:0]		vpg_r;
output	reg [7:0]		vpg_g;
output	reg [7:0]		vpg_b;
input [23:0] i_rgb;
output framestart;
output readreq;

reg m_de;
reg m_hs;
reg m_vs;
reg [7:0] m_r;
reg [7:0] m_g;
reg [7:0] m_b;

reg mm_de;
reg mm_hs;
reg mm_vs;
reg [7:0] mm_r;
reg [7:0] mm_g;
reg [7:0] mm_b;


reg mmm_de;
reg mmm_hs;
reg mmm_vs;
reg [7:0] mmm_r;
reg [7:0] mmm_g;
reg [7:0] mmm_b;

wire mmmm_de;
wire mmmm_hs;
wire mmmm_vs;
wire [7:0] mmmm_r;
wire [7:0] mmmm_g;
wire [7:0] mmmm_b;
//=======================================================
//  Signal declarations
//=======================================================
//=============== PLL reconfigure
//wire [63:0] reconfig_to_pll, reconfig_from_pll;
//wire        gen_clk_locked;
//wire [31:0] mgmt_readdata, mgmt_writedata;
//wire        mgmt_read, mgmt_write;
//wire [5:0]  mgmt_address;
//============= assign timing constant  
wire  [11:0] h_total, h_sync, h_start, h_end; 
wire  [11:0] v_total, v_sync, v_start, v_end; 
wire  [11:0] v_active_14, v_active_24, v_active_34; 


assign			{h_total, h_sync, h_start, h_end} = {12'd1343, 12'd135, 12'd293, 12'd1317}; 
assign			{v_total, v_sync, v_start, v_end} = {12'd805, 12'd5, 12'd34, 12'd802}; 
assign 			{v_active_14, v_active_24, v_active_34} = {12'd226, 12'd418, 12'd610};
//=======================================================
//  Sub-module
//=======================================================
//=============== PLL reconfigure
assign readreq = mmmm_de;
//=============== pattern generator according to vga timing
vga_generator u_vga_generator (                                    
	.clk(vgaclk),                
	.reset_n(reset_n),                                                
	.h_total(h_total),           
	.h_sync(h_sync),           
	.h_start(h_start),             
	.h_end(h_end),                                                    
	.v_total(v_total),           
	.v_sync(v_sync),            
	.v_start(v_start),           
	.v_end(v_end), 
	.v_active_14(v_active_14), 
	.v_active_24(v_active_24), 
	.v_active_34(v_active_34), 
	.i_rgb(i_rgb),
	.vga_hs(mmmm_hs),
	.vga_vs(mmmm_vs),           
	.vga_de(mmmm_de),
	.vga_r(mmmm_r),
	.vga_g(mmmm_g),
	.framestart(framestart), // the only two to not register
	
	.vga_b(mmmm_b) );


always@(posedge vgaclk)
begin

mmm_de <= mmmm_de;
mmm_vs <= mmmm_vs;
mmm_hs <= mmmm_hs;
mmm_r  <= mmmm_r;
mmm_g  <= mmmm_g;
mmm_b  <= mmmm_b;

mm_de <= mmm_de;
mm_vs <= mmm_vs;
mm_hs <= mmm_hs;
mm_r  <= mmm_r;
mm_g  <= mmm_g;
mm_b  <= mmm_b;

m_de <= mm_de;
m_vs <= mm_vs;
m_hs <= mm_hs;
m_r  <= mm_r;
m_g  <= mm_g;
m_b  <= mm_b;



vpg_de <= m_de;
vpg_vs <= m_vs;
vpg_hs <= m_hs;
vpg_r <= m_r;
vpg_g <= m_g;
vpg_b <= m_b;

end
//=======================================================
//  Structural coding
//=======================================================
//============= assign timing constant  
//h_total : total - 1
//h_sync : sync - 1
//h_start : sync + back porch - 1 - 2(delay)
//h_end : h_start + active
//v_total : total - 1
//v_sync : sync - 1
//v_start : sync + back porch - 1
//v_end : v_start + active
//v_active_14 : v_start + 1/4 active
//v_active_24 : v_start + 2/4 active
//v_active_34 : v_start + 3/4 active

		




endmodule