library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


entity doblar2 is

	port(
		clk,reset,tc1,tc2	: in	std_logic;
	   indicacion1,indicacion0 : in	std_logic;
		M1I,M0I,M1D,M0D:buffer std_LOGIC;
		velmi,velmd,clc: out	std_logic
	);

end entity;

architecture rtl of doblar2 is
	-- Build an enumerated type for the state machine
	type state_type is (parado,der,izq,reversa);

	-- Register to hold the current state
	signal state   : state_type;
	signal indicacion: std_logic_vector(1 downto 0);
begin
	
	indicacion<=(indicacion0 & indicacion1);

	-- Logic to advance to the next state	
	process (clk, reset,tc1,tc2)
	begin
		if reset = '0' then
			state <= parado;
		elsif (rising_edge(clk)) then
			case state is
				when parado=>
					if (indicacion="00") then
					   state <= parado;
					 elsif (indicacion="11") then
						state<= reversa;
					 elsif (indicacion="10") then
                  state<= izq;
					 elsif (indicacion="01") then
					   state<= der;
						
			   end if;
				when der=>
					if tc1='1' then
						state <= der;
					else
						state <= parado ;---------------------------------------antes era parado
					end if; 
				when izq=>
					if tc1='1' then
						state <= izq;
					else
						state <=parado ;-------------------------------------antes era parado
					end if;
				when reversa =>
					if tc2='1' then
						state <= reversa;
					else
						state <= parado ;---------antes era parado
					end if;
				--when fin =>
				  --state<= fin;
--					if indicacion= "01" then
--						state <= fin;
--					else
--						state <= fin ;---------agregar adelante
--					end if;	
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when parado =>
				M1I<= '0';M0I<= '0';M1D<= '0';M0D<= '0';
				clc<= '1'; velmd<='0';velmi<='0';
				
			when izq =>
				M1I<= '0';M0I<= '1';M1D<= '1';M0D<= '0';   
				clc<= '0'; velmd<='1';velmi<='1';
			when der =>
				M1I<= '1';M0I<= '0';M1D<= '0';M0D<= '1';
				clc<= '0'; velmd<='1';velmi<='1';	
				
			when reversa =>
				M1I<= '1';M0I<= '0';M1D<= '0';M0D<= '1';
				clc<= '0';velmd<='1';velmi<='1';	
				
			--when fin =>
				--M1I<= '0';M0I<= '0';M1D<= '0';M0D<= '0';
				--clc<= '1';	

			end case;
	end process;

end rtl;