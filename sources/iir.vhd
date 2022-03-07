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

architecture rtl of iir_low is
    -- registers capturing previous values
    signal x_1, x_2, y_1, y_2 : std_logic_vector(bit_width-1 downto 0) := (others => '0');

    -- results from multiplying the gains
    signal prod_a0, prod_a1, prod_a2, prod_b1, prod_b2 : signed(width_internal-1 downto 0) := (others => '0');
begin

    SET_ZREGS: process(clk)
    begin
        valid_out <= valid;
        if rising_edge(clk) then
            if rst = '0' then
                x_1 <= (others => '0');
                x_2 <= (others => '0');
                y_2 <= (others => '0');
            else
                if valid = '1' then
                    -- at each rising edge, the signals will be updated with previous values
                    x_1 <= x;
                    x_2 <= x_1;
                    --y_1 <= (prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2);
                    y_1 <= std_logic_vector(resize((prod_a0 + prod_a1 + prod_a2) - (prod_b1 + prod_b2), bit_width));
                    y_2 <= y_1;
                end if;
            end if;
        end if;
    end process;

    IIR_FILTER: process(valid)
    begin
        if valid = '1' then

                y <= std_logic_vector(resize(((resize(shift_right(resize(signed(x), width_internal) * to_signed(a0, width_internal), width_internal-2), width_internal)) + prod_a1 + prod_a2) - (prod_b1 + prod_b2), bit_width));

                prod_a0 <= resize(shift_right(resize(signed(x), width_internal) * to_signed(a0, width_internal), width_internal-2), width_internal);
        
        end if;
    end process;

    A1_PROC: process(rst, x_1)
    begin
        if rst = '1' then
            prod_a1 <= (others => '0');
        else
            prod_a1 <= resize(shift_right(resize(signed(x_1), width_internal) * to_signed(a1, width_internal), width_internal-2), width_internal);
        end if;
    end process;

    A2_PROC: process(rst, x_2)
    begin
        if rst = '1' then
            prod_a2 <= (others => '0');
        else
            prod_a2 <= resize(shift_right(resize(signed(x_2), width_internal) * to_signed(a2, width_internal), width_internal-2), width_internal);
        end if;
    end process;

    B1_PROC: process(rst, y_1)
    begin
        if rst = '1' then
            prod_b1 <= (others => '0');
        else
            prod_b1 <= resize(shift_right(resize(signed(y_1), width_internal) * to_signed(b1, width_internal), width_internal-2), width_internal);    
        end if;
    end process;

    B2_PROC: process(rst, y_2)
    begin
        if rst = '1' then
            prod_b2 <= (others => '0');
        else
            prod_b2 <= resize(shift_right(resize(signed(y_2), width_internal) * to_signed(b2, width_internal), width_internal-2), width_internal);
        end if;
    end process;

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