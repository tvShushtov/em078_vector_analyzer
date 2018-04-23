	component HPS is
		port (
			button_pio_external_connection_export : in    std_logic                     := 'X';             -- export
			clk_lw_clk                            : in    std_logic                     := 'X';             -- clk
			clk_sdram_clk                         : in    std_logic                     := 'X';             -- clk
			dipsw_pio_external_connection_export  : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			hps_0_f2h_sdram0_data_address         : in    std_logic_vector(28 downto 0) := (others => 'X'); -- address
			hps_0_f2h_sdram0_data_burstcount      : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- burstcount
			hps_0_f2h_sdram0_data_waitrequest     : out   std_logic;                                        -- waitrequest
			hps_0_f2h_sdram0_data_readdata        : out   std_logic_vector(63 downto 0);                    -- readdata
			hps_0_f2h_sdram0_data_readdatavalid   : out   std_logic;                                        -- readdatavalid
			hps_0_f2h_sdram0_data_read            : in    std_logic                     := 'X';             -- read
			hps_0_hps_io_hps_io_sdio_inst_CMD     : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK     : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3      : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_uart0_inst_RX     : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX     : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_gpio_inst_GPIO53  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54  : inout std_logic                     := 'X';             -- hps_io_gpio_inst_GPIO54
			led_pio_external_connection_export    : out   std_logic_vector(7 downto 0);                     -- export
			memory_mem_a                          : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                         : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                         : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                       : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                        : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                       : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                      : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                      : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                       : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                    : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                         : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                      : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                        : out   std_logic;                                        -- mem_odt
			memory_mem_dm                         : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin                      : in    std_logic                     := 'X';             -- oct_rzqin
			reset_lw_reset_n                      : in    std_logic                     := 'X';             -- reset_n
			reset_sdram_reset_n                   : in    std_logic                     := 'X';             -- reset_n
			va_gen_sm_external_connection_export  : out   std_logic_vector(31 downto 0);                    -- export
			hdmi_pio_ready_export                 : out   std_logic;                                        -- export
			hdmi_pio_videoaddress_export          : out   std_logic_vector(31 downto 0);                    -- export
			va_dataout_export                     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			va_data_ready_export                  : in    std_logic                     := 'X'              -- export
		);
	end component HPS;

	u0 : component HPS
		port map (
			button_pio_external_connection_export => CONNECTED_TO_button_pio_external_connection_export, -- button_pio_external_connection.export
			clk_lw_clk                            => CONNECTED_TO_clk_lw_clk,                            --                         clk_lw.clk
			clk_sdram_clk                         => CONNECTED_TO_clk_sdram_clk,                         --                      clk_sdram.clk
			dipsw_pio_external_connection_export  => CONNECTED_TO_dipsw_pio_external_connection_export,  --  dipsw_pio_external_connection.export
			hps_0_f2h_sdram0_data_address         => CONNECTED_TO_hps_0_f2h_sdram0_data_address,         --          hps_0_f2h_sdram0_data.address
			hps_0_f2h_sdram0_data_burstcount      => CONNECTED_TO_hps_0_f2h_sdram0_data_burstcount,      --                               .burstcount
			hps_0_f2h_sdram0_data_waitrequest     => CONNECTED_TO_hps_0_f2h_sdram0_data_waitrequest,     --                               .waitrequest
			hps_0_f2h_sdram0_data_readdata        => CONNECTED_TO_hps_0_f2h_sdram0_data_readdata,        --                               .readdata
			hps_0_f2h_sdram0_data_readdatavalid   => CONNECTED_TO_hps_0_f2h_sdram0_data_readdatavalid,   --                               .readdatavalid
			hps_0_f2h_sdram0_data_read            => CONNECTED_TO_hps_0_f2h_sdram0_data_read,            --                               .read
			hps_0_hps_io_hps_io_sdio_inst_CMD     => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CMD,     --                   hps_0_hps_io.hps_io_sdio_inst_CMD
			hps_0_hps_io_hps_io_sdio_inst_D0      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D0,      --                               .hps_io_sdio_inst_D0
			hps_0_hps_io_hps_io_sdio_inst_D1      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D1,      --                               .hps_io_sdio_inst_D1
			hps_0_hps_io_hps_io_sdio_inst_CLK     => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_CLK,     --                               .hps_io_sdio_inst_CLK
			hps_0_hps_io_hps_io_sdio_inst_D2      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D2,      --                               .hps_io_sdio_inst_D2
			hps_0_hps_io_hps_io_sdio_inst_D3      => CONNECTED_TO_hps_0_hps_io_hps_io_sdio_inst_D3,      --                               .hps_io_sdio_inst_D3
			hps_0_hps_io_hps_io_uart0_inst_RX     => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_RX,     --                               .hps_io_uart0_inst_RX
			hps_0_hps_io_hps_io_uart0_inst_TX     => CONNECTED_TO_hps_0_hps_io_hps_io_uart0_inst_TX,     --                               .hps_io_uart0_inst_TX
			hps_0_hps_io_hps_io_gpio_inst_GPIO53  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO53,  --                               .hps_io_gpio_inst_GPIO53
			hps_0_hps_io_hps_io_gpio_inst_GPIO54  => CONNECTED_TO_hps_0_hps_io_hps_io_gpio_inst_GPIO54,  --                               .hps_io_gpio_inst_GPIO54
			led_pio_external_connection_export    => CONNECTED_TO_led_pio_external_connection_export,    --    led_pio_external_connection.export
			memory_mem_a                          => CONNECTED_TO_memory_mem_a,                          --                         memory.mem_a
			memory_mem_ba                         => CONNECTED_TO_memory_mem_ba,                         --                               .mem_ba
			memory_mem_ck                         => CONNECTED_TO_memory_mem_ck,                         --                               .mem_ck
			memory_mem_ck_n                       => CONNECTED_TO_memory_mem_ck_n,                       --                               .mem_ck_n
			memory_mem_cke                        => CONNECTED_TO_memory_mem_cke,                        --                               .mem_cke
			memory_mem_cs_n                       => CONNECTED_TO_memory_mem_cs_n,                       --                               .mem_cs_n
			memory_mem_ras_n                      => CONNECTED_TO_memory_mem_ras_n,                      --                               .mem_ras_n
			memory_mem_cas_n                      => CONNECTED_TO_memory_mem_cas_n,                      --                               .mem_cas_n
			memory_mem_we_n                       => CONNECTED_TO_memory_mem_we_n,                       --                               .mem_we_n
			memory_mem_reset_n                    => CONNECTED_TO_memory_mem_reset_n,                    --                               .mem_reset_n
			memory_mem_dq                         => CONNECTED_TO_memory_mem_dq,                         --                               .mem_dq
			memory_mem_dqs                        => CONNECTED_TO_memory_mem_dqs,                        --                               .mem_dqs
			memory_mem_dqs_n                      => CONNECTED_TO_memory_mem_dqs_n,                      --                               .mem_dqs_n
			memory_mem_odt                        => CONNECTED_TO_memory_mem_odt,                        --                               .mem_odt
			memory_mem_dm                         => CONNECTED_TO_memory_mem_dm,                         --                               .mem_dm
			memory_oct_rzqin                      => CONNECTED_TO_memory_oct_rzqin,                      --                               .oct_rzqin
			reset_lw_reset_n                      => CONNECTED_TO_reset_lw_reset_n,                      --                       reset_lw.reset_n
			reset_sdram_reset_n                   => CONNECTED_TO_reset_sdram_reset_n,                   --                    reset_sdram.reset_n
			va_gen_sm_external_connection_export  => CONNECTED_TO_va_gen_sm_external_connection_export,  --  va_gen_sm_external_connection.export
			hdmi_pio_ready_export                 => CONNECTED_TO_hdmi_pio_ready_export,                 --                 hdmi_pio_ready.export
			hdmi_pio_videoaddress_export          => CONNECTED_TO_hdmi_pio_videoaddress_export,          --          hdmi_pio_videoaddress.export
			va_dataout_export                     => CONNECTED_TO_va_dataout_export,                     --                     va_dataout.export
			va_data_ready_export                  => CONNECTED_TO_va_data_ready_export                   --                  va_data_ready.export
		);

