library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexer is
    port (
        SEL : in std_logic_vector(1 downto 0);
        A : in std_logic_vector(3 downto 0);
        X : out std_logic
    );
end multiplexer;

architecture rtl of multiplexer is
begin

    with SEL select
        X <= A(0) when (SEL = "00") else
            A(1) when (SEL = "01") else
            A(2) when (SEL = "10") else
            A(3) when (SEL = "11") else A(0);
end architecture;