-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;

entity lw2dma_sync is

	generic
	( 
		stages: natural := 4
	);
	
	port 
	(
		dmaclk		: in std_logic;
		i_ready	: in std_logic;
		i_addr	: in std_logic_vector(31 downto 0);
		o_ready		: out std_logic := '0';
		o_addr		: out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of lw2dma_sync is


	type ready_sr_t is array(stages-1 downto 0) of std_logic;
	type addr_sr_t is array(stages-1 downto 0) of std_logic_vector(31 downto 0);

	-- Declare the RAM signal.	
	signal ready_sr: ready_sr_t := (others => '0');

	-- Register to hold the address 
	signal addr_sr: addr_sr_t := (others => (others => '0'));

begin

	process(dmaclk)
	begin
	if(rising_edge(dmaclk)) then
		ready_sr (0) <= i_ready;
		addr_sr (0) <= i_addr;
		
		ready_sr (stages-1 downto 1) <= ready_sr (stages-2 downto 0);
		addr_sr (stages-1 downto 1) <= addr_sr (stages-2 downto 0);
		
	end if;
	end process;
	o_ready <= ready_sr(stages - 1);
	o_addr <= addr_sr(stages - 1);

end rtl;
