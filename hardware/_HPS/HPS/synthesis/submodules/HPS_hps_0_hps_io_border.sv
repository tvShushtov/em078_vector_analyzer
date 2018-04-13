// (C) 2001-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module HPS_hps_0_hps_io_border(
// memory
  output wire [15 - 1 : 0 ] mem_a
 ,output wire [3 - 1 : 0 ] mem_ba
 ,output wire [1 - 1 : 0 ] mem_ck
 ,output wire [1 - 1 : 0 ] mem_ck_n
 ,output wire [1 - 1 : 0 ] mem_cke
 ,output wire [1 - 1 : 0 ] mem_cs_n
 ,output wire [1 - 1 : 0 ] mem_ras_n
 ,output wire [1 - 1 : 0 ] mem_cas_n
 ,output wire [1 - 1 : 0 ] mem_we_n
 ,output wire [1 - 1 : 0 ] mem_reset_n
 ,inout wire [32 - 1 : 0 ] mem_dq
 ,inout wire [4 - 1 : 0 ] mem_dqs
 ,inout wire [4 - 1 : 0 ] mem_dqs_n
 ,output wire [1 - 1 : 0 ] mem_odt
 ,output wire [4 - 1 : 0 ] mem_dm
 ,input wire [1 - 1 : 0 ] oct_rzqin
// hps_io
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_CMD
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D0
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D1
 ,output wire [1 - 1 : 0 ] hps_io_sdio_inst_CLK
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D2
 ,inout wire [1 - 1 : 0 ] hps_io_sdio_inst_D3
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_CLK
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_MOSI
 ,input wire [1 - 1 : 0 ] hps_io_spim1_inst_MISO
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_SS0
 ,input wire [1 - 1 : 0 ] hps_io_uart0_inst_RX
 ,output wire [1 - 1 : 0 ] hps_io_uart0_inst_TX
 ,inout wire [1 - 1 : 0 ] hps_io_i2c0_inst_SDA
 ,inout wire [1 - 1 : 0 ] hps_io_i2c0_inst_SCL
 ,inout wire [1 - 1 : 0 ] hps_io_i2c1_inst_SDA
 ,inout wire [1 - 1 : 0 ] hps_io_i2c1_inst_SCL
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO09
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO35
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO40
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO53
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO54
 ,inout wire [1 - 1 : 0 ] hps_io_gpio_inst_GPIO61
);

assign hps_io_sdio_inst_CMD = intermediate[1] ? intermediate[0] : 'z;
assign hps_io_sdio_inst_D0 = intermediate[3] ? intermediate[2] : 'z;
assign hps_io_sdio_inst_D1 = intermediate[5] ? intermediate[4] : 'z;
assign hps_io_sdio_inst_D2 = intermediate[7] ? intermediate[6] : 'z;
assign hps_io_sdio_inst_D3 = intermediate[9] ? intermediate[8] : 'z;
assign hps_io_spim1_inst_MOSI = intermediate[11] ? intermediate[10] : 'z;
assign hps_io_i2c0_inst_SDA = intermediate[12] ? '0 : 'z;
assign hps_io_i2c0_inst_SCL = intermediate[13] ? '0 : 'z;
assign hps_io_i2c1_inst_SDA = intermediate[14] ? '0 : 'z;
assign hps_io_i2c1_inst_SCL = intermediate[15] ? '0 : 'z;
assign hps_io_gpio_inst_GPIO09 = intermediate[17] ? intermediate[16] : 'z;
assign hps_io_gpio_inst_GPIO35 = intermediate[19] ? intermediate[18] : 'z;
assign hps_io_gpio_inst_GPIO40 = intermediate[21] ? intermediate[20] : 'z;
assign hps_io_gpio_inst_GPIO53 = intermediate[23] ? intermediate[22] : 'z;
assign hps_io_gpio_inst_GPIO54 = intermediate[25] ? intermediate[24] : 'z;
assign hps_io_gpio_inst_GPIO61 = intermediate[27] ? intermediate[26] : 'z;

wire [28 - 1 : 0] intermediate;

wire [102 - 1 : 0] floating;

cyclonev_hps_peripheral_sdmmc sdio_inst(
 .SDMMC_DATA_I({
    hps_io_sdio_inst_D3[0:0] // 3:3
   ,hps_io_sdio_inst_D2[0:0] // 2:2
   ,hps_io_sdio_inst_D1[0:0] // 1:1
   ,hps_io_sdio_inst_D0[0:0] // 0:0
  })
,.SDMMC_CMD_O({
    intermediate[0:0] // 0:0
  })
,.SDMMC_CCLK({
    hps_io_sdio_inst_CLK[0:0] // 0:0
  })
,.SDMMC_DATA_O({
    intermediate[8:8] // 3:3
   ,intermediate[6:6] // 2:2
   ,intermediate[4:4] // 1:1
   ,intermediate[2:2] // 0:0
  })
,.SDMMC_CMD_OE({
    intermediate[1:1] // 0:0
  })
,.SDMMC_CMD_I({
    hps_io_sdio_inst_CMD[0:0] // 0:0
  })
,.SDMMC_DATA_OE({
    intermediate[9:9] // 3:3
   ,intermediate[7:7] // 2:2
   ,intermediate[5:5] // 1:1
   ,intermediate[3:3] // 0:0
  })
);


cyclonev_hps_peripheral_spi_master spim1_inst(
 .SPI_MASTER_RXD({
    hps_io_spim1_inst_MISO[0:0] // 0:0
  })
,.SPI_MASTER_TXD({
    intermediate[10:10] // 0:0
  })
,.SPI_MASTER_SSI_OE_N({
    intermediate[11:11] // 0:0
  })
,.SPI_MASTER_SCLK({
    hps_io_spim1_inst_CLK[0:0] // 0:0
  })
,.SPI_MASTER_SS_0_N({
    hps_io_spim1_inst_SS0[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_uart uart0_inst(
 .UART_RXD({
    hps_io_uart0_inst_RX[0:0] // 0:0
  })
,.UART_TXD({
    hps_io_uart0_inst_TX[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_i2c i2c0_inst(
 .I2C_DATA({
    hps_io_i2c0_inst_SDA[0:0] // 0:0
  })
,.I2C_CLK({
    hps_io_i2c0_inst_SCL[0:0] // 0:0
  })
,.I2C_DATA_OE({
    intermediate[12:12] // 0:0
  })
,.I2C_CLK_OE({
    intermediate[13:13] // 0:0
  })
);


cyclonev_hps_peripheral_i2c i2c1_inst(
 .I2C_DATA({
    hps_io_i2c1_inst_SDA[0:0] // 0:0
  })
,.I2C_CLK({
    hps_io_i2c1_inst_SCL[0:0] // 0:0
  })
,.I2C_DATA_OE({
    intermediate[14:14] // 0:0
  })
,.I2C_CLK_OE({
    intermediate[15:15] // 0:0
  })
);


cyclonev_hps_peripheral_gpio gpio_inst(
 .GPIO1_PORTA_I({
    hps_io_gpio_inst_GPIO54[0:0] // 25:25
   ,hps_io_gpio_inst_GPIO53[0:0] // 24:24
   ,floating[11:0] // 23:12
   ,hps_io_gpio_inst_GPIO40[0:0] // 11:11
   ,floating[15:12] // 10:7
   ,hps_io_gpio_inst_GPIO35[0:0] // 6:6
   ,floating[21:16] // 5:0
  })
,.GPIO1_PORTA_OE({
    intermediate[25:25] // 25:25
   ,intermediate[23:23] // 24:24
   ,floating[33:22] // 23:12
   ,intermediate[21:21] // 11:11
   ,floating[37:34] // 10:7
   ,intermediate[19:19] // 6:6
   ,floating[43:38] // 5:0
  })
,.GPIO2_PORTA_O({
    intermediate[26:26] // 3:3
   ,floating[46:44] // 2:0
  })
,.GPIO0_PORTA_O({
    intermediate[16:16] // 9:9
   ,floating[55:47] // 8:0
  })
,.GPIO2_PORTA_I({
    hps_io_gpio_inst_GPIO61[0:0] // 3:3
   ,floating[58:56] // 2:0
  })
,.GPIO2_PORTA_OE({
    intermediate[27:27] // 3:3
   ,floating[61:59] // 2:0
  })
,.GPIO0_PORTA_I({
    hps_io_gpio_inst_GPIO09[0:0] // 9:9
   ,floating[70:62] // 8:0
  })
,.GPIO0_PORTA_OE({
    intermediate[17:17] // 9:9
   ,floating[79:71] // 8:0
  })
,.GPIO1_PORTA_O({
    intermediate[24:24] // 25:25
   ,intermediate[22:22] // 24:24
   ,floating[91:80] // 23:12
   ,intermediate[20:20] // 11:11
   ,floating[95:92] // 10:7
   ,intermediate[18:18] // 6:6
   ,floating[101:96] // 5:0
  })
);


hps_sdram hps_sdram_inst(
 .mem_dq({
    mem_dq[31:0] // 31:0
  })
,.mem_odt({
    mem_odt[0:0] // 0:0
  })
,.mem_ras_n({
    mem_ras_n[0:0] // 0:0
  })
,.mem_dqs_n({
    mem_dqs_n[3:0] // 3:0
  })
,.mem_dqs({
    mem_dqs[3:0] // 3:0
  })
,.mem_dm({
    mem_dm[3:0] // 3:0
  })
,.mem_we_n({
    mem_we_n[0:0] // 0:0
  })
,.mem_cas_n({
    mem_cas_n[0:0] // 0:0
  })
,.mem_ba({
    mem_ba[2:0] // 2:0
  })
,.mem_a({
    mem_a[14:0] // 14:0
  })
,.mem_cs_n({
    mem_cs_n[0:0] // 0:0
  })
,.mem_ck({
    mem_ck[0:0] // 0:0
  })
,.mem_cke({
    mem_cke[0:0] // 0:0
  })
,.oct_rzqin({
    oct_rzqin[0:0] // 0:0
  })
,.mem_reset_n({
    mem_reset_n[0:0] // 0:0
  })
,.mem_ck_n({
    mem_ck_n[0:0] // 0:0
  })
);

endmodule

