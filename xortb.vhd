
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY xortb IS
END xortb;
 
ARCHITECTURE behavior OF xortb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT xor_gate
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';

 	--Outputs
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: xor_gate PORT MAP (
          x => x,
          y => y,
          z => z
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc1: process
   begin		
		wait for 100 ns;
		x <= not x;
   end process;
	
	stim_proc2: process
	begin
		wait for 50 ns;
		y <= not y;
	end process;

END;
