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
	type state_type is (Nd, Sd, Ed, Od, Ng, Sg, Eg, Og);

	-- Register to hold the current state
	signal state : state_type;
	signal g : std_logic_vector(3 downto 0);

	-- Registers to hold outputs
	signal o0_reg : std_logic := '0';
	signal o1_reg : std_logic := '0';

begin
     process (clk, reset)
	  begin
       if (gd='1' and gi='1') or (gd='0' and gi='0') then	
		g <= (gi & gd & '0' & tc2);
		elsif (gd='1' and gi='0') or (gd='0' and gi='1')  then                  -- Uno en todo momento hasta que termina
      g <= (gi & gd & tc1 & '0');
		end if;
		-- Logic to advance to the next state
		
		
			if reset = '0' then
				state <= Nd;
			elsif (rising_edge(clk)) then
				case state is
					when Nd =>
						case g is
							when  "0001" => state <= Nd;
							when "1101" => state <= Sg;
							when "1010" => state <= Og;
							when "0110" => state <= Eg;
							when others => state <= Nd;
						end case;
					when Ed =>
						case g is
							when "0010" => state <= Ed;
							when "0110" => state <= Sg;
							when "1010" => state <= Ng;
							when "1101" => state <= Og;
							when others => state <= Ed;
						end case;
					when Sd =>
						case g is
							when "0010" => state <= Sd;
							when "0110" => state <= Og;
							when "1010" => state <= Eg;
							when "1101" => state <= Ng;
							when others => state <= Sd;
						end case;
					when Od =>
						case g is
							when "0010" => state <= Od;
							when "0110" => state <= Ng;
							when "1010" => state <= Sg;
							when "1101" => state <= Eg;
							when others => state <= Od;
						end case;
					when Ng =>
						if g = "0000"  then state <= Nd; end if;
					when Eg =>
						if g = "0000" then state <= Ed; end if;
					when Sg =>
						if g = "0000" then state <= Sd; end if;
					when Og =>
						if g = "0000" then state <= Od; end if;
				end case;
			end if;
	end process;

	-- Update outputs based on the state
	process (clk, reset)
	begin
		if reset = '0' then
			o0_reg <= '1';
			o1_reg <= '1';
		elsif (rising_edge(clk)) then
			case state is
				when Nd =>
					o0_reg <= '1';
					o1_reg <= '1';
				when Ed =>
					o0_reg <= '1';
					o1_reg <= '0';
				when Sd =>
					o0_reg <= '0';
					o1_reg <= '0';
				when Od =>
					o0_reg <= '0';
					o1_reg <= '1';
				when others =>
					-- Mantener el valor anterior en los estados Ng, Sg, Eg, Og
					null;
			end case;
		end if;
	end process;

	-- Assign the outputs
	o0 <= o0_reg;
	o1 <= o1_reg;

	-- Control de clearcountdoblar
	process (state)
	begin
		if state = Ng or state = Sg or state = Eg or state = Og then
			clearcountdoblar <= '0';
		else
			clearcountdoblar <= '1';
		end if;
	end process;

end rtl;
