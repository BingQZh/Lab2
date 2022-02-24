library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use std.textio.all;
use std.env.finish;

entity iir_low_tb is
end iir_low_tb;

architecture sim of iir_low_tb is

    constant clk_hz : integer := 100e6;
    constant clk_period : time := 1 sec / clk_hz;
    
    signal clk : std_logic := '1';
    signal rst : std_logic := '0';
    signal valid: std_logic := '1';
    signal x : std_logic_vector(23 downto 0);
    signal y : std_logic_vector(23 downto 0);

begin

    clk <= not clk after clk_period / 2;

    DUT : entity work.iir_low(rtl) -- DUT : entity work.testlab3(rtl)
    port map (
        clk => clk,
        rst => rst,
        valid => valid,
        x => x,
        y => y
    );

    SEQUENCER_PROC : process
    begin
        hey : for i in 0 to 10 loop
            wait for clk_period * 1;
            x <= "000000000011000000111001";
            -- x <= "010101010101010101010101";
        end loop hey;
        
        wait for clk_period * 4;

        finish;
    end process;

end architecture;