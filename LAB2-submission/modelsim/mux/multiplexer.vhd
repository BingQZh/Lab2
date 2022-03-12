library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexer is
    generic(bit_width : integer := 24
    );
    port (
        SEL0 : in std_logic; --_vector(1 downto 0);
        SEL1 : in std_logic;
        no_change : in std_logic_vector(bit_width-1 downto 0);
        iir_high : in std_logic_vector(bit_width-1 downto 0);
        iir_low : in std_logic_vector(bit_width-1 downto 0);
        no_change2 : in std_logic_vector(bit_width-1 downto 0);
        sig_out : out std_logic_vector(bit_width-1 downto 0)
    );
end multiplexer;

architecture rtl of multiplexer is
    signal SEL : std_logic_vector(1 downto 0) := "00";
begin
    SEL(0) <= SEL0;
    SEL(1) <= SEL1;
    sig_out <= no_change when (SEL = "00") else
        iir_high when (SEL = "01") else
        iir_low when (SEL = "10") else
        no_change2 when (SEL = "11") else no_change;
end architecture;