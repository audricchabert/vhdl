Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mux2n is -- Porte AND à N entrèes
generic (N : natural :=2 ); -- valeur par defaut
port (E1 : in Std_logic_vector (N-1 downto 0) ;
		E2	: in Std_logic_vector (N-1 downto 0) ;
		C : in std_logic;
		OUTPUT : out Std_logic_vector (N-1 downto 0) );
end mux2n ;

architecture mux2na of mux2n is
begin
process(C,E1,E2)
	variable O : Std_logic_vector (N-1 downto 0);
begin
	if ( C='0') then
		O := E1;
	else
		O := E2;
	end if;
	OUTPUT<=O;
end process  ;
end mux2na ;