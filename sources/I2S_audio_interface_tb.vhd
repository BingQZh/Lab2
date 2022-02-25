library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity I2S_audio_interface_tb is
end I2S_audio_interface_tb;

architecture sim of I2S_audio_interface_tb is

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;
    
    constant bclk_hz : integer := 3072000;
    constant bclk_period : time := 1 sec / bclk_hz;

    constant lrclk_hz : integer := 48000;
    constant lrclk_period : time := 1 sec / lrclk_hz;

    signal fpga_clk : std_logic := '1';
    signal bclk : std_logic := '1';
    signal lrclk : std_logic := '1';
    signal sdata_in : std_logic;
    signal rst : std_logic := '0';
    signal audio_valid_pl : std_logic;
    signal audio_valid_adau : std_logic;
    signal audio_r_pl : std_logic_vector(23 downto 0);
    signal audio_l_pl : std_logic_vector(23 downto 0);
    signal audio_r_adau : std_logic_vector(23 downto 0);
    signal audio_l_adau : std_logic_vector(23 downto 0);
    signal test : std_logic_vector(3 downto 0) := "0101"; --(23 downto 0) := x"ABCDEF";
    signal counter : integer := 3; --23;
    signal sdata_out : std_logic;
begin

    fpga_clk <= not fpga_clk after clk_period / 2;
    bclk <= not bclk after bclk_period / 2;
    lrclk <= not lrclk after lrclk_period / 2;

    DUT : entity work.I2S_audio_interface(rtl) -- DUT : entity work.testlab3(rtl)
    port map (
        fpga_clk => fpga_clk,
        rst => rst,
        bclk => bclk,
        lrclk => lrclk,
        sdata_in => sdata_in,
        audio_valid_adau => audio_valid_pl,
        audio_r_pl => audio_r_pl,
        audio_l_pl => audio_l_pl,
        audio_r_adau => audio_r_pl,
        audio_l_adau => audio_l_pl,
        audio_valid_pl => audio_valid_pl, --_test,
        sdata_out => sdata_out
    );

    SEQUENCER_PROC : process
    begin
        hey : for i in 0 to 500 loop
            wait for bclk_period * 1;

            if counter > 0 then
                sdata_in <= test(counter);
                counter <= counter - 1;
            else
                sdata_in <= test(counter);
                counter <= 3; --23;
            end if;

        end loop hey;
        
        rst <= '1';
        wait for bclk_period * 100;

        hey2 : for i in 0 to 500 loop
            wait for bclk_period * 1;

            if counter > 0 then
                sdata_in <= test(counter);
                counter <= counter - 1;
            else
                sdata_in <= test(counter);
                counter <= 3; --23;
            end if;

        end loop hey2;

        finish;
    end process;

end architecture;