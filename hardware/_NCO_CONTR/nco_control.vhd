library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nco_control is
	port(
		f_sino	  : in signed(13 downto 0);
		clk        : in  std_logic; -- 50 MHz
		reset      : in  std_logic;
		sw_dataout : in  std_logic;
	
		f_sino_up	: out unsigned(13 downto 0);
		meandr0ph	: out std_logic;
		meandr90ph	: out std_logic
	);
end entity;

architecture rtl of nco_control is
	
	constant N : integer :=1073741824; --2**30
	signal f_sino_pr : signed(13 downto 0);
	signal freq 	: integer;
	signal m_buf   : std_logic;
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
			meandr90ph <= m_buf;
			f_sino_pr <= f_sino;
			if f_sino_pr < f_sino then
				m_buf <= '0';
			elsif f_sino_pr > f_sino then
				m_buf <= '1';
			else
				meandr90ph <= m_buf;
			end if;
			
			if sw_dataout = '1' then
				f_sino_up <= unsigned(f_sino + to_signed(8192, 14));
			else 
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