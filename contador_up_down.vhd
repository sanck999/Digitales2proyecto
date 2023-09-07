library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all;
-- se agregan las librerias que usaremos 
Entity contador_up_down is 
	Port(
			clock, reset, en, up: IN std_logic;
			count: 					OUT std_logic_vector(3 downto 0));
end contador_up_down;

architecture solucion of contador_up_down is 
	signal counter_reg : std_logic_vector(3 downto 0);
	begin
		process(en,up)
		begin 
			if reset = '0' then
				counter_reg <= "0000"; -- Se resetea el contador 
			--elsif rising_edge(clock) then -- otra forma de saber el flanco de subida
			elsif (clock' event and clock = '1') then 
				if (counter_reg = "1111") then counter_reg <= "0000";
				elsif (en = '1') then  -- habilita el contador up down
					if (up = '1') then  -- habilita la suma o resta
						counter_reg <= counter_reg + 1;-- incrementqa en 1
					else 
						counter_reg <= counter_reg - 1;-- decrementa en 1
					end if;
				end if;
			end if;
		end process;
	count <= counter_reg; -- salida del contador 
end solucion;
