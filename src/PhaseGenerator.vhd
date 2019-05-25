library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY PhaseGenerator is
	port (
		clk 			: in std_logic;							--system clock
		rst 			: in std_logic;							-- Asynchronous active - high reset
		phase_increment : in std_logic_vector(11 downto 0);		-- FCW: Freq Control Word: phase increment: We Fix to 1
		phase_offset    : in std_logic_vector(11 downto 0);		-- starting phase of the counter
		phase_sin    	: out std_logic_vector(11 downto 0);	-- wave1: sin Oscillator
		phase_cos    	: out std_logic_vector(11 downto 0)		-- wave2: cos Oscillator
	);
end ENTITY;


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
				phase_offset_d <= "000111111111";	-- Random for now; should be equivelent to -pi/2
				phase_int    <= (others => '0');
			elsif (rising_edge(clk)) then
				accum        <= accum + unsigned(phase_increment);
				phase_int    <= accum + phase_offset_d;
			end if;
	end process;

	phase_sin   <= std_logic_vector(phase_int(accum'high downto accum'high-12+1));
	phase_cos   <= std_logic_vector(accum);

end architecture;