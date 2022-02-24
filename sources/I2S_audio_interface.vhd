----------------------------------------------------------------------------------
-- Course: ENSC462
-- Group #: 9 
-- Engineer: Valeriya Svichkar and Bing Qiu Zhang

-- Create Date: 02/11/2022 03:33:33 PM
-- Module Name: I2S_audio_interface
-- Project Name: Lab2
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2S_audio_interface is
    port (
        rst : in std_logic;
        fpga_clk : in std_logic;
        bclk : in std_logic;
        lrclk : in std_logic;
        sdata_in : in std_logic;
        audio_valid_adau : in std_logic;
        audio_r_adau : in std_logic_vector(23 downto 0);
        audio_l_adau : in std_logic_vector(23 downto 0);
        audio_valid_pl : out std_logic;
        audio_r_pl : out std_logic_vector(23 downto 0);
        audio_l_pl : out std_logic_vector(23 downto 0);
        read_states : out std_logic_vector(2 downto 0);
        -- 000: Initial, 001: StartLeft, 010: Write/ReadLeft, 011: EndLeft, 100: StartRight, 101: Write/ReadRight, 111: rst
        write_states : out std_logic_vector(2 downto 0);
        sdata_out : out std_logic
    );
end I2S_audio_interface;

architecture rtl of I2S_audio_interface is
    signal BCLK_q2d_1, BCLK_q2d_2, BCLK_q2d_3, validBCLK : std_logic; -- B clk flip flop signals 

    signal LRCLK_q2d_1, LRCLK_q2d_2, LRCLK_q2d_3, validLRCLK : std_logic; -- LR clk flip flop signals 

    signal SDin_q2d_1, SDin_q2d_2, SDin_q2d_3, validSDin : std_logic; -- SD in flip flop signals 

    type Reading is (Initial, StartLeft, ReadLeft, EndLeft, StartRight, ReadRight); -- FSM states for reading/deserializing
    signal ReadState : Reading := Initial;

    type Writing is (Initial, StartLeft, WriteLeft, EndLeft, StartRight, WriteRight); -- FSM states for writing/serializing
    signal WriteState : Writing := Initial;

    -- signal to collect individual bits into 24 bit vector
    signal LeftChannel : std_logic_vector(23 downto 0) := (others => '0'); 
    signal RightChannel : std_logic_vector(23 downto 0) := (others => '0');
    -- counters to keep track of location in vectors ^
    signal i : integer;
    signal o : integer;

    function Rising_Edge_Check(FF2 : std_logic;
            FF3 : std_logic) return std_logic is
        variable result : std_logic;
    begin
        if FF3 = '0' and FF2 = '1' then -- this is a rising edge
            result := '1';
        else
            result := '0';
        end if;
        return result;
    end function;

    function Falling_Edge_Check(FF2 : std_logic;
            FF3 : std_logic) return std_logic is
        variable result : std_logic;
    begin
        if FF3 = '1' and FF2 = '0' then -- this is a falling edge
            result := '1';
        else
            result := '0';
        end if;
        return result;
    end function;

begin

    SYNCHRONIZER: process(fpga_clk)
    begin

        if rising_edge(fpga_clk) then
            if rst = '0' then
                BCLK_q2d_1 <= '0';
                BCLK_q2d_2 <= '0';
                BCLK_q2d_3 <= '0';

                LRCLK_q2d_1 <= '0';
                LRCLK_q2d_2 <= '0';
                LRCLK_q2d_3 <= '0';

                SDin_q2d_1 <= '0';
                SDin_q2d_2 <= '0';
                SDin_q2d_3 <= '0';
            else
                BCLK_q2d_1 <= bclk;
                BCLK_q2d_2 <= BCLK_q2d_1;
                BCLK_q2d_3 <= BCLK_q2d_2;

                LRCLK_q2d_1 <= lrclk;
                LRCLK_q2d_2 <= LRCLK_q2d_1;
                LRCLK_q2d_3 <= LRCLK_q2d_2;

                SDin_q2d_1 <= sdata_in;
                SDin_q2d_2 <= SDin_q2d_1;
                SDin_q2d_3 <= SDin_q2d_2;
            end if;
        end if;
    end process;

    SYNCHRONIZER_COMPARISON: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '0' then
                validSDin <= '0';
                validBCLK <= '0';
                validLRCLK <= '0';
            else

                -- if BCLK_q2d_1 = BCLK_q2d_2 and BCLK_q2d_1 = BCLK_q2d_3 then
                    validBCLK <= BCLK_q2d_3;
                -- end if;

                -- if LRCLK_q2d_1 = LRCLK_q2d_2 and LRCLK_q2d_1 = LRCLK_q2d_3 then
                    validLRCLK <= LRCLK_q2d_3;
                -- end if;

                -- if SDin_q2d_1 = SDin_q2d_2 and SDin_q2d_1 = SDin_q2d_3 then
                    validSDin <= SDin_q2d_3;
                -- end if;

            end if;
        end if;
    end process;

    READING_PROC: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '0' then
                ReadState <= Initial;
                audio_r_pl <= (others => '0');
                audio_l_pl <= (others => '0');
                i <= 0;
                audio_valid_pl <= '0';
                read_states <= "111";
            else
            
                case ReadState is

                    -- In this state, we are checking for the first falling edge of the LR clk
                    -- At the falling edge, we will move on to StartLeft state
                    when Initial =>
                        read_states <= "000";
                        if Falling_Edge_Check(LRCLK_q2d_2, LRCLK_q2d_3) = '1' then -- falling edge of LR clk;
                            audio_valid_pl <= '0';
                            ReadState <= StartLeft;
                        end if;

                    -- In this state, we are checking when to start reading the SD in
                    -- We can only start reading the bits after the rising edge of B clk
                    -- Once we see the rising edge of the B clk, we move on to the ReadLeft state
                    when StartLeft =>
                        read_states <= "001";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then -- rising edge of B clk;
                        --wait until bResults(1) = '1'; --rising_edge(BCLK_q2d_3);
                            ReadState <= ReadLeft;
                            i <= 23;
                        end if;

                    -- In this state, we are reading the bits and putting it into a 24 bit vector
                    -- After reading 24 bits, we will move on the the EndLeft state
                    when ReadLeft =>
                        read_states <= "010";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then -- rising edge of B clk
                            if i >= 0 then
                                LeftChannel(i) <= validSDin;
                                i <= i - 1;
                            else
                                ReadState <= EndLeft;
                            end if;
                        end if;

                    -- In this state, we are checking when the right channel begins
                    -- When LR clk has a rising edge, we will move on to StartRight state
                    when EndLeft =>
                        read_states <= "011";
                        if Rising_Edge_Check(LRCLK_q2d_2, LRCLK_q2d_3) = '1' then
                            ReadState <= StartRight;
                        end if;

                    -- In this state, we are checking for the rising edge of the B clk
                    -- Then we will move onto ReadRight state
                    when StartRight =>
                        read_states <= "100";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then
                            ReadState <= ReadRight;
                            i <= 23;
                        end if;

                    -- In this state, we are reading the bits and putting it into a 24 bit vector
                    -- After reading 24 bits, we will output the vectors and reset the state to Initial
                    when ReadRight =>
                        read_states <= "101";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then 
                            if i >= 0 then
                                RightChannel(i) <= validSDin;
                                i <= i - 1;
                            else
                                audio_valid_pl <= '1';
                                audio_l_pl <= LeftChannel;
                                audio_r_pl <= RightChannel;
                                ReadState <= Initial;
                            end if;
                        end if;

                end case;
            end if;
        end if;
    end process;

    WRITING_PROC: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '0' then
                WriteState <= Initial;
                o <= 23;
                sdata_out <= '0';
                write_states <= "111";
            else

                case WriteState is

                    -- In this state, we are checking for the first falling edge of the LR clk
                    -- At the falling edge, we will move on to StartLeft state
                    when Initial =>
                        write_states <= "000";
                        if audio_valid_adau = '1' then
                            if Falling_Edge_Check(LRCLK_q2d_2, LRCLK_q2d_3) = '1' then
                                WriteState <= StartLeft;
                            end if;
                        end if;

                    -- In this state, we are checking for the rising edge of the B clk
                    -- At the rising edge, we will move on to the WriteLeft state
                    when StartLeft =>
                        write_states <= "001";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then
                            WriteState <= WriteLeft;
                            o <= 23;
                        end if;

                        -- In this state, we are outputting the vectors we recieved one bit at a time
                    -- after outputting 24 bits, we move on to the EndLeft state
                    when WriteLeft =>
                        write_states <= "010";    
                        if Falling_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then
                            if o >= 0 then
                                sdata_out <= audio_l_adau(o);
                                o <= o - 1;
                            else
                                WriteState <= EndLeft;
                            end if;
                        end if;

                    -- In this state, we are waiting for the rising edge of the LR clk before we move onto the StartRight state
                    when EndLeft =>
                        write_states <= "011";
                        if Rising_Edge_Check(LRCLK_q2d_2, LRCLK_q2d_3) = '1' then
                            WriteState <= StartRight;
                        end if;

                    -- In this state, we are waiting for the rising edge of the B clk before moving on to the WriteRight state
                    when StartRight =>
                        write_states <= "100";
                        if Rising_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then
                            WriteState <= WriteRight;
                            o <= 23;
                        end if;

                    -- In this state, we are outputting the vectors we recieved one bit at a time
                    -- after outputting 24 bits, we reset the state to Initial, and set the valid bit to 0
                    when WriteRight =>
                        write_states <= "101";
                        if Falling_Edge_Check(BCLK_q2d_2, BCLK_q2d_3) = '1' then
                            if o >= 0 then
                                sdata_out <= audio_r_adau(o);
                                o <= o - 1;
                            else
                                sdata_out <= '0';
                                WriteState <= Initial;
                            end if;
                        end if;
                end case;
            end if;
        end if;
    end process;

end architecture;