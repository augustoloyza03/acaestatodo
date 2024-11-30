library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SumaoResta is
    port (
        Z0, Z1, Z2 : in std_logic;       -- bits que se van a sumar dependiendo la posición a la que se mueva el robot
        SorR : in std_logic;             -- control para suma (0) o resta (1)
        clock,reset : in std_logic;
        p0, p1, p2, p3 : out std_logic   -- bits de la posición actual (salida)
    );
end SumaoResta;

architecture Behavioral of SumaoResta is
    signal Z : std_logic_vector(3 downto 0);
    signal p_anterior : std_logic_vector(3 downto 0);
    signal p : std_logic_vector(3 downto 0);
begin
    Z <= '0' & Z2 & Z1 & Z0;  -- concateno los bits de Z y le agrego un 0 al principio para tener 4 bits
	
    process(clock, reset)
    begin
        if reset = '0' then
            p <= "0000";   -- reinicia la salida p a 0000 si reset es 0
            p_anterior <= "0000";
        elsif rising_edge(clock) then
            if SorR = '0' then
                p <= std_logic_vector(unsigned(p_anterior) + unsigned(Z)); -- si SorR es 0 suma, convierto ambos numeros en unsigned y la suma la vuelvo a conv a stdlogic

            else
                p <= std_logic_vector(unsigned(p_anterior) - unsigned(Z));  -- si SorR es 1 resta, convierto ambos numeros en unsigned y la suma la vuelvo a conv a stdlogic
            end if;
            p_anterior <= p; -- actualizo el valor actual de 'p' para que en la próxima operación se utilice como la posición anterior
        end if;
    end process;
    p3 <= p(3);
    p2 <= p(2);
    p1 <= p(1);
    p0 <= p(0);
end Behavioral;
