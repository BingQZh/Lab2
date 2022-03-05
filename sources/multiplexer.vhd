library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexer is
    port (
        --sel_switch : in std_logic_vector(1 downto 0);
        sel_switch_0: in std_logic;
        sel_switch_1: in std_logic;
        nothing : in std_logic_vector(23 downto 0);
        iir_high : in std_logic_vector(23 downto 0);
        iir_low : in std_logic_vector(23 downto 0);
        nothing2 : in std_logic_vector(23 downto 0);
        out_switch: out std_logic_vector(1 downto 0);
        X : out std_logic_vector(23 downto 0)
    );
end multiplexer;

architecture rtl of multiplexer is
    signal sel_switch: std_logic_vector(1 downto 0) :="00";
begin

    sel_switch(0) <= sel_switch_0;
    sel_switch(1) <= sel_switch_1;
    X <= nothing when (sel_switch = "00") else
        iir_high when (sel_switch = "01") else -- IIR(high)
        iir_low when (sel_switch = "10") else -- IIR(low)
        nothing2 when (sel_switch = "11") else nothing;
   out_switch <= sel_switch;
end architecture;