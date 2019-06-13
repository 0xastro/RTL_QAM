--*********************************************************
---------------------------------------------------------
-- FullAdder: N- Ripple Carry Adder Module 
---------------------------------------------------------
-- Module: FA_N.vhd
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


   ENTITY FA_N is
       generic (N : integer := 2);									--FULL ADDER
        port(														--------------------
            a   : in std_logic_vector(N - 1 downto 0);				-- Input of the full-adder A
            b   : in std_logic_vector(N - 1 downto 0);				-- Input of the full-adder B
            c_i : in std_logic;										-- Carry input 
            o   : out std_logic_vector(N - 1 downto 0);				-- Output of the full-adder
            c_o : out std_logic 									-- Carry output
            );
	end FA_N;
   
   ARCHITECTURE struct of FA_N is
   
    --------------------------------------------------------------
	-- Components declaration
	--------------------------------------------------------------
   
        COMPONENT fullAdder is                -- component declaration
		    port(-- Input of the full-adder
                 a   : in std_logic;
                 -- Input of the full-adder
                 b   : in std_logic;
                 -- Carry input 
                 c_i : in std_logic;
                 -- Output of the full-adder
                 o   : out std_logic;
                 -- Carry output
                 c_o : out std_logic
            );
		end COMPONENT;
		
	--------------------------------------------------------------
	-- Signals declaration
	--------------------------------------------------------------
   
	    -- Vector used to contain the internal carry signals
		SIGNAL c_int : std_logic_vector(N  downto 0);
	   
   begin
        
	gen_fa : for i in 0 to N - 1  generate
	
	    i_fa : fullAdder port map(
	    	a    =>  a(i),
	    	b    =>  b(i), 
	    	c_i  =>  c_int(i),
	    	o    =>  o(i),
	    	c_o  =>  c_int(i + 1)
	    	);
	       
	     end generate;
			
		-- Input carry mapping
		c_int(0) <= c_i;
		-- Output carry mapping
		c_o       <= c_int(N);
		
		   
   
   end struct;
    