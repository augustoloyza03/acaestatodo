library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nueva_orientacion is

port (
       clk : in std_logic; 
		 O1,O0 :in std_logic;
		 GI,GD: in std_logic;
		 NO1: out std_logic :='1' ; 
		 NO0: out std_logic :='1';
		 S1: out std_logic :='0';
		 S0: out std_logic :='0'
		 );
		 
end entity;		 

architecture rtl of nueva_orientacion is
 signal O : std_logic_vector (1 downto 0);


 begin
 O<= O1 & O0;
 
 process (clk,O,GI,GD)
 begin
 --NO1<='1'; NO0<='1';
 if (rising_edge(clk)) then
  case O is
    when "00"=>
	 --if GD='0' and GI='0' then
	 --NO1<='0'; NO0<='0';
	 if GD='0' and GI='1' then
	 NO1<='0'; NO0<='1'; 
	 elsif GD='1' and GI='0' then
	 NO1<='1'; NO0<='0';
	 elsif GD='1' and GI='1' then
	 NO1<='1'; NO0<='1';
	 end if;
	 when "01"=>
	 --if GD='0' and GI='0' then
	 --NO1<='1'; NO0<='0';
	 if GD='0' and GI='1' then
	 NO1<='1'; NO0<='1';
	 elsif GD='1' and GI='0' then
	 NO1<='0'; NO0<='0';
	 elsif GD='1' and GI='1' then
	 NO1<='1'; NO0<='0';
	 end if;
	 when "10"=>
	 --if GD='0' and GI='0' then
	 --NO1<='0'; NO0<='1';
	 if GD='0' and GI='1' then
	 NO1<='0'; NO0<='0';
	 elsif GD='1' and GI='0' then
	 NO1<='1'; NO0<='1';
	 elsif GD='1' and GI='1' then
	 NO1<='1'; NO0<='1';
	 end if;
	 when "11"=>
	-- if GD='0' and GI='0' then
	 --NO1<='1'; NO0<='1';
	 if GD='0' and GI='1' then
	 NO1<='1'; NO0<='0';
	 elsif GD='1' and GI='0' then
	 NO1<='0'; NO0<='1';
	 elsif GD='1' and GI='1' then
	 NO1<='0'; NO0<='0';
	 end if;
	end case;
  end if;
 end process;
end architecture;