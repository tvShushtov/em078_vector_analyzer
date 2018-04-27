	component ATAN2 is
		port (
			areset : in  std_logic                     := 'X';             -- reset
			clk    : in  std_logic                     := 'X';             -- clk
			q      : out std_logic_vector(17 downto 0);                    -- q
			x      : in  std_logic_vector(11 downto 0) := (others => 'X'); -- x
			y      : in  std_logic_vector(11 downto 0) := (others => 'X')  -- y
		);
	end component ATAN2;

	u0 : component ATAN2
		port map (
			areset => CONNECTED_TO_areset, -- areset.reset
			clk    => CONNECTED_TO_clk,    --    clk.clk
			q      => CONNECTED_TO_q,      --      q.q
			x      => CONNECTED_TO_x,      --      x.x
			y      => CONNECTED_TO_y       --      y.y
		);

