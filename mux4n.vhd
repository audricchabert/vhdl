Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mux4n is -- Porte AND à N entrèes
generic (N : natural :=2 ); -- valeur par defaut
port (E1 : in Std_logic_vector (N-1 downto 0) ;
		E2	: in Std_logic_vector (N-1 downto 0) ;
		E3 : in Std_logic_vector (N-1 downto 0) ;
		E4	: in Std_logic_vector (N-1 downto 0) ;
		C : in std_logic_vector (1 downto 0) ;
		OUTPUT : out Std_logic_vector (N-1 downto 0) );
end mux4n ;

architecture mux4na of mux4n is
begin

with C select
	OUTPUT <=
	E1 when "00",
	E2 when "01",
	E3 when "10",
	E4 when "11";
	

end mux4na ;