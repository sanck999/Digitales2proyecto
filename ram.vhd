library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram is
    Port (
        addr   : in  std_logic_vector(3 downto 0);
        we, clk: in  std_logic;
        data_i : in  std_logic_vector(17 downto 0);
        data_o : out std_logic_vector(17 downto 0)
    );
end ram;

architecture archxi of ram is
    type ram_table is array (0 to 15) of std_logic_vector(17 downto 0);
    signal rammemory : ram_table;

begin
    process(we, clk, addr)
    begin
        if rising_edge(clk) then
            if we = '1' then
                rammemory(to_integer(unsigned(addr))) <= data_i; -- Modifica el valor
            end if;
        end if;
    end process;

    data_o <= rammemory(to_integer(unsigned(addr))); -- Lee el valor

end archxi;
