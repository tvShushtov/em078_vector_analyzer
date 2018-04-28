library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity va_sm is
    generic(
        ACCUM_WIDTH : integer := 30;
        SQRT_WIDTH  : integer := 18;
        ARCTG_WIDTH : integer := 18
    );
    port(
        clk             : in  std_logic;
        reset           : in  std_logic;

        sw              : in  std_logic_vector(3 downto 0);

        hps_data        : in  std_logic_vector(31 downto 0);
        busy            : out std_logic;

        nco_clken       : out std_logic;
        nco_ph_value    : out std_logic_vector(ACCUM_WIDTH - 1 downto 0);
        dac_data_sw     : out std_logic; -- 0 - 0x00; 1 - NCO

        adc_data_ch1    : in  std_logic_vector(11 downto 0);
        adc_data_ch2    : in  std_logic_vector(11 downto 0);
        adc_run         : in  std_logic;
        va_sm_adc_run   : out std_logic;

        calc_out_ch1    : out std_logic_vector(11 downto 0);
        calc_out_ch2    : out std_logic_vector(11 downto 0);
        calc_sqrt_data  : in  std_logic_vector(SQRT_WIDTH - 1 downto 0);
        calc_arctg_data : in  std_logic_vector(ARCTG_WIDTH - 1 downto 0);

        dataout         : out std_logic_vector(31 downto 0);
        ready           : out std_logic
    );

end va_sm;

architecture rtl of va_sm is
    constant HPS_ADDR_RUN        : std_logic_vector(5 downto 0) := "000001";
    constant HPS_ADDR_FREQ       : std_logic_vector(5 downto 0) := "000010";
    constant HPS_ADDR_LATENCY    : std_logic_vector(5 downto 0) := "000011";
    constant HPS_ADDR_AVERAGE    : std_logic_vector(5 downto 0) := "000100";
    constant HPS_ADDR_ACKNOWLEDG : std_logic_vector(5 downto 0) := "000101";

    constant INIT_HPS_FREQ    : std_logic_vector(31 downto 0) := x"00083127"; --25kGz
    constant INIT_HPS_LATENSY : std_logic_vector(31 downto 0) := x"0000FFFF";
    constant INIT_HPS_AVERAG  : std_logic_vector(31 downto 0) := x"00000000";

    signal hps_freq          : std_logic_vector(31 downto 0);
    signal hps_latency       : std_logic_vector(31 downto 0);
    signal hps_averag        : std_logic_vector(31 downto 0);
    signal hps_run           : std_logic;
    signal highbit_data_prev : std_logic;
    signal hps_sqrt_data     : std_logic_vector(31 downto 0);
    signal hps_arctg_data    : std_logic_vector(31 downto 0);
    signal hps_ack           : std_logic;
    signal hps_data_cnt      : std_logic_vector(7 downto 0);

    type type_gen_sm is (st_idle, st_nco_run, st_wait_react, st_adc_datain, st_calc_1, st_calc_2, st_calc_3, st_data_out_1, st_data_out_2, st_data_out_3, st_data_out_4, st_end);
    signal gen_sm  : type_gen_sm;
    signal sm_busy : std_logic;

    constant MAX_CNT_LAT_BITS : integer := 27;
    signal cnt_lat            : integer range 0 to (2 ** MAX_CNT_LAT_BITS - 1);

    signal adc_data_ch1_sig : std_logic_vector(11 downto 0);
    signal adc_data_ch2_sig : std_logic_vector(11 downto 0);

    constant MAX_CNT_CALC : integer := 15; -- ?
    signal cnt_calc       : integer range 0 to MAX_CNT_CALC;

    constant MAX_CNT_AVER_BITS : integer := 8;
    signal cnt_aver            : integer range 0 to (2 ** MAX_CNT_AVER_BITS - 1);
    signal cnt_aver_lim        : integer range 0 to (2 ** MAX_CNT_AVER_BITS - 1);
    signal data_aver_ch1       : unsigned(adc_data_ch1'HIGH + MAX_CNT_AVER_BITS downto 0);
    signal data_aver_ch2       : unsigned(adc_data_ch2'HIGH + MAX_CNT_AVER_BITS downto 0);
    signal data_aver_ch1_reg   : signed(calc_out_ch1'HIGH + 1 downto 0);
    signal data_aver_ch2_reg   : signed(calc_out_ch1'HIGH + 1 downto 0);
    signal data_ch1_mod        : signed(calc_out_ch1'HIGH + 1 downto 0);
    signal data_ch2_mod        : signed(calc_out_ch1'HIGH + 1 downto 0);

    constant DELTA : signed(calc_out_ch1'HIGH + 1 downto 0) := 13x"094D"; -- ( 4096 * (5/4.3) ) / 5
begin
    busy <= sm_busy;

    PROC_GEN_SM : process(clk, reset) is
    begin
        if reset = '1' then
            dac_data_sw   <= '0';
            nco_clken     <= '0';
            ready         <= '0';
            va_sm_adc_run <= '0';
            gen_sm        <= st_idle;
            sm_busy       <= '0';
            cnt_lat       <= 0;
            cnt_calc      <= 0;
            cnt_aver      <= 0;

        elsif rising_edge(clk) then
            case gen_sm is
                when st_idle =>
                    if hps_run = '1' then
                        sm_busy <= '1';
                        case hps_averag(3 downto 0) is ---!!!
                            when "1000" => cnt_aver_lim <= 255;
                            when "0111" => cnt_aver_lim <= 127;
                            when "0110" => cnt_aver_lim <= 63;
                            when "0101" => cnt_aver_lim <= 31;
                            when "0100" => cnt_aver_lim <= 15;
                            when "0011" => cnt_aver_lim <= 7;
                            when "0010" => cnt_aver_lim <= 3;
                            when "0001" => cnt_aver_lim <= 1;
                            when "0000" => cnt_aver_lim <= 0;
                            when others => cnt_aver_lim <= 0;
                        end case;
                        gen_sm <= st_nco_run;

                    elsif sw = "1111" then
                        sm_busy <= '1';
                        gen_sm  <= st_nco_run;

                    else
                        sm_busy     <= '0';
                        dac_data_sw <= '0';
                        nco_clken   <= '0';
                        ready       <= '0';
                    end if;

                when st_nco_run =>
                    nco_ph_value <= hps_freq(ACCUM_WIDTH - 1 downto 0);
                    nco_clken    <= '1';
                    dac_data_sw  <= '1';
                    gen_sm       <= st_wait_react;

                when st_wait_react =>
                    if cnt_lat = to_integer(unsigned(hps_latency(MAX_CNT_LAT_BITS - 1 downto 0))) then
                        cnt_lat       <= 0;
                        va_sm_adc_run <= '1';
                        gen_sm        <= st_adc_datain;
                        data_aver_ch1 <= (others => '0');
                        data_aver_ch2 <= (others => '0');
                    else
                        cnt_lat <= cnt_lat + 1;
                    end if;

                when st_adc_datain =>
                    if adc_run = '1' then
                        if cnt_aver = cnt_aver_lim then
                            cnt_aver      <= 0;
                            va_sm_adc_run <= '0';
                            dac_data_sw   <= '0';
                            gen_sm        <= st_calc_1;
                        else
                            cnt_aver <= cnt_aver + 1;
                        end if;
                        data_aver_ch1 <= data_aver_ch1 + unsigned(adc_data_ch1);
                        data_aver_ch2 <= data_aver_ch2 + unsigned(adc_data_ch2);
                    end if;

                when st_calc_1 =>
                    if cnt_aver = to_integer(unsigned(hps_averag(3 downto 0))) then
                        cnt_aver          <= 0;
                        data_aver_ch1_reg <= signed(data_aver_ch1(data_aver_ch1_reg'HIGH downto 0));
                        data_aver_ch2_reg <= signed(data_aver_ch2(data_aver_ch2_reg'HIGH downto 0));
                        gen_sm            <= st_calc_2;
                    else
                        data_aver_ch1 <= "0" & data_aver_ch1(data_aver_ch1'HIGH downto 1);
                        data_aver_ch2 <= "0" & data_aver_ch2(data_aver_ch2'HIGH downto 1);
                        cnt_aver      <= cnt_aver + 1;
                    end if;

                when st_calc_2 =>
                    data_ch1_mod <= DELTA - data_aver_ch1_reg;
                    data_ch2_mod <= DELTA - data_aver_ch2_reg;
                    gen_sm       <= st_calc_3;

                when st_calc_3 =>
                    calc_out_ch1 <= std_logic_vector(data_ch1_mod(calc_out_ch1'HIGH downto 0));
                    calc_out_ch2 <= std_logic_vector(data_ch2_mod(calc_out_ch1'HIGH downto 0));
                    gen_sm       <= st_data_out_1;

                when st_data_out_1 =>
                    if cnt_calc = MAX_CNT_CALC then
                        cnt_calc                                 <= 0;
                        hps_sqrt_data(SQRT_WIDTH - 1 downto 0)   <= calc_sqrt_data;
                        hps_sqrt_data(31 downto SQRT_WIDTH)      <= (others => '0');
                        hps_arctg_data(ARCTG_WIDTH - 1 downto 0) <= calc_arctg_data;
                        if calc_arctg_data(ARCTG_WIDTH - 1) = '1' then
                            hps_arctg_data(31 downto ARCTG_WIDTH) <= (others => '1');
                        else
                            hps_arctg_data(31 downto ARCTG_WIDTH) <= (others => '0');
                        end if;
                        gen_sm <= st_data_out_2;
                    else
                        cnt_calc <= cnt_calc + 1;
                    end if;

                when st_data_out_2 =>
                    dataout <= hps_sqrt_data;
                    ready   <= '1';
                    gen_sm  <= st_data_out_3;

                when st_data_out_3 =>
                    if hps_ack = '1' then
                        gen_sm <= st_data_out_4;
                        ready  <= '0';
                    end if;

                when st_data_out_4 =>
                    if hps_ack = '1' then
                        dataout <= hps_arctg_data;
                        ready   <= '1';
                        gen_sm  <= st_end;
                    end if;

                when st_end =>
                    if hps_ack = '1' then
                        nco_clken <= '0';
                        sm_busy   <= '0';
                        ready     <= '0';
                        gen_sm    <= st_idle;
                    end if;

                when others => gen_sm <= st_idle;
            end case;

        end if;
    end process PROC_GEN_SM;

    PROC_HPS_DATA_TRANSFER : process(clk, reset) is
    begin
        if reset = '1' then
            hps_run           <= '0';
            hps_ack           <= '0';
            highbit_data_prev <= '0';
            hps_freq          <= INIT_HPS_FREQ;
            hps_latency       <= INIT_HPS_LATENSY;
            hps_averag        <= INIT_HPS_AVERAG;

        elsif rising_edge(clk) then
            highbit_data_prev <= hps_data(hps_data'HIGH);

            if highbit_data_prev = '0' and hps_data(hps_data'HIGH) = '1' then
                case hps_data(hps_data'HIGH - 1 downto hps_data'HIGH - 6) is
                    when HPS_ADDR_RUN =>
                        if hps_data(0) = '1' then
                            hps_run <= '1';
                        end if;

                    when HPS_ADDR_FREQ =>
                        if hps_data(hps_data'HIGH - 7) = '1' then
                            hps_freq(31 downto 16) <= hps_data(15 downto 0);
                        else
                            hps_freq(15 downto 0) <= hps_data(15 downto 0);
                        end if;

                    when HPS_ADDR_LATENCY =>
                        if hps_data(hps_data'HIGH - 7) = '1' then
                            hps_latency(31 downto 16) <= hps_data(15 downto 0);
                        else
                            hps_latency(15 downto 0) <= hps_data(15 downto 0);
                        end if;

                    when HPS_ADDR_AVERAGE =>
                        if hps_data(hps_data'HIGH - 7) = '1' then
                            hps_averag(31 downto 16) <= hps_data(15 downto 0);
                        else
                            hps_averag(15 downto 0) <= hps_data(15 downto 0);
                        end if;

                    when HPS_ADDR_ACKNOWLEDG =>
                        hps_ack      <= '1';
                        hps_data_cnt <= hps_data(7 downto 0);

                    when others => null;

                end case;
            else
                hps_run <= '0';
                hps_ack <= '0';
            end if;

        end if;
    end process PROC_HPS_DATA_TRANSFER;

end rtl;
