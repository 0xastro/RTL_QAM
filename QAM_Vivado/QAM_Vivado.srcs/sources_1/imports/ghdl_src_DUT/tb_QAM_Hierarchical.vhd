LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

ENTITY tb_QAM_Hierarchical is
END tb_QAM_Hierarchical;


ARCHITECTURE testbench of tb_QAM_Hierarchical is

COMPONENT QAM_Hierarchical is
	  port (
	    input_stream              : in std_logic_vector(1 downto 0); 
	    i_clk                     : in std_logic;
	    i_rst_h                   : in std_logic;
	    PASSBAND                  : out std_logic_vector(7 downto 0);  -- sin Mixer Output
	    i_fcw                     : in  std_logic_vector(11 downto 0)  -- Frequency Control Word [Phase Increment]
	  );
END COMPONENT;

-----------------------------------------------------------------------------------------------------
-- constants declaration
-----------------------------------------------------------------------------------------------------
	   
-- CLK period (f_CLK = 125 MHz)
   CONSTANT T_CLK  : time := 8 ns;
 -- Maximum sine period
   CONSTANT T_max_period : time := 4096 * T_CLK;
-- Simulation time
   CONSTANT T_sim  : time := 100 * T_max_period;
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
	-- signal for symbol duration
	SHARED VARIABLE T_symbol_duration : time := 33 us;

	------------------------------
	-- APPLICATION SPECIFIC SIGNALS
	-------------------------------
	-- freq_Word
	SIGNAL T_FCW 			  : std_logic_vector(11 downto 0);
	SIGNAL in_stream          : std_logic_vector(1 downto 0);		 
	SIGNAL tb_signal_out      : std_logic_vector(7 downto 0);
	   
   begin
   		-- clk variation	   
		clk_tb                 <= (not(clk_tb) and stop_simulation) after T_CLK / 2;
	 	-- reset control
		a_rst_h_tb             <= '0' after T_reset;
		-- stopping the simulation after T_sim
		--stop_simulation        <= '0' after T_sim;
		-- instead control the simulation via command line argument
		-- ghdl -r tb_IQ_Adder --stop-time=10000000ns --vcd=qam_mod.vcd 

		
	i_DUT_QAM_H: QAM_Hierarchical
		 port map (
			input_stream 	=> in_stream, 	-- 2 bits input
			i_clk			=> clk_tb, 		-- clock of the system 
			i_rst_h			=> a_rst_h_tb,	-- Asynchronous active - high reset
			PASSBAND     	=> tb_signal_out,		-- output waveform
			i_fcw			=> T_FCW
			);
		
	input_process : process
			
		begin
		  
		    T_FCW   <= (others => '0');
		    in_stream  <= (others => '0');
		    a_rst_h_tb <= '0';
			--wait until a_rst_h_tb = '0';

            T_FCW  <= std_logic_vector(to_unsigned(1, 12));

            --TESTING VECOTRS
            --report "test passed for input combination 00" severity error;
            --Dummy Loop To do not Halt Simulation
          	for I in 0 to 100 loop 

				in_stream  <= "00";
		    	wait for T_symbol_duration;
				in_stream  <= "01";
		    	wait for T_symbol_duration;
				in_stream  <= "10";
		    	wait for T_symbol_duration;
				in_stream  <= "11";
		    	wait for T_symbol_duration;

			end loop;

		end process;

END testbench;		
        

