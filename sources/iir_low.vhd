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

    signal prod_a1, prod_a2, prod_a3 : signed(width_internal-1 downto 0) := (others => '0');

    signal sum_a, sum_b : std_logic_vector(width_internal-1 downto 0) := (others => '0');
begin

    SET_ZREGS: process(clk)
    begin

        if rising_edge(clk) then
            if rst = '1' then
                x_0 <= (others => '0');
                x_1 <= (others => '0');
                x_2 <= (others => '0');
                y_0 <= (others => '0');
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
                    prod_a1 <= resize(shift_right(signed(x) * a0, 2), width_internal);
                    -- multiply x-1 by a1
                    prod_a2 <= resize(shift_right(signed(x_1) * a1, 2), width_internal);
                    -- multiply x-1 by a2
                    prod_a3 <= resize(shift_right(signed(x_2) * a2, 2), width_internal);
                    -- add them up

                    -- multiply y-1 by b1
                    -- multiply y-2 by b2
                    -- subtract them up

                    -- y equals the sum of both
                    y_0 <= std_logic_vector(prod_a1 + prod_a2 + prod_a3);
                end if;
            end if;
        end if;
    end process;

    y <= y_0;

end architecture;