
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

--*********************************************************
--@DESCRIPTION
-- This Module Is responsible for adding the two generated 
-- PassBand Waverforms:
-- I_Symbol MixedWith cosWave + Q_Symbol MixedWith sinWave
--*********************************************************
entity IQ_Adder is
  port (
    input_stream                 : in  std_logic_vector(1 downto 0); 
    i_clk                     : in std_logic;
    i_rst_h                   : in std_logic;
    PASSBAND                  : out std_logic_vector(8 downto 0);  -- sin Mixer Output
    i_fcw                     : in  std_logic_vector(11 downto 0)  -- Frequency Control Word [Phase Increment]
  );
end entity ; -- IQ_Adder


ARCHITECTURE Behaviourl of IQ_Adder is
 
    signal test_signal : std_logic_vector(8 downto 0);
    signal test_signal2 : std_logic_vector(8 downto 0);
   signal  adder_out : std_logic_vector(8 downto 0);
                                                                            --------------------
    COMPONENT qam_mod is                                                    -- QAM Modulator
        port (                                                              --------------------
          i_clk                       : in  std_logic;                      -- System clock
          i_rstb                      : in  std_logic;                      -- Asynchronous active - high reset
          i_fcw                       : in  std_logic_vector(11 downto 0);  -- Frequency Control Word [Phase Increment]
          i_meta_sym                  : in  std_logic_vector(1 downto 0);   -- Input Symbols for 4-QAM
          I_Mixer                     : out std_logic_vector(8 downto 0);             -- cos Mixer Output 
          Q_Mixer                     : out std_logic_vector(8 downto 0));            -- sin Mixer Output
    end COMPONENT qam_mod;


    COMPONENT FA_N                                                          --------------------
       generic (N : integer := 2);                                          --FULL ADDER
        port(                                                               --------------------
            a   : in std_logic_vector(N - 1 downto 0);                      -- Input of the full-adder A
            b   : in std_logic_vector(N - 1 downto 0);                     -- Input of the full-adder B
            c_i : in std_logic;                                             -- Carry input 
            o   : out std_logic_vector(N - 1 downto 0);                    -- Output of the full-adder
            c_o : out std_logic                                             -- Carry output
            );
      end COMPONENT FA_N;

begin
         u_qam_mod :    qam_mod
                    port map(
                        i_clk            => i_clk,
                        i_rstb           => i_rst_h,
                        i_fcw            => i_fcw,
                        i_meta_sym       => input_stream,
                        I_Mixer          => test_signal ,
                        Q_Mixer          => test_signal2);

         u_adder :   FA_N
                   generic map(N => 9)
                    port map(
                        a               => test_signal,
                        b               => test_signal2,
                        c_i             => '0',
                        o               => adder_out ,
                        c_o             => open);

--    p_adder : process(i_clk,i_rst_h)
--    begin
--        if(i_rst_h='1') then
--            adder_out        <= (others=>'0');
--        elsif(rising_edge(i_clk)) then
--            adder_out <= o;
--        end if;
--    end process p_adder;


    PASSBAND <= adder_out;


end Behaviourl;
