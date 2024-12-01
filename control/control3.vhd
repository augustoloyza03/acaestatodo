library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
ENTITY control3 IS
    PORT (clk : in  std_logic;
	 reset    : in  std_logic;
	 ea,s,O1,O0 :in  std_logic;
	  M: out std_logic_vector (3 downto 0)
	  );
	  end entity;
	  
architecture rtl of control3 is	  
signal M_int: std_logic_vector (3 downto 0);
signal o: std_logic_vector (1 downto 0);
signal M_int3,M_int2,M_int1,M_int0: std_logic;     
 begin
 o<= O1 & O0;
  process (clk, reset,o,s,ea)
    begin
	  if reset = '0' then
            M_int3<=  '0';M_int2<=  '0';M_int1<=  '0';M_int0<=  '0';
	  elsif rising_edge(clk) then
        if s='1' and ea='1' then
			case o is
				when "00" =>
				M_int2<=  '1';
				when "01" =>
			   M_int1<=  '1';
			   when "10" =>
         	M_int0<= '1';
			   when "11" =>
			   M_int3<=  '1';
		 end case;
		end if;
	 end if;
M_int<= M_int3 & M_int2 & M_int1 & M_int0;
	end process;
 	
M<= M_int;	
end rtl;	 
		 
		 
		
 
 