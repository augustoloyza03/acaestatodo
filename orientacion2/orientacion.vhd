-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity orientacion is

	port(
		clk		 : in	std_logic;
		gd,gi	 : in	std_logic;
		reset	 : in	std_logic;
		tc1,tc2:in std_logic;
		clearcountdoblar:out std_logic;
		o0,o1	 : out	std_logic
	);

end entity;

architecture rtl of orientacion is

	-- Build an enumerated type for the state machine
	type state_type is (Nd,Sd,Ed,Od,Ng,Sg,Eg,Og);

	-- Register to hold the current state
	signal state   : state_type;
	signal g: std_logic_vector (2 downto 0);

begin
g<= (gi & gd & tc2);---uno en todo momento hasta que termina
	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '0' then
			state <= Nd;
		elsif (rising_edge(clk)) then
			case state is
				when Nd=>
					case g is
						when "001" =>
							state<=Nd;
						when "011" =>
							state<=Eg;
						when "101" =>
							state<=Og;
						when "111" =>
							state<=Sg;
						when others =>
						state<=Nd;
					end case;
				when Ed=>
					case g is
						when "001" =>
							state<=Ed;
						when "011" =>
							state<=Sg;
						when "101" =>
							state<=Ng;
						when "111" =>
							state<=Og;
						when others =>
						state<=Ed;
					end case;
				when Sd=>
					case g is
						when "001" =>
							state<=Sd;
						when "011" =>
							state<=Og;
						when "101" =>
							state<=Eg;
						when "111" =>
							state<=Ng;
						when others =>
						state<=Sd;
					end case;
				when Od =>
					case g is
						when "001" =>
							state<=Od;
						when "011" =>
							state<=Ng;
						when "101" =>
							state<=Sg;
						when "111" =>
							state<=Eg;
						when others =>
						state<=Od;
					end case;
				when Ng=>
					case g is
						when "000" =>
							state<=Nd;
						when "001" =>
							state<=Ng;
						when "011" =>
							state<=Ng;
						when "101" =>
							state<=Ng;
						when "111" =>
							state<=Ng;
						when others =>
						state<=Nd;
					end case;
				when Eg=>
					case g is
						when "000" =>
							state<=Ed;
						when "001" =>
							state<=Eg;
						when "011" =>
							state<=Eg;
						when "101" =>
							state<=Eg;
						when "111" =>
							state<=Eg;
						when others =>
						state<=Ed;
					end case;
				when Sg=>
					case g is
						when "000" =>
							state<=Sd;
						when "001" =>
							state<=Sg;
						when "011" =>
							state<=Sg;
						when "101" =>
							state<=Sg;
						when "111" =>
							state<=Sg;
						when others =>
						state<=Sd;
					end case;
				when Og =>
					case g is
						when "000" =>
							state<=Od;
						when "001" =>
							state<=Og;
						when "011" =>
							state<=Og;
						when "101" =>
							state<=Og;
						when "111" =>
							state<=Og;
						when others =>
						state<=Od;
					end case;	
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when Nd =>
				o0 <= '1';
				o1 <= '1';
				clearcountdoblar <= '1';
			when Ed =>
				o0 <= '1';
				o1 <= '0';
				clearcountdoblar <= '1';
			when Sd =>
				o0 <= '0';
				o1 <= '0';
				clearcountdoblar <= '1';
			when Od =>
				o0 <= '0';
				o1 <= '1';
				clearcountdoblar <= '1';
			when Ng =>
				o0 <= '1';
				o1 <= '1';
				clearcountdoblar <= '0';
			when Eg =>
				o0 <= '1';
				o1 <= '0';
				clearcountdoblar <= '0';
			when Sg =>
				o0 <= '0';
				o1 <= '0';
				clearcountdoblar <= '0';
			when Og =>
				o0 <= '0';
				o1 <= '1';
				clearcountdoblar <= '0';
		end case;
	end process;

end rtl;