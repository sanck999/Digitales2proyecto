library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MSS is
    Port (
		  clk, reset: in std_logic;  -- Señales de clock y reset
        auto_manual, regular_memoria, abrir, cerrar, ajustar, atras, fin : in std_logic; 
        en_sostenimiento, sel_mux, en_agrupa, 
		  write_read, en_contadorup, en_contadordown,
		  en_sos_ram, en_servomotor, reset_sos, reset_contup, 
		  reset_contdown, reset_resRam, en_manual, reset_manual: out std_logic
    );
end MSS;

architecture Behavioral of MSS is
    -- Declaración de estados
    type Estado is (Ta, Tb, Tc, Td, Te, Tf, Tg, Th, Ti);
    signal estado_actual, estado_siguiente : Estado;

begin
    -- Proceso de la MSS
    proceso_mss: process (clk, reset,estado_actual, auto_manual, regular_memoria, ajustar, fin)
    begin
	     if reset = '1' then estado_actual <= Ta;
        elsif rising_edge(clk) then
            estado_actual <= estado_siguiente;
        end if;
        -- Transiciones entre estados
        case estado_actual is
            when Ta =>
                reset_sos <= '1';
                reset_contup <= '1';
                reset_contdown <= '1';
                reset_resRam <= '1';
					 reset_manual <= '1';
					 en_servomotor <= '0';
					 write_read <= '0';
					 en_agrupa <= '0';
                if auto_manual = '1' then estado_siguiente <= Tc; else estado_siguiente <= Tb; end if;
					 
				when Tb => 
				en_manual <= '1';
				if auto_manual = '0' then
				if (abrir = '0') then en_servomotor <= '1'; else en_servomotor <= '0'; end if;end if;

            when Tc => 
					 en_contadordown <= '0';
					 en_manual <= '0';
					 en_agrupa <= '0';
					 en_contadorup <= '0';
					 reset_contup <= '1';
					 sel_mux <= '0';
					 write_read <= '0';
					 if regular_memoria = '0' then estado_siguiente <= Td; else estado_siguiente <= Tf; end if;
				
            when Td =>
					 en_sostenimiento <= '1'; 
					 sel_mux <= '1';
                if ajustar = '1' then estado_siguiente <= Te; else estado_siguiente <= Td; end if;
            
            when Te =>
				        en_agrupa <= '1';
                    write_read <= '1';
                    en_contadorup <= '1';
                if fin = '0' then estado_siguiente <= Td;else estado_siguiente <= Tc;end if;
					 
            when Tf =>
						  en_sos_ram <= '1';
                    write_read <= '0';
                    sel_mux <= '0';
                if atras = '1' then estado_siguiente <= Tg;else estado_siguiente <= Tf;end if;
            
            when Tg =>
						  en_contadordown <= '1';
                if ajustar = '0' then estado_siguiente <= Tg;else estado_siguiente <= Ti;end if;
            
            when Ti =>
                en_servomotor <= '1';
                write_read <= '1';
					 en_contadorup <= '0';
                reset_contdown <= '1';
					 estado_siguiente <= Tc;
            
            when others =>
                estado_siguiente <= Ta;
        end case;
    end process proceso_mss;

end Behavioral;
