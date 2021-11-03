library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity not_gate is
    Port ( m : in  STD_LOGIC;
           n : out  STD_LOGIC);
end not_gate;

architecture Behavioral of not_gate is

begin
	n <= not m;
end Behavioral;