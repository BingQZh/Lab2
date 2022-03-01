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
    signal x_1, x_2, y_1, y_2 : std_logic_vector(bit_width-1 downto 0) := (others => '0');

    -- results from multiplying the gains
    signal prod_a0, prod_a1, prod_a2, prod_b1, prod_b2 : signed(width_internal-1 downto 0) := (others => '0');
begin

    SET_ZREGS: process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                x_1 <= (others => '0');
                x_2 <= (others => '0');
                y_2 <= (others => '0');
            else
                if valid = '1' then
                    -- at each rising edge, the signals will be updated with previous values
                    x_1 <= x;
                    x_2 <= x_1;
                    y_2 <= y_1;
                end if;
            end if;
        end if;
    end process;

    IIR_FILTER: process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                prod_a0 <= (others => '0');
                prod_a1 <= (others => '0');
                prod_a2 <= (others => '0');
                prod_b1 <= (others => '0');
                prod_b2 <= (others => '0');
                y_1 <= (others => '0');
            else
                if valid = '1' then

                    -- the next section of code is a expanded version of this:
                    -- y_1 <= std_logic_vector(resize((prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2), bit_width));
                    -- I expanded to produce a y output in the next clock cycle
                    y_1 <= std_logic_vector(resize(((
                        resize(shift_right(resize(signed(x), width_internal) * to_signed(a0, width_internal), width_internal-2), width_internal)) -- duplicate of prod_a0
                        + (resize(shift_right(resize(signed(x_1), width_internal) * to_signed(a1, width_internal), width_internal-2), width_internal)) -- duplicate of prod_a1
                        + (resize(shift_right(resize(signed(x_2), width_internal) * to_signed(a2, width_internal), width_internal-2), width_internal))) -- duplicate of prod_a2
                        - -- subtracting the feedback network (below) from the feedforward network (above)
                        ((resize(shift_right(resize(signed((prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2)), width_internal) * to_signed(b1, width_internal), width_internal-2), width_internal)) -- duplicate of prod_b1
                        + (resize(shift_right(resize(signed(y_2), width_internal) * to_signed(b2, width_internal), width_internal-2), width_internal))), bit_width)); -- duplicate of prod_b2

                    ---- CALCULATIONS FOR FEEDFORWARD NETWORK:
                    -- multiply x by a0:
                    prod_a0 <= resize(shift_right(resize(signed(x), width_internal) * to_signed(a0, width_internal), width_internal-2), width_internal);
                    -- multiply x-1 by a1
                    prod_a1 <= resize(shift_right(resize(signed(x_1), width_internal) * to_signed(a1, width_internal), width_internal-2), width_internal);
                    -- multiply x-2 by a2
                    prod_a2 <= resize(shift_right(resize(signed(x_2), width_internal) * to_signed(a2, width_internal), width_internal-2), width_internal);

                    ---- CALCULATIONS FOR FEEDBACK NETWORK:
                    -- multiply y-1 by b1
                    prod_b1 <= resize(shift_right(resize(signed((prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2)), width_internal) * to_signed(b1, width_internal), width_internal-2), width_internal);
                    -- multiply y-2 by b2
                    prod_b2 <= resize(shift_right(resize(signed(y_2), width_internal) * to_signed(b2, width_internal), width_internal-2), width_internal);

                end if;
            end if;
        end if;
    end process;

    y <= y_1;
    valid_out <= '1' when to_integer(unsigned(y_1)) > 0 
            else '0';

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