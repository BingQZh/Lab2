library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexer is
    port (
        SEL : in std_logic_vector(1 downto 0);
        nothing : in std_logic_vector(23 downto 0);
        iir_high : in std_logic_vector(23 downto 0);
        iir_low : in std_logic_vector(23 downto 0);
        nothing2 : in std_logic_vector(23 downto 0);
        X : out std_logic_vector(23 downto 0)
    );
end multiplexer;

architecture rtl of multiplexer is
begin

    X <= nothing when (SEL = "00") else
        iir_high when (SEL = "01") else -- IIR(high)
        iir_low when (SEL = "10") else -- IIR(low)
        nothing2 when (SEL = "11") else nothing;
end architecture;