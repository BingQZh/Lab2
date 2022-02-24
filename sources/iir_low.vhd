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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iir_low is
    generic(bit_width : integer := 24;
        width_internal : integer := 32;
        a0 : in integer := 4204905;
        a1 : in integer := 8409811;
        a2 : in integer := 4204905;
        b1 : in integer := -1949206066;
        b2 : in integer := 892283864
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        valid : in std_logic;
        x : in std_logic_vector(bit_width-1 downto 0);
        y : out std_logic_vector(bit_width-1 downto 0);
        valid_out : out std_logic
    );
end iir_low;

architecture rtl of iir_low is
    signal x_0, x_1, x_2, y_0, y_1, y_2 : std_logic_vector(bit_width-1 downto 0) := (others => '0');

    signal prod_a0, prod_a1, prod_a2, prod_b1, prod_b2 : signed(width_internal-1 downto 0) := (others => '0');

    signal sum_a, sum_b : signed(width_internal-1 downto 0) := (others => '0');
begin

    SET_ZREGS: process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                x_0 <= (others => '0');
                x_1 <= (others => '0');
                x_2 <= (others => '0');
                y_1 <= (others => '0');
                y_2 <= (others => '0');
            else
                if valid = '1' then
                    x_0 <= x;
                    x_1 <= x_0;
                    x_2 <= x_1;
                    y_1 <= y_0;
                    y_2 <= y_1;
                end if;
            end if;
        end if;
    end process;

    IIR_FILTER: process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                -- x <= (others => '0');
                -- valid <= '0';
            else
                if valid = '1' then
                    -- multiply x by a0
                    prod_a0 <= resize(shift_right(resize(signed(x), width_internal) * to_signed(a0, width_internal), width_internal-2), width_internal);
                    -- multiply x-1 by a1
                    prod_a1 <= resize(shift_right(resize(signed(x_1), width_internal) * to_signed(a1, width_internal), width_internal-2), width_internal);
                    -- multiply x-1 by a2
                    prod_a2 <= resize(shift_right(resize(signed(x_2), width_internal) * to_signed(a2, width_internal), width_internal-2), width_internal);
                    -- add them up
                    sum_a <= prod_a0 + prod_a1 + prod_a2;

                    -- multiply y-1 by b1
                    prod_b1 <= resize(shift_right(resize(signed(y_1), width_internal) * to_signed(b1, width_internal), width_internal-2), width_internal);
                    -- multiply y-2 by b2
                    prod_b2 <= resize(shift_right(resize(signed(y_2), width_internal) * to_signed(b2, width_internal), width_internal-2), width_internal);
                    -- subtract them up
                    sum_b <= -prod_b1 - prod_b2;

                    -- y equals the sum of both
                    y_0 <= std_logic_vector(resize(sum_a + sum_b, bit_width));
                end if;
            end if;
        end if;
    end process;

    y <= y_0;

end architecture;