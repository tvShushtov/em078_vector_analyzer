
module HPS (
	button_pio_external_connection_export,
	clk_lw_clk,
	clk_sdram_clk,
	dipsw_pio_external_connection_export,
	hps_0_f2h_sdram0_data_address,
	hps_0_f2h_sdram0_data_burstcount,
	hps_0_f2h_sdram0_data_waitrequest,
	hps_0_f2h_sdram0_data_readdata,
	hps_0_f2h_sdram0_data_readdatavalid,
	hps_0_f2h_sdram0_data_read,
	hps_0_hps_io_hps_io_sdio_inst_CMD,
	hps_0_hps_io_hps_io_sdio_inst_D0,
	hps_0_hps_io_hps_io_sdio_inst_D1,
	hps_0_hps_io_hps_io_sdio_inst_CLK,
	hps_0_hps_io_hps_io_sdio_inst_D2,
	hps_0_hps_io_hps_io_sdio_inst_D3,
	hps_0_hps_io_hps_io_uart0_inst_RX,
	hps_0_hps_io_hps_io_uart0_inst_TX,
	hps_0_hps_io_hps_io_gpio_inst_GPIO53,
	hps_0_hps_io_hps_io_gpio_inst_GPIO54,
	led_pio_external_connection_export,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_lw_reset_n,
	reset_sdram_reset_n,
	va_gen_sm_external_connection_export,
	hdmi_pio_ready_export,
	hdmi_pio_videoaddress_export,
	va_dataout_export,
	va_data_ready_export);	

	input		button_pio_external_connection_export;
	input		clk_lw_clk;
	input		clk_sdram_clk;
	input	[3:0]	dipsw_pio_external_connection_export;
	input	[28:0]	hps_0_f2h_sdram0_data_address;
	input	[7:0]	hps_0_f2h_sdram0_data_burstcount;
	output		hps_0_f2h_sdram0_data_waitrequest;
	output	[63:0]	hps_0_f2h_sdram0_data_readdata;
	output		hps_0_f2h_sdram0_data_readdatavalid;
	input		hps_0_f2h_sdram0_data_read;
	inout		hps_0_hps_io_hps_io_sdio_inst_CMD;
	inout		hps_0_hps_io_hps_io_sdio_inst_D0;
	inout		hps_0_hps_io_hps_io_sdio_inst_D1;
	output		hps_0_hps_io_hps_io_sdio_inst_CLK;
	inout		hps_0_hps_io_hps_io_sdio_inst_D2;
	inout		hps_0_hps_io_hps_io_sdio_inst_D3;
	input		hps_0_hps_io_hps_io_uart0_inst_RX;
	output		hps_0_hps_io_hps_io_uart0_inst_TX;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO53;
	inout		hps_0_hps_io_hps_io_gpio_inst_GPIO54;
	output	[7:0]	led_pio_external_connection_export;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_lw_reset_n;
	input		reset_sdram_reset_n;
	output	[31:0]	va_gen_sm_external_connection_export;
	output		hdmi_pio_ready_export;
	output	[31:0]	hdmi_pio_videoaddress_export;
	input	[31:0]	va_dataout_export;
	input		va_data_ready_export;
endmodule
