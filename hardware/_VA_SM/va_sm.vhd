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

        hps_data        : in  std_logic_vector(31 downto 0);
        busy            : out std_logic;

        nco_clken       : out std_logic;
        nco_ph_value    : out std_logic_vector(ACCUM_WIDTH - 1 downto 0);
        dac_data_sw     : out std_logic; -- 0 - 0x00; 1 - NCO

        adc_data_ch1    : in  std_logic_vector(11 downto 0);
        adc_data_ch2    : in  std_logic_vector(11 downto 0);
        adc_run         : in  std_logic;

        calc_out_ch1    : out std_logic_vector(11 downto 0);
        calc_out_ch2    : out std_logic_vector(11 downto 0);
        calc_sqrt_data  : in  std_logic_vector(SQRT_WIDTH - 1 downto 0);
        calc_arctg_data : in  std_logic_vector(ARCTG_WIDTH - 1 downto 0)
    );

end va_sm;

architecture rtl of va_sm is
    constant HPS_ADDR_RUN     : std_logic_vector(5 downto 0) := "000001";
    constant HPS_ADDR_FREQ    : std_logic_vector(5 downto 0) := "000010";
    constant HPS_ADDR_LATENCY : std_logic_vector(5 downto 0) := "000011";
    constant HPS_ADDR_AVERAGE : std_logic_vector(5 downto 0) := "000100";

    signal hps_freq          : std_logic_vector(31 downto 0);
    signal hps_latency       : std_logic_vector(31 downto 0);
    signal hps_averag        : std_logic_vector(31 downto 0);
    signal hps_run           : std_logic;
    signal highbit_data_prev : std_logic;
    signal hps_sqrt_data     : std_logic_vector(31 downto 0);
    signal hps_arctg_data    : std_logic_vector(31 downto 0);

    type type_gen_sm is (st_idle, st_nco_run, st_wait_react, st_adc_datain, st_calc, st_data_out, st_end);
    signal gen_sm  : type_gen_sm;
    signal sm_busy : std_logic;

    constant MAX_CNT_LAT_BITS : integer := 16;
    signal cnt_lat            : integer range 0 to (2 ** MAX_CNT_LAT_BITS - 1);

    signal adc_data_ch1_sig : std_logic_vector(11 downto 0);
    signal adc_data_ch2_sig : std_logic_vector(11 downto 0);

    constant MAX_CNT_CALC : integer := 15;
    signal cnt_calc       : integer range 0 to MAX_CNT_CALC;

begin
    busy <= sm_busy;

    PROC_GEN_SM : process(clk, reset) is
    begin
        if reset = '1' then
            dac_data_sw <= '0';
            nco_clken   <= '0';
            gen_sm      <= st_idle;
            sm_busy     <= '0';
            cnt_lat     <= 0;
            cnt_calc    <= 0;

        elsif rising_edge(clk) then
            case gen_sm is
                when st_idle =>
                    if hps_run = '1' then
                        sm_busy <= '1';
                        gen_sm  <= st_nco_run;
                    else
                        sm_busy     <= '0';
                        dac_data_sw <= '0';
                        nco_clken   <= '0';
                    end if;

                when st_nco_run =>
                    nco_ph_value <= hps_freq(ACCUM_WIDTH - 1 downto 0);
                    nco_clken    <= '1';
                    dac_data_sw  <= '1';
                    gen_sm       <= st_wait_react;

                when st_wait_react =>
                    nco_clken <= '0';
                    if cnt_lat = to_integer(unsigned(hps_latency(MAX_CNT_LAT_BITS - 1 downto 0))) then
                        cnt_lat <= 0;
                        gen_sm  <= st_adc_datain;
                    else
                        cnt_lat <= cnt_lat + 1;
                    end if;

                when st_adc_datain =>
                    if adc_run = '1' then
                        adc_data_ch1_sig <= adc_data_ch1;
                        adc_data_ch2_sig <= adc_data_ch2;
                        dac_data_sw      <= '0';
                        gen_sm           <= st_calc;
                    end if;

                when st_calc =>
                    calc_out_ch1 <= adc_data_ch1_sig;
                    calc_out_ch2 <= adc_data_ch2_sig;
                    gen_sm       <= st_data_out;

                when st_data_out =>
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
                        gen_sm <= st_end;
                    else
                        cnt_calc <= cnt_calc + 1;
                    end if;

                when st_end =>
                    sm_busy <= '0';
                    gen_sm  <= st_idle;

                when others => gen_sm <= st_idle;
            end case;

        end if;
    end process PROC_GEN_SM;

    PROC_HPS_DATA_TRANSFER : process(clk, reset) is
    begin
        if reset = '1' then
            hps_run           <= '0';
            highbit_data_prev <= '0';

        elsif rising_edge(clk) then
            highbit_data_prev <= hps_data(hps_data'HIGH);

            if highbit_data_prev = '0' and hps_data(hps_data'HIGH) = '1' then
                case hps_data(hps_data'HIGH - 1 downto hps_data'HIGH - 6) is
                    when HPS_ADDR_RUN =>
                        if hps_data(15 downto 0) = x"01" then
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

                    when others => null;

                end case;
            else
                hps_run <= '0';
            end if;

        end if;
    end process PROC_HPS_DATA_TRANSFER;

end rtl;
