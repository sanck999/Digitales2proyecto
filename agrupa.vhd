library IEEE;
use ieee.std_logic_1164.ALL;

entity agrupa is 
	 generic ( n: integer := 4);
	 port( 
			en : in std_logic;
			dato_1,dato_2 :in std_logic_vector(n-1 downto 0);
			dato_unido : out std_logic_vector((n*2)-1 downto 0));
end agrupa;

architecture solucion of agrupa is 
begin
	process(dato_1,dato_2,en)
	begin 
		if(en = '1') then 
			dato_unido <= dato_1 & dato_2;--une los datos 
		else
		dato_unido <= (others => '0'); -- sino se habilita el enable
		end if;
	end process;
end solucion;