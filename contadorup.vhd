library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contadorup is 
    Port (
        clock, reset, en : IN std_logic;
        count : OUT std_logic_vector(3 downto 0));
end contadorup;

architecture solucion of contadorup is 
    signal counter_reg : std_logic_vector(3 downto 0);
begin
    process(clock, reset)
    begin 
        if reset = '1' then counter_reg <= "0000"; -- Se resetea el contador 
        elsif (clock' event and clock = '1') then
            if en = '1' then -- habilita el contador
                if counter_reg = "1111" then counter_reg <= "0000";
                else
                    counter_reg <= std_logic_vector(unsigned(counter_reg) + 1); -- incrementa en 1
                end if;
            end if;
        end if;
    end process;
    count <= counter_reg; -- salida del contador 
end solucion;