--*********************************************************
--@DESCRIPTION
-- This Module Is responsible for adding the two generated 
-- PassBand Waverforms:
-- I_Symbol MixedWith cosWave + Q_Symbol MixedWith sinWave
---------------------------------------------------------
-- Module: QAM_Hierarchical
-- Author: Astro
-- Project: QAM Modulation
-- Delievered to: Digital System Design
-- Supervised by: Prof. Luca Fanucci
---------------------------------------------------------
--*********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

entity QAM_Hierarchical is
  port (
    input_stream              : in  std_logic_vector(1 downto 0); 
    i_clk                     : in std_logic;
    i_rst_h                   : in std_logic;
    PASSBAND                  : out std_logic_vector(7 downto 0);  -- sin Mixer Output
    i_fcw                     : in  std_logic_vector(11 downto 0)  -- Frequency Control Word [Phase Increment]
  );
end entity ; -- IQ_Adder


ARCHITECTURE Behaviourl of QAM_Hierarchical is
 
    signal I_signal : std_logic_vector(7 downto 0);
    signal Q_signal : std_logic_vector(7 downto 0);
    signal adder_out : std_logic_vector(7 downto 0);
                                                                            --------------------
    COMPONENT qam_mod is                                                    -- QAM Modulator
        port (                                                              --------------------
          i_clk                       : in  std_logic;                      -- System clock
          i_rstb                      : in  std_logic;                      -- Asynchronous active - high reset
          i_fcw                       : in  std_logic_vector(11 downto 0);  -- Frequency Control Word [Phase Increment]
          i_meta_sym                  : in  std_logic_vector(1 downto 0);   -- Input Symbols for 4-QAM
          I_Mixer                     : out std_logic_vector(7 downto 0);   -- cos Mixer Output 
          Q_Mixer                     : out std_logic_vector(7 downto 0));  -- sin Mixer Output
    end COMPONENT qam_mod;


    COMPONENT FA_N                                                          --------------------
       generic (N : integer := 2);                                          --FULL ADDER
        port(                                                               --------------------
            a   : in std_logic_vector(N - 1 downto 0);                      -- Input of the full-adder A
            b   : in std_logic_vector(N - 1 downto 0);                      -- Input of the full-adder B
            c_i : in std_logic;                                             -- Carry input 
            o   : out std_logic_vector(N - 1 downto 0);                     -- Output of the full-adder
            c_o : out std_logic                                             -- Carry output
            );
    END COMPONENT FA_N;

begin
        --@qam_mod Component Wiring/Mapping
         u_qam_mod :    qam_mod
                    port map(
                        i_clk            => i_clk,
                        i_rstb           => i_rst_h,
                        i_fcw            => i_fcw,
                        i_meta_sym       => input_stream,
                        I_Mixer          => I_signal ,
                        Q_Mixer          => Q_signal);

        --@u_IQ_Adder Component Wiring/Mapping
         u_IQ_Adder :   FA_N
                   generic map(N => 8)
                    port map(
                        a               => I_signal,
                        b               => Q_signal,
                        c_i             => '0',
                        o               => adder_out ,
                        c_o             => open);


          PASSBAND <= adder_out;


end Behaviourl;
