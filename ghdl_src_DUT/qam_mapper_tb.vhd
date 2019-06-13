--*********************************************************
---------------------------------------------------------
-- QAM MAPPER: Constellation mapper of 4-QAM TESTBENCH
---------------------------------------------------------
-- We have bounded test cases assossiated with the 
-- modulation order
-- test0: 00
-- test0: 01
-- test0: 10
-- test0: 11
---------------------------------------------------------
-- Module: qam_mapper
-- Author: Astro
-- Project: QAM Modulation
-- Delievered to: Digital System Design
-- Supervised by: Prof. Luca Fanucci
---------------------------------------------------------
--*********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY tb is
END tb;


ARCHITECTURE testbench of tb is

COMPONENT mapper_ask is
	port (
  	i_clk                       : in  std_logic;
  	i_rstb                      : in  std_logic;
  	i_meta_sym                  : in  std_logic_vector(1 downto 0);
 	o_mapper                    : out std_logic_vector(7 downto 0));
END COMPONENT;

-----------------------------------------------------------------------------------------------------
-- constants declaration
-----------------------------------------------------------------------------------------------------
	   
-- CLK period (f_CLK = 125 MHz)
   CONSTANT T_CLK  : time := 8 ns;
 -- Maximum sine period
   CONSTANT T_max_period : time := 4096 * T_CLK;
-- Simulation time
   CONSTANT T_sim  : time := 10 * T_max_period;
-- Time before the reset release
   CONSTANT T_reset : time := 10 ns;


		

-----------------------------------------------------------------------------------------------------
-- signals declaration
-----------------------------------------------------------------------------------------------------
	    
	-- clk signal (intialized to '0')
	SIGNAL clk_tb                 : std_logic := '0'; 
	-- Active high asynchronous reset (Active at t = 0)
	SIGNAL a_rst_h_tb             : std_logic := '1';
	-- signal to stop the simulation
	SIGNAL stop_simulation        : std_logic := '1';

	------------------------------
	-- APPLICATION SPECIFIC SIGNALS
	-------------------------------
	-- inputs symbols
	SIGNAL sym_tb                  : std_logic_vector(1 downto 0);
	-- output signals (the declaration is useful to make it visible without observing the ddfs component)
	SIGNAL ddfs_out_tb            : std_logic_vector(7 downto 0);
		
	   
	   
   begin
   
     	 -- clk variation
	clk_tb                 <= (not(clk_tb) and stop_simulation) after T_CLK / 2;
	 -- reset control
	a_rst_h_tb             <= '0' after T_reset;
	-- stopping the simulation after T_sim
	stop_simulation        <= '0' after T_sim;
		
	test_mapper: qam_mapper
		 port map (
				i_meta_sym   => sym_tb, 	-- input symbols
				I_symbols 	 => open,		-- I symbols
				Q_symbols	 => open,		-- Q symbols
				i_clk        => clk_tb,		-- clock of the system 
				i_rstb    	 => a_rst_h_tb  -- Asynchronous active - high reset
				);
		
	input_process : process
		
		
		begin
		   
            a_rst_h_tb <='1';
            sym_tb   <= (others => '0');
	    	wait for 2 * T_max_period + T_reset;

    	    -- GENERATE test vectors
	    	for i in 0 to 3 loop
	    		-- Apply i to sym_tb so  A=00 01 10 11
      			sym_tb   <= std_logic_vector(to_UNSIGNED(i,2));
      	    	wait for 2 * T_max_period + T_reset;
     		end loop;
    

            wait until a_rst_h_tb = '0';
            wait for 2 * T_max_period + T_reset;
            
            wait until stop_simulation = '0';
		
	end process input_process;

END testbench;		
        

