library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity and_gate is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : out  STD_LOGIC);
end and_gate;

architecture Behavioral of and_gate is

begin
	z <= x and y;

end Behavioral;