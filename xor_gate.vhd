library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity xor_gate is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           z : out  STD_LOGIC);
end xor_gate;

architecture Behavioral of xor_gate is
	
	--and gate component decleration
	component and_gate is
		port(
			x,y : in std_logic;
			z : out std_logic
		);
	end component;
	
	--or gate component decleration
	component or_gate is
		port(
			x,y : in std_logic;
			z : out std_logic
		);
	end component;
	
	--not gate component decleration
	component not_gate is
		port(
			m : in std_logic;
			n : out std_logic
		);
	end component;

	signal s1, s2, s3, s4 : std_logic;
begin
	--creating instance of the component and port mapping
	A1 : and_gate port map(x=>s3, y=>x, z=>s1);
	A2 : and_gate port map(x=>s4 , y=>y, z=>s2);
	N1 : not_gate port map(m=>y,n=>s3);
	N2 : not_gate port map(m=>x,n=>s4);
	O1 : or_gate port map(x=>s1,y=>s2,z=>z);

end Behavioral;

