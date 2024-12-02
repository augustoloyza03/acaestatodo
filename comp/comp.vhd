LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY comp IS
	PORT
	(
		clock, reset : IN STD_LOGIC;
		salida1, salida2 : OUT STD_LOGIC
	);
END comp;

ARCHITECTURE compa OF comp IS
	SIGNAL cuenta : unsigned(19 downto 0) := (others => '0');
BEGIN

	process (clock, reset)
	begin
		if reset = '0' then
			cuenta <= (others => '0');
		elsif rising_edge(clock) then
			cuenta <= cuenta + 1;
		end if;
	end process;

	salida1 <= '1' when cuenta < to_unsigned(1250, 20) else '0';  ---NO TOCARRR
	salida2 <= '1' when cuenta < to_unsigned(2100, 20) else '0'; -- NO TOCARR

END compa;
