LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

ENTITY tb_IQ_Adder is
END tb_IQ_Adder;


ARCHITECTURE testbench of tb_IQ_Adder is

component IQ_Adder is
	  port (
	    input_stream              : in  std_logic_vector(1 downto 0); 
	    i_clk                     : in std_logic;
	    i_rst_h                   : in std_logic;
	    PASSBAND                  : out std_logic_vector(8 downto 0);  -- sin Mixer Output
	    i_fcw                     : in  std_logic_vector(11 downto 0)  -- Frequency Control Word [Phase Increment]
	  );
end component;

-----------------------------------------------------------------------------------------------------
-- constants declaration
-----------------------------------------------------------------------------------------------------
	   
-- CLK period (f_CLK = 125 MHz)
   constant T_CLK  : time := 8 ns;
 -- Maximum sine period
   constant T_max_period : time := 4096 * T_CLK;
-- Simulation time
   constant T_sim  : time := 100 * T_max_period;
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
	-- freq_Word
	signal ddfs_in 			  : std_logic_vector(11 downto 0);
	signal in_stream          : std_logic_vector(1 downto 0);
		 
	   
   begin
   		-- clk variation	   
		clk_tb                 <= (not(clk_tb) and stop_simulation) after T_CLK / 2;
	 	-- reset control
		a_rst_h_tb             <= '0' after T_reset;
		-- stopping the simulation after T_sim
		stop_simulation        <= '0' after T_sim;

		
	i_DUT_adder: IQ_Adder
		 port map (
			input_stream 	=> in_stream, 	-- 2 bits input
			i_clk			=> clk_tb, 		-- clock of the system 
			i_rst_h			=> a_rst_h_tb,	-- Asynchronous active - high reset
			PASSBAND     	=> open,		-- output waveform
			i_fcw			=> ddfs_in
			);
		
	input_process : process
		
		
		begin
		  
		    ddfs_in   <= (others => '0');
		    in_stream  <= (others => '0');
		    a_rst_h_tb <= '0';
			--wait until a_rst_h_tb = '0';

            ddfs_in  <= std_logic_vector(to_unsigned(1, 12));
	    	in_stream  <= "01";
	    	wait for 2 * T_max_period + T_reset;
            --TESTING VECOTRS

	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "00";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "01";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "10";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "11";
            

            --TESTING VECOTRS @ fcw=3
            ddfs_in  <= std_logic_vector(to_unsigned(3, 12));
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "00";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "01";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "10";
	    	wait for 2 * T_max_period + T_reset;
			in_stream  <= "11";


            --wait;
            wait until stop_simulation = '0';
		
		
end process;

end testbench;		
        

