--*********************************************************
---------------------------------------------------------
-- FullAdder: 1-Bit Ripple Carry Adder Module 
---------------------------------------------------------
-- Module: full_adder.vhd
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


ENTITY fullAdder is
        port( 
                a   : in std_logic;                 -- Input of the full-adder
                b   : in std_logic;                 -- Input of the full-adder           
                c_i : in std_logic;                 -- Carry input 
                o   : out std_logic;                -- Output of the full-adder
                c_o : out std_logic                 -- Carry output
            );
end fullAdder;


ARCHITECTURE data_flow of fullAdder is
   
   begin
   
      o   <= a xor b xor c_i;  
      c_o <= (a and b) or (b and c_i) or (c_i and a);
   
   end data_flow;
    