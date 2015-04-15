Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity incrementn is
generic (N : natural :=8 ); 
port(	adr_in : in std_logic_vector (N-1 downto 0);
		adr_out : out std_logic_vector(N-1 downto 0)
		);
end incrementn;

architecture incrementna of incrementn is
begin
process (adr_in)
variable o : std_logic_vector(N-1 downto 0);
begin
	o := adr_in+1;
	adr_out <= o;
end process;
end incrementna;