library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contador_cambio is
    Port (
        clk        : in std_logic;          -- Señal de reloj
        reset      : in std_logic;          -- Señal de reset
        salida_0   : in std_logic;          -- Primer bit de la entrada (salida_0)
        salida_1   : in std_logic;          -- Segundo bit de la entrada (salida_1)
        contador_0 : out std_logic;         -- Primer bit del contador
        contador_1 : out std_logic          -- Segundo bit del contador
    );
end contador_cambio;

architecture Behavioral of contador_cambio is
    signal salida_actual   : std_logic_vector(1 downto 0); -- Combina las entradas de salida_0 y salida_1
    signal salida_anterior : std_logic_vector(1 downto 0) := "00";  -- Valor anterior de salida
    signal contador_int    : std_logic_vector(1 downto 0) := "00";  -- Contador de 2 bits
begin

    -- Combinar las señales de entrada en un vector de 2 bits
    salida_actual <= salida_1 & salida_0;

    process(clk, reset)
    begin
        if reset = '1' then
            contador_int <= "00";        -- Reiniciar el contador
            salida_anterior <= "00";     -- Reiniciar la salida anterior
        elsif rising_edge(clk) then
            if salida_actual /= salida_anterior then  -- Detectar cambio en la entrada
                if salida_actual /= "00" then        -- Excluir incrementos si es "00"
                    contador_int <= contador_int + 1;
                end if;
                salida_anterior <= salida_actual;    -- Actualizar la salida anterior
            end if;
        end if;
    end process;

    -- Asignar cada bit del contador a la salida correspondiente
    contador_0 <= contador_int(0);
    contador_1 <= contador_int(1);

end Behavioral;