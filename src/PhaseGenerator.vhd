--*********************************************************
---------------------------------------------------------
-- PhaseGenerator/Phase Accumlator
---------------------------------------------------------
-- The system is responsible for start counting once
-- system started; with different offset
-- e.g count from 0 to generate the sine wave (index the lutch)
-- 	   count from 1024 (equivelent to pi/2) to generate a cos wave
---------------------------------------------------------
-- Module: PhaseGenerator
-- Author: Astro
-- Project: QAM Modulation
-- Delievered to: Digital System Design
-- Supervised by: Prof. Luca Fanucci
---------------------------------------------------------
--*********************************************************

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY PhaseGenerator is
	port (
		clk 			: in std_logic;							--system clock
		rst 			: in std_logic;							-- Asynchronous active - high reset
		phase_increment : in std_logic_vector(11 downto 0);		-- FCW: Freq Control Word: phase increment: We Fix to 1
		phase_offset    : in std_logic_vector(11 downto 0);		-- starting phase of the counter
		phase_sin    	: out std_logic_vector(11 downto 0);	-- wave1: sin Oscillator
		phase_cos    	: out std_logic_vector(11 downto 0)		-- wave2: cos Oscillator
	);
END PhaseGenerator;


------------------------------------------------------------------------------------------
-- ARCHITICTURE OF PHASE ACCUMLATOR
------------------------------------------------------------------------------------------
ARCHITECTURE arch of PhaseGenerator is

	SIGNAL accum 			: unsigned(11 downto 0);
	SIGNAL phase_int 		: unsigned(11 downto 0);
	SIGNAL phase_offset_d 	: unsigned(11 downto 0);

begin

	--Main Phase Accumulation process
	main : process(clk,rst)
	begin
			if rst = '1' then
				accum    <= (others => '0');
				phase_offset_d <= "010000000010";	-- @pi/2 to index the cosine waveform so count from 1024
				phase_int    <= (others => '0');
			elsif (rising_edge(clk)) then
				accum        <= accum + unsigned(phase_increment);
				phase_int    <= accum + phase_offset_d;
			end if;
	end process;

	phase_cos   <= std_logic_vector(phase_int); 	-- fetch the cosine waveform by addresses
	phase_sin   <= std_logic_vector(accum);			-- fetch the cosine waveform by addresses

end arch;