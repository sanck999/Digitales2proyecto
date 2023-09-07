library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_de_binario_a_7segmentos is
    Port (
        BIN   : in  std_logic_vector(3 downto 0); -- Cambiar el tamaño si es necesario
        SEG7  : out std_logic_vector(6 downto 0)
    );
end decoder_de_binario_a_7segmentos;

architecture solve of decoder_de_binario_a_7segmentos is
    -- Constantes para cada valor binario específico
    constant SEG_0 : std_logic_vector(6 downto 0) := "0000001";
    constant SEG_1 : std_logic_vector(6 downto 0) := "1001111";
    constant SEG_2 : std_logic_vector(6 downto 0) := "0010010";
    constant SEG_3 : std_logic_vector(6 downto 0) := "0000110";
    constant SEG_4 : std_logic_vector(6 downto 0) := "1001100";
    constant SEG_5 : std_logic_vector(6 downto 0) := "0100100";
    constant SEG_6 : std_logic_vector(6 downto 0) := "0100000";
    constant SEG_7 : std_logic_vector(6 downto 0) := "0001111";
    constant SEG_8 : std_logic_vector(6 downto 0) := "0000000";
    constant SEG_9 : std_logic_vector(6 downto 0) := "0000100";

begin
    process(BIN)
    begin
        case BIN is
            when "0000" => SEG7 <= SEG_0;
            when "0001" => SEG7 <= SEG_1;
            when "0010" => SEG7 <= SEG_2;
            when "0011" => SEG7 <= SEG_3;
            when "0100" => SEG7 <= SEG_4;
            when "0101" => SEG7 <= SEG_5;
            when "0110" => SEG7 <= SEG_6;
            when "0111" => SEG7 <= SEG_7;
            when "1000" => SEG7 <= SEG_8;
            when "1001" => SEG7 <= SEG_9;
            when others => SEG7 <= "1111111"; -- Carácter inválido
        end case;
    end process;
end solve;
