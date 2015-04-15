Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity program_counter is
generic (N : natural :=8 ); 
port (adr_in : in std_logic_vector (N-1 downto 0);
		clk : in std_logic;
		reset : in std_logic;
		adr_out: out std_logic_vector(N-1 downto 0) 
		);
end program_counter;

architecture program_countera of program_counter is
	
begin
	process	(clk, reset)
		variable o : std_logic_vector(N-1 downto 0);
	begin
	if(rising_edge(clk))
	then if(reset = '1')
		 then o := "00000000";
		 else
				o := adr_in+1;
		end if;
		end if;
	adr_out <= o;
	end process;
end program_countera ;