library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nco_control is
	generic(
		ACCUM_WIDTH : integer := 30;
		CLK_NCO	 	: integer := 50000000
		
	);
	port(
		f_sino	: in signed(13 downto 0);
		clk      : in  std_logic; -- 50 MHz
		reset    : in  std_logic;
		run      : in  std_logic;
	
		f_sino_up	: out unsigned(13 downto 0);
		nco_clken 	: out std_logic;
		meandr0ph	: out std_logic;
		meandr90ph	: out std_logic
	);
end entity;

architecture rtl of nco_control is
	
	constant N : integer :=1073741824; --2**30
	signal f_sino_pr : signed(13 downto 0);
	signal freq 	: integer;
begin
	process(clk, reset) is
	begin
		if reset = '1' then
			f_sino_pr <= (others => '0');
			meandr0ph <= '0';
			meandr90ph <= '0';
			f_sino_up <= (others => '0');
		elsif rising_edge(clk) then
			f_sino_pr <= f_sino;
			
			if f_sino_pr > f_sino then
				meandr90ph <= '1';
			else
				meandr90ph <= '0';
			end if;
			
			if run = '1' then
				nco_clken <= '1';
				f_sino_up <= unsigned(f_sino + to_signed(8192, 14));
			else 
				nco_clken <= '0';
				f_sino_up <= (others => '0');
			end if;
			
			if ((f_sino_pr < 0) and (f_sino >= 0)) then
				meandr0ph <= '1';
			end if;
			if ((f_sino_pr > 0) and (f_sino <= 0)) then
				meandr0ph <= '0';
			end if;
		end if;
	end process;
end architecture rtl;