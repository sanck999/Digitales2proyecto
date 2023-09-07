library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux2x1 is
    generic (
        N : integer := 4  -- Tamaño de las entradas en bits (cambia según tus necesidades)
    );
    Port (
        D0, D1 : in std_logic_vector(N-1 downto 0);  -- Dos entradas de n bits
        S : in std_logic;  -- Señal de selección
        Y : out std_logic_vector(N-1 downto 0)  -- Salida de n bits
    );
end Mux2x1;

architecture Behavioral of Mux2x1 is
begin
    process (S, D0, D1)
    begin
        if S = '0' then
            Y <= D0;  -- Si S es 0, seleccionar contador down memoria
        else
            Y <= D1;  -- Si S es 1, seleccionar contador up regular
        end if;
    end process;
end Behavioral;
