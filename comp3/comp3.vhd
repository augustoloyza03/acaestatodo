LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY comp3 IS
	PORT
	(
		clock, reset, en_clk : IN STD_LOGIC;
		salida1 : OUT STD_LOGIC
	);
END comp3;

ARCHITECTURE compa2 OF comp3 IS
	SIGNAL cuenta : unsigned(19 downto 0) := (others => '0');
BEGIN

	process (clock, reset)
	begin
			if reset = '0' then
				cuenta <= (others => '0');
			elsif rising_edge(clock) and en_clk= '0' then
				cuenta <= cuenta + 1;
			end if;
		end process;

	salida1 <= '0' when cuenta < to_unsigned(50000, 20) else '1';  ---NO TOCARRR
	

END compa2;