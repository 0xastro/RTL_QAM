---------------------------------------------------------
-- QAM MAPPER
---------------------------------------------------------
-- we want to have one single change of bits from one symbol to the other;
-- thus, using fixed point number[gray code] representation {00, 01, 11, 10} to represent {1+1j, -1+1j, -1-1j, 1-1j} 
-- Constellation	|	Symbols
-- {00}			|	{+1+J}
-- {01}			|	{-1+J}
-- {10}			|	{+1-J}
-- {11}			|	{-1-J}
---------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY qam_mapper is
	port (
		i_meta_sym		: in std_logic_vector (1 downto 0);		--i_meta_sym
		I_symbols		: out std_logic_vector (1 downto 0);
		Q_symbols		: out std_logic_vector (1 downto 0);
		i_clk           : in  std_logic;
    	i_rstb          : in  std_logic
	);
	
END qam_mapper;

ARCHITECTURE Behaviourl of qam_mapper is
	-- define array for both I and Q parts (4 constellation points)
	-- Constellation Size; to be generic however the modulation order
	constant const_size : integer := 4;
	constant frame_size : integer := 8;
	-- Constellation Type
	type constellation is array (0 to const_size-1) of signed (1 downto 0);
	type frame is array (0 to frame_size-1) of std_logic;
	
	-- I array
	-- to_signed: Converts an INTEGER to a SIGNED vector of the specified SIZE.
	constant I_data	: constellation := (
		to_signed(1,2),
		to_signed(-1,2),
		to_signed(1,2),
		to_signed(-1,2)
		);
	-- Q array
	constant Q_data	: constellation := (
		to_signed(1,2),
		to_signed(1,2),
		to_signed(-1,2),
		to_signed(-1,2)
		); 
	signal bits_in_unsigned : unsigned (1 downto 0);
begin
	-- to get from std_logic_vector to integer: > we go to unsigned then to integer 
	-- s.t input data is needed to index the constellation array
	bits_in_unsigned 	<= unsigned(i_meta_sym);
	-- Mapping of Input Data/Bits into QAM symbols

	I_symbols 		<= std_logic_vector(I_data(to_integer(bits_in_unsigned)));
	Q_symbols 		<= std_logic_vector(Q_data(to_integer(bits_in_unsigned)));
	
	p_mapper_qam : process(i_clk,i_rstb)
	begin
		if(i_rstb='1') then
	    	I_symbols          <= (others=>'0');
	    	Q_symbols          <= (others=>'0');
		elsif(rising_edge(i_clk)) then
			I_symbols 		<= std_logic_vector(I_data(to_integer(bits_in_unsigned)));
			Q_symbols 		<= std_logic_vector(Q_data(to_integer(bits_in_unsigned)));
		end if;
	end process p_mapper_qam;


end Behaviourl;
