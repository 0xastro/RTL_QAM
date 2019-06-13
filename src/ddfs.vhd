--*********************************************************
---------------------------------------------------------
-- DDFS: Direct Digital Frequency Synthesizer
---------------------------------------------------------
-- Module: ddfs
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


ENTITY ddfs is 
	port( 
		fw			: in std_logic_vector(11 downto 0);		-- input frequency word
		phase_s 	: in std_logic_vector(11 downto 0);		-- Phase Offset/Starting Phase
		clk 		: in std_logic;							-- clock of the system 
		a_rst_h 	: in std_logic;							-- Asynchronous active - high reset
		out_sinWave : out std_logic_vector(5 downto 0);		-- output waveform sin
		out_cosWave : out std_logic_vector(5 downto 0)		-- output waveform cos
		);
END ddfs;


------------------------------------------------------------------------------------------
-- ARCHITICTURE OF DDFS SYSTEM
------------------------------------------------------------------------------------------
ARCHITECTURE struct of ddfs is

------------------------------------------------------------------------------------------
-- Internal signals
------------------------------------------------------------------------------------------
   -- Output of of the phase accumulator counter
	SIGNAL S_phase_sine 	: std_logic_vector(11 downto 0);
	SIGNAL S_phase_cos 		: std_logic_vector(11 downto 0);

   -- Output of the LUT table
	SIGNAL lut_output_cos 	: std_logic_vector(5 downto 0);
	SIGNAL lut_output_sin 	: std_logic_vector(5 downto 0);
   -- Output register for the output synchronization
	SIGNAL sine_out 		: std_logic_vector(5 downto 0);

	SIGNAL cos_out 			: std_logic_vector(5 downto 0);
	-- RESERVED
	--SIGNAL start_phase 		: std_logic_vector(11 downto 0);

	--****************************************************************
    -- @Used With Optimization Configuration
    -- Complemented output of the LUT
	-- signal lut_output_muxed_osc0 : std_logic_vector(5 downto 0);
	-- signal lut_output_muxed_osc1 : std_logic_vector(5 downto 0);
	-- LATCH ADDRESS:
	-- SIGNAL S_phase_sine_add 	: std_logic_vector(11 downto 0);
	-- SIGNAL S_phase_cos_add 		: std_logic_vector(11 downto 0);
	--****************************************************************

------------------------------------------------------------------------------------------
-- START EMBEDDING AND DECLARING
-- @COMPONENTS OF THE SYSTEM
------------------------------------------------------------------------------------------
																	--------------------
	COMPONENT PhaseGenerator is										--PhaseGenerator
		port (														--------------------
			clk 			: in std_logic;							-- System clock
			rst 			: in std_logic;							-- Asynchronous active - high reset 
			phase_increment : in std_logic_vector(11 downto 0);		-- Phase Increment
			phase_offset    : in std_logic_vector(11 downto 0);		-- starting phase of the counter
			phase_sin    	: out std_logic_vector(11 downto 0);	-- wave1: sin Oscillator
			phase_cos    	: out std_logic_vector(11 downto 0)		-- wave2: cos Oscillator
			);
	END COMPONENT PhaseGenerator;
------------------------------------------------------------------------------------------

    COMPONENT FA_N 											--------------------
       generic (N : integer := 2);									--FULL ADDER
        port(														--------------------
            a   : in std_logic_vector(N - 1 downto 0);				-- Input of the full-adder A
            b   : in  std_logic_vector(N - 1 downto 0);				-- Input of the full-adder B
            c_i : in std_logic;										-- Carry input 
            o   : out  std_logic_vector(N - 1 downto 0);			-- Output of the full-adder
            c_o : out std_logic 									-- Carry output
            );
    END COMPONENT FA_N;
------------------------------------------------------------------------------------------
    																--------------------
    COMPONENT ddfs_lut_4096 is 										-- Sinsoidal LUTCH/ROM
   		port(														--------------------
   			address : in std_logic_vector(11 downto 0);				-- lut address/Index
			dds_out : out std_logic_vector(5 downto 0)				-- lut output (wave values)
			);
    END COMPONENT;
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- END EMBEDDING AND DECLARING
-- @COMPONENTS OF THE SYSTEM
------------------------------------------------------------------------------------------	


------------------------------------------------------------------------------------------	
-- START 
-- WIRING THE SUB-SYSTEM COMPONENT
------------------------------------------------------------------------------------------	
	begin


  		PHASE_ACCUMLATOR: PhaseGenerator 
			port map (
				clk 			=> clk,
				rst 			=> a_rst_h,
				phase_increment => fw,
				phase_offset 	=> phase_s,
				phase_sin 		=> S_phase_sine,
				phase_cos 		=> S_phase_cos);



		LUT_4096_SIN : ddfs_lut_4096 
			port map(
				address => S_phase_sine,
				dds_out => lut_output_sin);

      
		LUT_4096_COS : ddfs_lut_4096 
			port map(
				address => S_phase_cos,
				dds_out => lut_output_cos);


		--****************************************************************
      	--ENABLE OPTIMIZED LATCH
		--****************************************************************
        -- Selecting the lut output 
		--lut_output_muxed_osc0 <=  lut_output_cos when (S_phase_cos(11) = '0') else not(lut_output_cos);	
		-- lut_output_muxed_osc1 <=  lut_output_sin when (S_phase_sine(11) = '0') else not(lut_output_sin);
        -- Selecting the lut_address                 
		-- S_phase_sine_add <= S_phase_sine(11 downto 0) when (S_phase_sine(10) = '0') else not (S_phase_sine(11 downto 0) );
		-- S_phase_cos_add  <= S_phase_cos(11 downto 0) when (S_phase_cos(10) = '0') else not (S_phase_cos(11 downto 0) );
		--****************************************************************

      ----------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------	
-- END 
-- WIRING THE SUB-SYSTEM COMPONENT
------------------------------------------------------------------------------------------			


------------------------------------------------------------------------------------------	
-- PROCESS DIFFINITION 
-- For each rising edge.
------------------------------------------------------------------------------------------	
      DDFS_OUTPUT_REG: process(a_rst_h,clk)
			begin
			if(a_rst_h ='1') then
				sine_out <= (others => '0');
				cos_out <= (others => '0');
				--start_phase <= (others => '1');
			elsif(rising_edge(clk)) then
			   sine_out <= lut_output_sin;
			   cos_out <= lut_output_cos;
			end if;			
		end process;
		
      -- Mapping the output
		out_sinWave <= sine_out;
		out_cosWave <= cos_out;
END struct;