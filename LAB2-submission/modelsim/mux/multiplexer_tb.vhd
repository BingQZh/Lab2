----------------------------------------------------------------------------------
-- Course: ENSC462
-- Group #: 9 
-- Engineer: Valeriya Svichkar and Bing Qiu Zhang

-- Module Name: multiplexer_tb
-- Project Name: Lab2C
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity multiplexer_tb is
end multiplexer_tb;

architecture sim of multiplexer_tb is

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;
    constant bit_width : integer := 24;

    signal clk : std_logic := '1';
    signal rst : std_logic := '0';
    signal SEL0: std_logic := '0';
    signal SEL1: std_logic := '1';
    signal no_change : std_logic_vector(bit_width-1 downto 0) := x"DEAD01";
    signal iir_high : std_logic_vector(bit_width-1 downto 0) := x"FADE23";
    signal iir_low : std_logic_vector(bit_width-1 downto 0) := x"DEAF45";
    signal no_change2 : std_logic_vector(bit_width-1 downto 0) := x"BEAD67";
    signal sig_out : std_logic_vector(bit_width-1 downto 0);

begin

    clk <= not clk after clk_period / 2;

    DUT : entity work.multiplexer(rtl)
    port map (
        SEL0 => SEL0,
        SEL1 => SEL1,
        no_change => no_change,
        iir_high => iir_high,
        iir_low => iir_low,
        no_change2 => no_change2,
        sig_out => sig_out
    );

    MUX_PROC : process
    begin
        -- Expected result for a SEL = 10
        -- iir low : DEAF45
        wait for clk_period * 2;

        SEL0 <= '1';
        SEL1 <= '0';
        -- Expected result for a SEL = 01
        -- iir high : FADE23
        wait for clk_period * 2;

        SEL0 <= '0';
        SEL1 <= '0';
        -- Expected result for a SEL = 00
        -- iir low : DEAD01
        wait for clk_period * 2;

        SEL0 <= '1';
        SEL1 <= '1';
        -- Expected result for a SEL = 00
        -- iir low : BEAD67
        wait for clk_period * 2;

        finish;
    end process;

end architecture;