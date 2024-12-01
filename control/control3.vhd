ENTITY control3 IS
    PORT (clk : in  std_logic;
	 reset    : in  std_logic;
	 ea,s,O1,O0 :in  std_logic;
	  M: out std_logic_vector (3 downto 0)
	  );
	  
architecture rtl of control3 is	  


 begin
  process (clk, reset)
    begin
	  if reset = '1' then
            M<="0000";
	  elsif rising_edge(clk) then
        if s='1' and ea='1' then
		 case 
		
 
 