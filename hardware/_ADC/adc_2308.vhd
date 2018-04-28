----------------------------------------------------
--        Name : adc_2308
-- Description : ADC Control (DE10-Nano)
--     Created : 2018.04.06
--    Revision : 1.0
--      Author : dsmirnov
--        Note : -
----------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adc_2308 is
	generic(
		NUM_CANNEL : integer := 2       -- 1,2...8
	);
	port(
		clk      : in  std_logic; -- 50 MHz
		reset    : in  std_logic;
		run      : in  std_logic;

		adc_clk  	 : out std_logic;
		adc_convst   : out std_logic;
		adc_sdi 		 : out std_logic;
		adc_sdo  	 : in  std_logic;

		dataout1  : out std_logic_vector(11 downto 0);
		dataout2  : out std_logic_vector(11 downto 0);
		ready    : out std_logic;

		busy     : out std_logic
	);
end entity;

architecture rtl of adc_2308 is
	constant ADC_CLK_HALF_CYCLE : integer := 8; -- 50MHz/(8*2)=3,125MHz
	constant MAX_CNT_BITS       : integer := 12; -- ADC SPI Data Length - 1


	-- PROC_FREQ_CNT
	signal cnt_freq   : integer range 0 to (ADC_CLK_HALF_CYCLE - 1);
	signal strob_freq : std_logic;

	-- PROC_GEN
	type type_sm is (st_idle, st_conv, st_fclk, st_rclk, st_data1, st_data2, st_end);
	signal sm : type_sm;

	type type_dataout_sig is array (0 to (NUM_CANNEL - 1)) of std_logic_vector(11 downto 0);

	signal adc_datain  : std_logic_vector(11 downto 0);
	signal adc_dataout : std_logic_vector(11 downto 0);
	signal dataout_sig : type_dataout_sig;
	signal go_cnt_freq : std_logic;
	signal counter1	 : integer;
	signal cnt_bits    : integer range 0 to 11;
	signal cnt_ch_in   : integer range 0 to (NUM_CANNEL - 1);

begin
	process(clk, reset) is
	begin
		if reset = '1' then
			adc_clk <= '0';
			adc_sdi <= '0';
			ready <= '0';
			busy <= '0';
			cnt_bits <= 0;
			counter1 <= 0;
			cnt_ch_in <= 0;
			sm <= st_idle;
			adc_convst <= '1';
		elsif rising_edge(clk) then
			case sm is 
				when st_idle =>
					adc_convst <= '1';
					ready <= '0';
					if cnt_ch_in = 1 then
						adc_dataout <= "100010000000"; -- CH0 unipolar
					else
						adc_dataout <= "110010000000"; -- CH1 unipolar
					end if;
					if run = '1' then
						sm <= st_conv;
					end if;
					
				when st_conv =>	
					if counter1 = 80 then --1.6mks conversion time
						busy <= '1';
						sm <= st_rclk;
						counter1 <= 0;
						adc_sdi <= adc_dataout(11-cnt_bits);
						adc_convst <= '0';
					else
						counter1 <= counter1 + 1;
					end if;
					
				when st_rclk =>
					adc_clk <= '1';
					adc_sdi <= adc_dataout(11-cnt_bits);
					if counter1 = 1 then --25MHz
						if cnt_bits = 11 then
							sm <= st_data1;
						else
							sm <= st_fclk;
							counter1 <= 0;
						end if;
					else
						counter1 <= counter1 + 1;
					end if;
					
				when st_fclk =>
					adc_clk <= '0';
					adc_datain(11-cnt_bits) <= adc_sdo;
					if counter1 = 1 then --25MHz
						sm <= st_rclk;
						counter1 <= 0;
						cnt_bits <= cnt_bits + 1;
					else
						counter1 <= counter1 + 1;
					end if;
					
				when st_data1 =>
					adc_clk <= '0';
					if cnt_ch_in = 0 then 
						dataout1 <= adc_datain;
						cnt_ch_in <= 1;
					else
						dataout2 <= adc_datain;
						ready <= '1';
						cnt_ch_in <= 0;
					end if;
					counter1 <= 0;
					cnt_bits <= 0;
					sm <= st_idle;
					adc_convst <= '1';
					busy <= '0';
				when others =>
					null;
			end case;
			
		end if;
	end process;
end architecture rtl;