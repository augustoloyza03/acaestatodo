-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity giro is

	port(
		clk		 : in	std_logic;
		GI,GD	 : in	std_logic;
		reset	 : in	std_logic;
		NGI,NGD	 : out	std_logic
	);

end entity;

architecture rtl of giro is

	-- Build an enumerated type for th state machine
	type state_type is (ocioso, I, D, R);

	-- Register to hold the current state
	signal state   : state_type;
	signal G : std_logic_vector (1 downto 0);

begin

	-- Logic to advance to the next state
	G <= GI & GD;
	process (clk, reset)
	begin
		if reset = '1' then
			state <= ocioso;
		elsif (rising_edge(clk)) then
			case state is
				when ocioso=>
					if G="10" then
						state <= I;
					elsif G="01" then
						state <=D;
					elsif G="11" then
						state <=R;
					else 
					   state <=ocioso;
					end if;
				when I=>
					if G="10" then
						state <= R;
					elsif G="01" then
						state <=ocioso;
					elsif G="11" then
						state <=D;
					else 
					   state <=I;
					end if;
				when D=>
					if G="10" then
						state <= ocioso;
					elsif G="01" then
						state <=R;
					elsif G="11" then
						state <=I;
					else 
					   state <=D;
					
					end if;
				when R =>
					if G="10" then
						state <= D;
					elsif G="01" then
						state <=I;
					elsif G="11" then
						state <=ocioso;
					else 
					   state <=R;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when ocioso =>
				NGI <= '0'; NGD<= '0';
			when I =>
				NGI <= '1'; NGD<= '0';
			when D =>
				NGI <= '0'; NGD<= '1';
			when R =>
				NGI <= '1'; NGD<= '1';
		end case;
	end process;

end rtl;