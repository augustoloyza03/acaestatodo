library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity distancia_lab is
    port (
        reset      : in  std_logic;   --activo bajo
        clock : in  std_logic;
        distancias_salida : out std_logic_vector(127 downto 0); --16 numeros de 8 bits (4 de distancia y 4 de pared) salida
        distancias : in std_logic_vector(3 downto 0);
		  p0, p1, p2, p3: in std_logic
    );
end entity;

architecture behavioral of distancia_lab is
	 type array16x8 is array (0 to 15) of std_logic_vector(7 downto 0);
    signal distancias_dato : array16x8;
	 signal valor : integer;
	 
	function min_vecinos(seleccion: integer; distances: array16x8) return unsigned is    -- funciÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â³n para obtener la distancia mÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­nima de los vecinos
		   type array4x8 is array (0 to 3) of std_logic_vector(7 downto 0);
         variable vecinos : array4x8;  -- tienen 4 vecinos cada uno
		   variable vec_min :std_logic_vector(7 downto 0);
			
			begin
				case seleccion is
					when 0  => vecinos := (distances(1)(7 downto 0), distances(4)(7 downto 0), "11110000", "11110000");
					when 1  => vecinos := (distances(2)(7 downto 0), distances(5)(7 downto 0), distances(0)(7 downto 0), "11110000");
					when 2  => vecinos := (distances(3)(7 downto 0), distances(6)(7 downto 0), distances(1)(7 downto 0), "11110000");
					when 3  => vecinos := ( "11110000", distances(7)(7 downto 0), distances(2)(7 downto 0), "11110000");
					when 4  => vecinos := (distances(5)(7 downto 0), distances(8)(7 downto 0),"11110000", distances(0)(7 downto 0));
					when 5  => vecinos := (distances(6)(7 downto 0), distances(9)(7 downto 0), distances(4)(7 downto 0), distances(1)(7 downto 0));
					when 6  => vecinos := (distances(7)(7 downto 0), distances(10)(7 downto 0), distances(5)(7 downto 0), distances(2)(7 downto 0));
					when 7  => vecinos := ("11110000", distances(11)(7 downto 0), distances(6)(7 downto 0), distances(3)(7 downto 0));
					when 8  => vecinos := (distances(9)(7 downto 0), distances(12)(7 downto 0), "11110000",distances(4)(7 downto 0));
					when 9  => vecinos := (distances(10)(7 downto 0), distances(13)(7 downto 0), distances(8)(7 downto 0), distances(5)(7 downto 0));
					when 10 => vecinos := (distances(11)(7 downto 0), distances(14)(7 downto 0), distances(9)(7 downto 0), distances(6)(7 downto 0));
					when 11 => vecinos := ("11110000", distances(15)(7 downto 0), distances(10)(7 downto 0), distances(7)(7 downto 0));
					when 12 => vecinos := (distances(13)(7 downto 0),"11110000","11110000", distances(8)(7 downto 0));
					when 13 => vecinos := (distances(14)(7 downto 0),"11110000", distances(12)(7 downto 0), distances(9)(7 downto 0));
					when 14 => vecinos := (distances(15)(7 downto 0), "11110000", distances(13)(7 downto 0), distances(10)(7 downto 0));
					when others => vecinos := ("11110000", "11110000", "11110000", "11110000");
				end case;
				
				vec_min := "11110000";
				
				if  distances(seleccion)(4)='1' then
					vecinos(1) :="11110000";
				end if;
				
				if  distances(seleccion)(5)='1' then
					vecinos(2) :="11110000";
				end if;
				
				if  distances(seleccion)(6)='1' then
					vecinos(3) :="11110000";
				end if;
				
				if  distances(seleccion)(7)='1' then
					vecinos(0) :="11110000";
				end if;

				for j in 0 to 3 loop --- para encontrar el minimo de lo obtenidos
					if unsigned(vecinos(j)) < unsigned(vec_min) then
						vec_min :=(vecinos(j));
					end if;
				end loop;
	return unsigned(vec_min);
	end function;


	
	
begin

	process(clock, reset,p3,p2,p1,p0)
	begin

	  valor <= to_integer(p3 & p2 & p1 & p0);
	  valor <= to_integer(to_unsigned(valor, 4) + to_unsigned(1, 4)) ;
     if reset = '0' then
			for i in 0 to 15 loop
              if i = 15 then
                  distancias_dato(i) <= "00000000"; -- casilla final la inicializo en 0000
              elsif i= 14 or i= 11 then
                  distancias_dato(i) <= "00010000";  -- inicializo 1
				  elsif i= 13 or i= 10 or i= 7 then
                  distancias_dato(i) <= "00100000";  -- inicializo 2
				  elsif i= 12 or i= 9 or i= 6 or i= 3 then
                  distancias_dato(i) <= "00110000"; --inicializo 3
				  elsif i= 8 or i= 5 or i= 2 then
                  distancias_dato(i) <= "01000000"; -- inicializo 4
				  elsif i= 4 or i= 1 then
                  distancias_dato(i) <= "01010000";
				  elsif i= 0 then
                  distancias_dato(i) <= "01100000";
						end if;
   	  end loop;
		  
      elsif rising_edge(clock) then
          distancias_dato(valor) <= std_logic_vector("00010000" + min_vecinos(valor, distancias_dato)); --calcula la distancia de cada casilla
		end if;
	end process;
	distancias_salida <= distancias_dato(0) & distancias_dato(1) & distancias_dato(2) & distancias_dato(3) & distancias_dato(4) & distancias_dato(5) & distancias_dato(6) & distancias_dato(7) & distancias_dato(8) & distancias_dato(9) & distancias_dato(10) & distancias_dato(11) & distancias_dato(12) & distancias_dato(13) & distancias_dato(14) & distancias_dato(15);
	 
end architecture;