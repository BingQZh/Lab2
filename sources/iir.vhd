----------------------------------------------------------------------------------
-- Course: ENSC462
-- Group #: 9 
-- Engineer: Valeriya Svichkar and Bing Qiu Zhang

-- Module Name: IIR
-- Project Name: Lab2C
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iir is
    generic(bit_width : integer := 24;
        width_internal : integer := 32;
        a0 : in integer; -- := 4204905;
        a1 : in integer; -- := 8409811;
        a2 : in integer; -- := 4204905;
        b1 : in integer; -- := -1949206066;
        b2 : in integer -- := 892283864
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        valid : in std_logic;
        x : in std_logic_vector(bit_width-1 downto 0);
        y : out std_logic_vector(bit_width-1 downto 0);
        valid_out : out std_logic
    );
end iir;

architecture rtl of iir is
    -- registers capturing previous values
    signal x_1, x_2, y_0, y_1, y_2 : signed(width_internal-1 downto 0) := (others => '0');
    signal y64 : signed( (width_internal*2)-1 downto 0) := (others => '0');
    -- results from multiplying the gains
    signal prod_a0, prod_a1, prod_a2, prod_b1, prod_b2 : signed(width_internal-1 downto 0) := (others => '0');
begin

    SET_ZREGS: process(clk)
    begin
        if rising_edge(clk) then
            valid_out <= valid;
            if rst = '1' then
                x_1 <= (others => '0');
                x_2 <= (others => '0');
                y_1 <= (others => '0');
                y_2 <= (others => '0');
            else
                if valid = '1' then
                    -- at each rising edge, the signals will be updated with previous values
                    x_1 <= resize(signed(x), width_internal);
                    x_2 <= x_1;
                    --y_1 <= (prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2);
--                    y_1 <= std_logic_vector(resize((prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2), bit_width));
                    y_1 <= resize(y64, width_internal);
                    y_2 <= y_1;
                end if;
            end if;
        end if;
    end process;

 y64 <= shift_right(
            (
                (resize(signed(x), width_internal) * to_signed(a0, width_internal)) -- x * a0
                + (x_1 * to_signed(a1, width_internal)) -- x_1 * a1
                + (x_2 * to_signed(a2, width_internal)) -- x_2 * a2
            ) - ( -- subtracting the feedback network (below) from the feedforward network (above)
                (y_1 * to_signed(b1, width_internal)) -- y_1 * b1
                + (y_2 * to_signed(b2, width_internal)) -- y_2 * b2
            ), width_internal-2); 

y <= std_logic_vector(resize(y64, bit_width));

end architecture;
-- lowpass filter values        Q2.30:
-- a0 = 0.003916123487156427    4204905
-- a1 = 0.007832246974312854    8409811
-- a2 = 0.003916123487156427    4204905
-- b1 = -1.8153396116625289     −1949206066
-- b2 = 0.8310041056111546      892283864

-- highpass filter values
-- a0 = 0.9115859293184209      978807938
-- a1 = -1.8231718586368417     −1957615877
-- a2 = 0.9115859293184209      978807938
-- b1 = -1.8153396116625289     −1949206066
-- b2 = 0.8310041056111546      892283864