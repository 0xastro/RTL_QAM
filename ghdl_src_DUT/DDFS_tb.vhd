--*********************************************************
---------------------------------------------------------
-- DDFS: Direct Digital Frequency Synthesizer TESSTBENCH
---------------------------------------------------------
-- Module: DDFS_tb to test ddfs module
-- Author: Astro
-- Project: QAM Modulation
-- Delievered to: Digital System Design
-- Supervised by: Prof. Luca Fanucci
---------------------------------------------------------
--*********************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY DDFS_tb is
end DDFS_tb;
   

ARCHITECTURE testbench of DDFS_tb is

	COMPONENT ddfs is 
		port( 
			fw			: in std_logic_vector(11 downto 0);		-- input frequency word
			phase_s 	: in std_logic_vector(11 downto 0);		-- Phase Offset/Starting Phase
			clk 		: in std_logic;							-- clock of the system 
			a_rst_h 	: in std_logic;							-- Asynchronous active - high reset
			out_sinWave : out std_logic_vector(5 downto 0);		-- output waveform sin
			out_cosWave : out std_logic_vector(5 downto 0)		-- output waveform cos
			);
	end COMPONENT;

-----------------------------------------------------------------------------------------------------
-- SIMULATION/TESTBENCH constants declaration
-----------------------------------------------------------------------------------------------------
	   
	CONSTANT T_CLK  : time := 8 ns;								-- CLK period (f_CLK = 125 MHz)  
    CONSTANT T_max_period : time := 4096 * T_CLK;				-- Maximum sine period      
	CONSTANT T_sim  : time := 10 * T_max_period;				-- Simulation time
    CONSTANT T_reset : time := 10 ns;							-- Time before the reset release

-----------------------------------------------------------------------------------------------------
-- signals declaration
-----------------------------------------------------------------------------------------------------
	    
		
	SIGNAL clk_tb			: std_logic := '0'; 				-- clk signal (intialized to '0')
    SIGNAL a_rst_h_tb		: std_logic := '1';					-- Active high asynchronous reset (Active at t = 0)
	SIGNAL stop_simulation	: std_logic := '1';					-- signal to stop the simulation
	SIGNAL fw_tb			: std_logic_vector(11 downto 0); 	-- inputs frequency word
	SIGNAL ddfs_out_tb      : std_logic_vector(5 downto 0);		-- output signals (the declaration is useful to make it visible without observing the ddfs component)
	SIGNAL ddfs_out_cos     : std_logic_vector(5 downto 0);
	SIGNAL phase_tb         : std_logic_vector(11 downto 0);
		
	     
   begin
   		-- clk variation
   		clk_tb                 <= (not(clk_tb) and stop_simulation) after T_CLK / 2;
      	-- reset control
      	a_rst_h_tb             <= '0' after T_reset;
		-- stopping the simulation after T_sim
		stop_simulation        <= '0' after T_sim;
		
		test_ddfs: ddfs     
		    port map (
		    	fw         		=> fw_tb,
				phase_s	   		=> phase_tb,
				clk        		=> clk_tb,
				a_rst_h    		=> a_rst_h_tb,
				out_sinWave     => ddfs_out_tb,
				out_cosWave     => ddfs_out_cos);
		
		input_process : process
		
		
		begin
		   
        
            fw_tb   <= (others => '0');
            wait until a_rst_h_tb = '0';
         
			fw_tb  <= std_logic_vector(to_unsigned(1, 12));
            phase_tb  <= std_logic_vector(to_unsigned(0, 12));

            wait for 6 * T_max_period + T_reset;
            fw_tb  <= std_logic_vector(to_unsigned(1, 12));
            phase_tb  <= std_logic_vector(to_unsigned(3, 12));

            wait for 6 * T_max_period + T_reset;
            fw_tb  <= std_logic_vector(to_unsigned(1, 12));
            phase_tb  <= std_logic_vector(to_unsigned(4, 12));
            
            wait for 6 * T_max_period + T_reset;
            fw_tb  <= std_logic_vector(to_unsigned(1, 12));
            phase_tb  <= std_logic_vector(to_unsigned(8, 12));
                        
            wait until stop_simulation = '0';
		
		
		end process;
		
        
   end testbench;