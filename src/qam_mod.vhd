LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;


------------------------------------------------------------------------------------------
--***************************************
--*************ENTITY********************
--***************************************
ENTITY qam_mod is
port (
  i_clk                       : in  std_logic;                      -- System clock
  i_rstb                      : in  std_logic;                      -- Asynchronous active - high reset
  i_fcw                       : in  std_logic_vector(11 downto 0);  -- Frequency Control Word [Phase Increment]
  i_meta_sym                  : in  std_logic_vector( 1 downto 0);  -- Input Symbols for 4-QAM
  o_molulator                 : out std_logic_vector(11 downto 0)); -- Modulator Output
end qam_mod;

------------------------------------------------------------------------------------------
--***************************************
--*************ARCHITECTURE*************
--***************************************

ARCHITECTURE rtl of qam_mod is

--***************************************
-- START EMBEDDING AND DECLARING
-- @COMPONENTS OF THE SYSTEM
--***************************************
    COMPONENT qam_mapper
        port (
            i_meta_sym      : in std_logic_vector (1 downto 0);             -- Input DATA
            I_symbols       : out std_logic_vector (1 downto 0);            -- In-Phase Symbols
            Q_symbols       : out std_logic_vector (1 downto 0);            -- Quadrature-Phase Symbols
            i_clk           : in  std_logic;                                -- system clock
            i_rstb          : in  std_logic                                 -- Asynchronous active - high reset
            );  
    end COMPONENT;


    COMPONENT ddfs is
        port( 
            fw          : in std_logic_vector(11 downto 0);                 -- input frequency word
            phase_s     : in std_logic_vector(11 downto 0);                 -- Phase Offset/Starting Phase
            clk         : in std_logic;                                     -- clock of the system 
            a_rst_h     : in std_logic;                                     -- Asynchronous active - high reset
            out_sinWave : out std_logic_vector(5 downto 0);                 -- output waveform sin
            out_cosWave : out std_logic_vector(5 downto 0)                  -- output waveform cos
            );
    end COMPONENT ddfs;

    --***************************************
    --START WIRING THE SUB-SYSTEM COMPONENT
    --***************************************
    SIGNAL phase_ctr                   : std_logic_vector(11 downto 0);
    SIGNAL Q_sine                      : std_logic_vector(5 downto 0);
    SIGNAL I_cos                       : std_logic_vector(5 downto 0);

    SIGNAL I_mapper                    : std_logic_vector(1 downto 0);
    SIGNAL Q_mapper                    : std_logic_vector(1 downto 0);
    SIGNAL r_molulator                 : signed(11 downto 0);               --modulator output
    SIGNAL r_upconverted               : signed(8 downto 0);                -- 6 + 2 + 1 bit sign always '0'
    SIGNAL r2_upconverted              : signed(8 downto 0);                -- 6 + 2 + 1 bit sign always '0'

    begin
        o_molulator     <= std_logic_vector(r_molulator);

        u_mapper_qam : qam_mapper
            port map(
                i_meta_sym      => i_meta_sym,
                I_symbols       => I_mapper,
                Q_symbols       => Q_mapper,
                i_clk           => i_clk ,
                i_rstb          => i_rstb);

        u_ddfs_osc : ddfs
            port map(
                fw              =>i_fcw,
                phase_s         =>phase_ctr,
                clk             =>i_clk,
                a_rst_h         =>i_rstb,
                out_sinWave     =>Q_sine,
                out_cosWave     =>I_cos
                );

    p_mod_qam : process(i_clk,i_rstb)
    begin
      if(i_rstb='1') then
        r_upconverted          <= (others=>'0');
        r2_upconverted         <= (others=>'0');
        r_molulator            <= (others=>'0');
      elsif(rising_edge(i_clk)) then
        r_upconverted          <= signed(I_cos) * signed('0'&I_mapper);
        r2_upconverted         <= signed(Q_sine) * signed('0'&Q_mapper);
        -- 12 MSB; bit 22 and bit 21 are always the same 
        --r_molulator            <= r_upconverted(8 downto 0);
      end if;
    end process p_mod_qam;

end rtl;

