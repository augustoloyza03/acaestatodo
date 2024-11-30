library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decision is

port ( reset : in std_logic;
       clk : in std_logic;
		 V1,V2,V3,V4 :in std_logic_vector (3 downto 0); 
		 O1,O0 :in std_logic;
		 ea:out std_logic :='1' ;
		 GI,GD,eg:out std_logic
		 
		 );
end entity;		 


architecture rtl of decision is

	signal v1_1 : integer range 0 to 15;
	signal v2_2 : integer range 0 to 15;
	signal v3_3 : integer range 0 to 15;
	signal v4_4 : integer range 0 to 15;
   signal O : std_logic_vector (1 downto 0);
	signal gi_1: std_logic ;
	signal gd_1: std_logic ;
begin
v1_1<= to_integer(unsigned(V1));
v2_2<= to_integer(unsigned(V2));
v3_3<= to_integer(unsigned(V3));
v4_4<= to_integer(unsigned(V4));
 O<= O1 & O0;
 
 
 process (reset,clk,O,v1_1,v2_2,v3_3,v4_4)
  begin
  
  if reset= '0' then
   GI<='0'; GD<='0' ;ea<='1';eg<='0' ;
	elsif (rising_edge(clk)) then
	 --if C='0' then
	 --GI<='0'; GD<='0' ;ea<='1';eg<='0' ; R<='0';
   case O is
    when "00"=> 
	   if ((v1_1< v2_2) and (v1_1< v3_3) and (v1_1< v4_4)) then
		 GI<='1'; GD<='1' ;ea<='0';eg<='1'; --R<='1'
		 elsif ((v2_2<= v1_1) and (v2_2<= v3_3) and (v2_2< v4_4)) then
	     GI<='1'; GD<='0' ;ea<='0';eg<='1' ; --R<='1'
        elsif ((v3_3<= v1_1) and (v3_3< v2_2) and (v3_3< v4_4)) then
	     GI<='0'; GD<='0' ;ea<='1';eg<='0' ; --R<='1'
		   elsif ((v4_4<= v1_1) and (v4_4<= v2_2) and (v4_4<=v3_3)) then
	     GI<='0'; GD<='1' ;ea<='0';eg<='1' ; --R<='1'
		  end if;
	 when "01" => 
	   if ((v1_1<= v2_2) and (v1_1<= v3_3) and (v1_1<= v4_4)) then
		 GI<='1'; GD<='0' ;ea<='0';eg<='1' ;--R<='1' 
		 elsif ((v2_2< v1_1) and (v2_2<= v3_3) and (v2_2<= v4_4)) then
	     GI<='0'; GD<='0' ;ea<='1';eg<='0' ;--R<='1' 
        elsif ((v3_3< v1_1) and (v3_3< v2_2) and (v3_3<= v4_4)) then
	     GI<='0'; GD<='1' ;ea<='0';eg<='1' ;--R<='1' 
		   elsif ((v4_4< v1_1) and (v4_4< v2_2) and (v4_4< v3_3)) then
	     GI<='1'; GD<='1' ;ea<='0';eg<='1' ; --R<='1';
		  end if;
	 when "10" => 
	   if ((v1_1<= v2_2) and (v1_1<= v3_3) and (v1_1<= v4_4)) then
		 GI<='0'; GD<='1' ;ea<='0';eg<='1' ; 
		 elsif ((v2_2< v1_1) and (v2_2< v3_3) and (v2_2< v4_4)) then
	     GI<='1'; GD<='1' ;ea<='0';eg<='1' ; 
        elsif ((v3_3< v1_1) and (v3_3<= v2_2) and (v3_3<= v4_4)) then
	     GI<='1'; GD<='0' ;ea<='0';eg<='1' ; 
		   elsif ((v4_4< v1_1) and (v4_4<= v2_2) and (v4_4< v3_3)) then
	     GI<='0'; GD<='0' ;ea<='1';eg<='0' ; 
		  end if;	  
     when "11" => 
	   if ((v1_1<=v2_2) and (v1_1<= v3_3) and (v1_1< v4_4)) then
			GI<='0'; GD<='0' ;ea<='1';eg<='0' ; 
		elsif ((v2_2< v1_1) and (v2_2<= v3_3) and (v2_2< v4_4)) then
			GI<='0'; GD<='1' ;ea<='0';eg<='1' ; 
		elsif ((v3_3< v1_1) and (v3_3< v2_2) and (v3_3< v4_4)) then
			GI<='1'; GD<='1' ;ea<='0';eg<='1' ; 
	   elsif ((v4_4<= v1_1) and (v4_4<=v2_2) and (v4_4<= v3_3)) then
			GI<='1'; GD<='0' ;ea<='0';eg<='1' ; 
		end if;
      end case;
	 end if;	
	end process; 
	end architecture;