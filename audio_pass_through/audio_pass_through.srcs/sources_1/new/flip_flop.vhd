----------------------------------------------------------------------------------
-- Course: ENSC462
-- Group #: 9 
-- Engineer: Valeriya Svichkar and Bing Qiu Zhang

-- Create Date: 02/11/2022 03:33:33 PM
-- Module Name: flipflop
-- Project Name: Lab2b
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity flipflop is
    port (
        rst: in std_logic;
        clk : in std_logic;
        D : in std_logic;
        Q : out std_logic 
    );
end flipflop;

architecture rtl of flipflop is

begin

    FLIPFLOP_PROC: process(clk,rst)
    begin
        if rst = '1' then
            Q <= '0';
        elsif rising_edge(clk) then
            Q <= D;
        end if;
    end process;

end architecture;