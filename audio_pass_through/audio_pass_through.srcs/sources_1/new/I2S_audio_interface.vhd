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
    signal LeftChannel : std_logic_vector(23 downto 0); 
    signal RightChannel : std_logic_vector(23 downto 0);
    -- counters to keep track of location in vectors ^
    signal i : integer := 0;
    signal o : integer := 23;

    -- function that checks if the signals are synchronized, and if theres a rising/falling edge
    -- the output is a 3 bit vector
    -- first bit is the result of sync check: results(2)
    -- second bit tells us if there's a rising edge: results(1)
    -- third bit tells us if there's a falling edge: results(0)
    function Sync_Edge_Checker(firstFF : std_logic;
                                secondFF : std_logic;
                                thirdFF : std_logic;
                                fourthval : std_logic) return std_logic_vector is
            variable results : std_logic_vector(2 downto 0);
            variable sync : std_logic;
            variable rise : std_logic;
            variable fall : std_logic;
    begin
        if firstFF = secondFF and firstFF = thirdFF then -- checking if flip flops are all synced
            if fourthval /= thirdFF then
                if fourthval = '0' and thirdFF = '1' then -- this is a rising edge
                    rise := '1';
                    fall := '0';
                elsif fourthval = '1' and thirdFF = '0' then -- falling edge:
                    fall := '1';
                    rise := '0';
                else -- this is if the fourth value is undefined
                    fall := '0';
                    rise := '0';
                end if;
            else
                rise := '0';
                fall := '0';
            end if;
            sync := '1';
        else
            sync := '0';
            rise := '0';
            fall := '0';
        end if;
        results := (sync, rise, fall);
        return results;
    end function;

    signal bResults, lrResults, SDinResults : std_logic_vector(2 downto 0); -- to capture function results

    signal validbit : std_logic := '0';
    signal holdvalid : std_logic := '0';
    signal skip1Read : std_logic := '0';
    signal skip1Write : std_logic := '0';

begin

    ----------- BCLK SYNCHRONIZER: --------------
    BCLK_FF1: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => bclk,
            Q => BCLK_q2d_1);
    
    BCLK_FF2: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => BCLK_q2d_1,
            Q => BCLK_q2d_2);

    BCLK_FF3: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => BCLK_q2d_2,
            Q => BCLK_q2d_3);
    ----------------------------------------------

    ----------- LRCLK SYNCHRONIZER: --------------
    LRCLK_FF1: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => lrclk,
            Q => LRCLK_q2d_1);
    
    LRCLK_FF2: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => LRCLK_q2d_1,
            Q => LRCLK_q2d_2);

    LRCLK_FF3: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => LRCLK_q2d_2,
            Q => LRCLK_q2d_3);
    ----------------------------------------------

    ---------- SDATA_IN SYNCHRONIZER: ------------
    SDin_FF1: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => sdata_in,
            Q => SDin_q2d_1);
    
    SDin_FF2: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => SDin_q2d_1,
            Q => SDin_q2d_2);

    SDin_FF3: entity work.flipflop(rtl) port map(
            clk => fpga_clk,
            rst => rst,
            D => SDin_q2d_2,
            Q => SDin_q2d_3);
    ----------------------------------------------

    SYNCHRONIZER_COMPARISON: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '1' then
                bResults <= (others => '0');
                lrResults <= (others => '0');
                SDinResults <= (others => '0');
            else
                bResults <= Sync_Edge_Checker(BCLK_q2d_1, BCLK_q2d_2, BCLK_q2d_3, validBCLK);
                -- check if B clock is synced then add the value in the last flip flop into a signal
                -- this signal will now be the last valid signal of the B clock
                if bResults(2) = '1' then
                    validBCLK <= BCLK_q2d_3;
                end if;

                lrResults <= Sync_Edge_Checker(LRCLK_q2d_1, LRCLK_q2d_2, LRCLK_q2d_3, validLRCLK);
                -- check if LR clock is synced then add the value in the last flip flop into a signal
                -- this signal will now be the last valid signal of the LR clock
                if bResults(2) = '1' then
                    validLRCLK <= LRCLK_q2d_3;
                end if;

                SDinResults <= Sync_Edge_Checker(SDin_q2d_1, SDin_q2d_2, SDin_q2d_3, validSDin);
                -- check if SDin is synced then add the value in the last flip flop into a signal
                -- this signal will now be the last valid signal of the SDin
                if bResults(2) = '1' then
                    validSDin <= SDin_q2d_3;
                end if;
            end if;
        end if;
    end process;

    READING_PROC: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '1' then
                ReadState <= Initial;
                -- LeftChannel <= (others => undefined);
                -- RightChannel <= (others => undefined);
                i <= 0;
                validbit <= '0';
            else
            
                case ReadState is

                    -- In this state, we are checking for the first falling edge of the LR clk
                    -- At the falling edge, we will move on to StartLeft state
                    when Initial =>
                        validbit <= '0';
                        if lrResults(0) = '1' then -- falling_edge(LRCLK_q2d_3);
                        --wait until lrResults(0) = '1'; -- falling_edge(LRCLK_q2d_3);
                            ReadState <= StartLeft;
                        end if;

                    -- In this state, we are checking when to start reading the SD in
                    -- We can only start reading the bits after the rising edge of B clk
                    -- Once we see the rising edge of the B clk, we move on to the ReadLeft state
                    when StartLeft =>
                        if bResults(1) = '1' then --rising_edge(BCLK_q2d_3);
                        --wait until bResults(1) = '1'; --rising_edge(BCLK_q2d_3);
                            ReadState <= ReadLeft;
                        end if;

                    -- In this state, we are reading the bits and putting it into a 24 bit vector
                    -- After reading 24 bits, we will move on the the EndLeft state
                    when ReadLeft =>
                        if bResults(1) = '1' and skip1Read = '0' then --rising_edge(BCLK_q2d_3) then
                            skip1Read <= '1';
                        elsif bResults(1) = '1' and skip1Read = '1' then
                            skip1Read <= '0';
                            -- Read 24 bits!
                            if i < 24 then
                                LeftChannel(i) <= validSDin;
                                i <= i + 1;
                            else
                                ReadState <= EndLeft;
                                i <= 0;
                            end if;
                        end if;

                    -- In this state, we are checking when the right channel begins
                    -- When LR clk has a rising edge, we will move on to StartRight state
                    when EndLeft =>
                        if lrResults(1) = '1' then
                        --wait until lrResults(1) = '1'; --rising_edge(LRCLK_q2d_3);
                            ReadState <= StartRight;
                        end if;

                    -- In this state, we are checking for the rising edge of the B clk
                    -- Then we will move onto ReadRight state
                    when StartRight =>
                        if bResults(1) = '1' then
                        -- wait until bResults(1) = '1'; --rising_edge(BCLK_q2d_3);
                            ReadState <= ReadRight;
                        end if;

                    -- In this state, we are reading the bits and putting it into a 24 bit vector
                    -- After reading 24 bits, we will output the vectors and reset the state to Initial
                    when ReadRight => 
                        if bResults(1) = '1' and skip1Read = '0' then --rising_edge(BCLK_q2d_3) then
                            skip1Read <= '1';
                        elsif bResults(1) = '1' and skip1Read = '1' then
                            skip1Read <= '0';
                            -- Read 24 bits!
                            if i < 24 then
                                RightChannel(i) <= validSDin;
                                i <= i + 1;
                            else
                                audio_l_pl <= LeftChannel;
                                audio_r_pl <= RightChannel;
                                validbit <= '1';
                                ReadState <= Initial;
                                i <= 0;
                            end if;
                        end if;

                end case;
            end if;
        end if;
    end process;

    WRITING_PROC: process(fpga_clk)
    begin
        if rising_edge(fpga_clk) then
            if rst = '1' then
                WriteState <= Initial;
                o <= 23;
                --sdata_out <= '0';
                holdvalid <= '0';
            else

                if audio_valid_adau = '1' or holdvalid = '1' then
                    case WriteState is

                        -- In this state, we are checking for the first falling edge of the LR clk
                        -- At the falling edge, we will move on to StartLeft state
                        when Initial =>
                            if audio_valid_adau = '1' then
                                holdvalid <= audio_valid_adau;
                            end if;
                            if lrResults(0) = '1' then -- wait until lrResults(0) = '1'; --falling_edge(LRCLK_q2d_3);
                                WriteState <= StartLeft;
                            end if;

                        -- In this state, we are checking for the rising edge of the B clk
                        -- At the rising edge, we will move on to the WriteLeft state
                        when StartLeft =>
                            if bResults(1) = '1' then --wait until bResults(1) = '1'; --rising_edge(BCLK_q2d_3);
                                WriteState <= WriteLeft;
                            end if;
    
                            -- In this state, we are outputting the vectors we recieved one bit at a time
                        -- after outputting 24 bits, we move on to the EndLeft state
                        when WriteLeft =>
                            if bResults(0) = '1' and skip1Write = '0' then --falling_edge(BCLK_q2d_3) then
                                skip1Write <= '1';
                            elsif bResults(0) = '1' and skip1Write = '1' then
                                skip1Write <= '0';
                                -- Write 24 bits!
                                if o >= 0 then
                                    sdata_out <= audio_l_adau(o);
                                    o <= o - 1;
                                else
                                    WriteState <= EndLeft;
                                    o <= 23;
                                end if;
                            end if;

                        -- In this state, we are waiting for the rising edge of the LR clk before we move onto the StartRight state
                        when EndLeft =>
                            if lrResults(1) = '1' then --wait until lrResults(1) = '1'; --rising_edge(LRCLK_q2d_3);
                                WriteState <= StartRight;
                            end if;

                        -- In this state, we are waiting for the rising edge of the B clk before moving on to the WriteRight state
                        when StartRight =>
                            if bResults(1) = '1' then --wait until bResults(1) = '1'; --rising_edge(BCLK_q2d_3);
                                WriteState <= WriteRight;
                            end if;

                        -- In this state, we are outputting the vectors we recieved one bit at a time
                        -- after outputting 24 bits, we reset the state to Initial, and set the valid bit to 0
                        when WriteRight => 
                            if bResults(0) = '1' and skip1Write = '0' then --falling_edge(BCLK_q2d_3) then
                                skip1Write <= '1';
                            elsif bResults(0) = '1' and skip1Write = '1' then
                                skip1Write <= '0';
                                -- Write 24 bits!
                                if o >= 0 then
                                    sdata_out <= audio_r_adau(o);
                                    o <= o - 1;
                                else
                                    sdata_out <= '0'; -- maybe set to undefined???
                                    WriteState <= Initial;
                                    o <= 23;
                                    holdvalid <= '0';
                                    --validbit <= '0';
                                end if;
                            end if;
                    end case;
                    
                end if;
            end if;
        end if;
    end process;

    audio_valid_pl <= validbit;

end architecture;