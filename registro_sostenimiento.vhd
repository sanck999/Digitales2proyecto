library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- se puede cambiar el n
entity registro_sostenimiento is
	 generic ( n: integer := 4);
    Port (
        data_in  : in STD_LOGIC_VECTOR(n-1 downto 0);
        clk      : in STD_LOGIC;
        reset    : in STD_LOGIC;
        enable   : in STD_LOGIC;
        data_out : out STD_LOGIC_VECTOR(n-1 downto 0)
    );
end registro_sostenimiento;

architecture Behavioral of registro_sostenimiento is
    signal reg_data : STD_LOGIC_VECTOR(n-1 downto 0);
begin
    process (clk, reset)
    begin
        if reset = '1' then
            reg_data <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                reg_data <= data_in;
            end if;
        end if;
    end process;

    data_out <= reg_data;
end Behavioral;
