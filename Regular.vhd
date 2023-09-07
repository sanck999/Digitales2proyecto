library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Regular is
    Port (
        regularManual : in  std_logic;--señal del interruptor 
        clk        : in  std_logic;--señal del reloj
        reset      : in  std_logic;--señal del reset
        ajustar    : in  std_logic;--señal del pulsador 
        en_sostenimiento : out std_logic;--señal de los registros de sostenimiento
        write_read       : out std_logic;--señal para la memoria RAM
        en_contadorup    : out std_logic;--señal del contadorup
        en_agrupa        : out std_logic --señal del bloque agrupa
    );
end Regular;

architecture Behavioral of Regular is
    signal sostenimiento_active : boolean := false;
    signal ajustar_pressed      : boolean := false;

begin
    process(clk, reset)
    begin
        if reset = '1' then -- primer instancia 
            sostenimiento_active <= false;
            ajustar_pressed <= false;
            en_sostenimiento <= '0';
            write_read <= '0';
            en_contadorup <= '0';
            en_agrupa <= '0';
        elsif rising_edge(clk) then
            if regularManual = '1' then -- uno representara cuando sea regular
                sostenimiento_active <= true;-- se activan los registros de sostenimientos 
                en_sostenimiento <= '1';
            else
                sostenimiento_active <= false;--no se activan
                en_sostenimiento <= '0';
            end if;
            
            if ajustar = '1' and not ajustar_pressed then
                ajustar_pressed <= true;
                write_read <= '1';
                en_contadorup <= '1';
                en_agrupa <= '1';
				elsif ajustar = '0' then
					 ajustar_pressed <= false;
                write_read <= '0';
                en_contadorup <= '0';
                en_agrupa <= '0';
            end if;
        end if;
    end process;

end Behavioral;
