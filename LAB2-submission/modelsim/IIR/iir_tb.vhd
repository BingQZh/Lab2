----------------------------------------------------------------------------------
-- Course: ENSC462
-- Group #: 9 
-- Engineer: Valeriya Svichkar and Bing Qiu Zhang

-- Module Name: iir_tb
-- Project Name: Lab2C
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity iir_tb is
end iir_tb;

architecture sim of iir_tb is

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;
    constant bit_width : integer := 24;

    signal clk : std_logic := '1';
    signal rst : std_logic := '0';
    signal valid: std_logic := '1';
    signal valid_out: std_logic;
    signal x : std_logic_vector(bit_width-1 downto 0);
    signal y : std_logic_vector(bit_width-1 downto 0);

begin

    clk <= not clk after clk_period / 2;

    DUT : entity work.iir(rtl)
    port map (
        clk => clk,
        rst => rst,
        valid => valid,
        valid_out => valid_out,
        x => x,
        y => y
    );

    IIR_PROC : process
    begin
        hey : for i in 0 to 10 loop
            if i > 6 then
                rst <= '1';
            end if;
            x <= "000000000011000000111001"; -- decimal value is 12345
            wait for clk_period * 1;
        end loop hey;

        ---- EXPECTED RESULTS: ------------
        -----------------------------------
        -- Lowpass:
        -- y1 = 48.3445444489 => 48
        -- y2 = 232.795399893 => 232
        -- y3 = 575.806373713 => 575
        -- y4 = 1045.20836357 => 1045 (approx.)
        ------------------------------------
        -- Highpass:
        -- y1 = 48.3445444489 => 11253
        -- y2 = 232.795399893 => 9175 (approx.)
        -- y3 = 575.806373713 => 7304 (approx.)
        -- y4 = 1045.20836357 => 5635 (approx.)

        rst <= '0';

        x <= "000000000100000000101001"; -- 16425
        wait for clk_period * 1;
        x <= "000001000000001000100000"; -- 262688
        wait for clk_period * 1;
        x <= "000000000000011111111111"; -- 2047
        wait for clk_period * 1;
        x <= "000000000001010101010101"; -- 5461
        wait for clk_period * 1;
        x <= "000000000000000000000000"; -- 0
        wait for clk_period * 1;

        ---- EXPECTED RESULTS: ------------
        -----------------------------------
        -- Lowpass:
        -- y1 = 64.3223282765 => 64
        -- y2 = 1274.13017358 => 1274 (approx.)
        -- y3 = 4389.30278188 => 4389 (approx.)
        -- y4 = 7975.40500871 => 7975 (approx.)
        ------------------------------------
        -- Highpass:
        -- y1 = 48.3445444489 => 14972
        -- y2 = 232.795399893 => 236697
        -- y3 = 575.806373713 => −44842 (approx.)
        -- y4 = 1045.20836357 => −37391 (approx.)
        

        finish;
    end process;

end architecture;