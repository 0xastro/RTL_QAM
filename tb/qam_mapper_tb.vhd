
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end tb;


architecture testbench of tb is

component mapper_ask is
	port (
  	i_clk                       : in  std_logic;
  	i_rstb                      : in  std_logic;
  	i_meta_sym                  : in  std_logic_vector(1 downto 0);
 	o_mapper                    : out std_logic_vector(7 downto 0));
end component;

-----------------------------------------------------------------------------------------------------
-- constants declaration
-----------------------------------------------------------------------------------------------------
	   
-- CLK period (f_CLK = 125 MHz)
   constant T_CLK  : time := 8 ns;
 -- Maximum sine period
   constant T_max_period : time := 4096 * T_CLK;
-- Simulation time
   constant T_sim  : time := 10 * T_max_period;
-- Time before the reset release
   constant T_reset : time := 10 ns;


		

-----------------------------------------------------------------------------------------------------
-- signals declaration
-----------------------------------------------------------------------------------------------------
	    
	-- clk signal (intialized to '0')
	signal clk_tb                 : std_logic := '0'; 
	-- Active high asynchronous reset (Active at t = 0)
	signal a_rst_h_tb             : std_logic := '1';
	-- signal to stop the simulation
	signal stop_simulation        : std_logic := '1';

	------------------------------
	-- APPLICATION SPECIFIC SIGNALS
	-------------------------------
	-- inputs frequency word
	signal fw_tb                  : std_logic_vector(1 downto 0);
	-- output signals (the declaration is useful to make it visible without observing the ddfs component)
	signal ddfs_out_tb            : std_logic_vector(7 downto 0);
		
	   
	   
   begin
   
     	 -- clk variation
	clk_tb                 <= (not(clk_tb) and stop_simulation) after T_CLK / 2;
	 -- reset control
	a_rst_h_tb             <= '0' after T_reset;
	-- stopping the simulation after T_sim
	stop_simulation        <= '0' after T_sim;
		
	test_mapper: mapper_ask
		 port map      ( -- input symbols
				i_meta_sym   => fw_tb, -- 2 bits input
				-- clock of the system 
				i_clk        => clk_tb,
                        	-- Asynchronous active - high reset
				i_rstb    => a_rst_h_tb,
				-- output waveform
				o_mapper     => ddfs_out_tb -- 8 bits output
				);
		
	input_process : process
		
		
		begin
		   
           a_rst_h_tb <='1';
            fw_tb   <= (others => '0');
	    wait for 2 * T_max_period + T_reset;
    	   
	    for i in 0 to 3 loop
      		fw_tb   <= std_logic_vector(to_UNSIGNED(i,2)); -- Apply i to fw_tb so  A=00 01 10 11
      	        wait for 2 * T_max_period + T_reset;
     	    end loop;
    

            wait until a_rst_h_tb = '0';
         
            wait for 2 * T_max_period + T_reset;
            
            wait until stop_simulation = '0';
		
		
end process input_process;

end testbench;		
        

