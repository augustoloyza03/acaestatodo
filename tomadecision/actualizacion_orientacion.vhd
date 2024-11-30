library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity actualizacion_orientacion is
    port (
        clk : in std_logic; 
        rst : in std_logic;  -- Señal de reset
        O1, O0 : in std_logic; -- Orientación inicial (como entradas)
        GI, GD : in std_logic; -- Giro a la izquierda (GI) y derecha (GD)
        NO1 : out std_logic; 
        NO0 : out std_logic;
        S1 : out std_logic;
        S0 : out std_logic
    );
end entity;

architecture rtl of actualizacion_orientacion is
    signal O : std_logic_vector(1 downto 0);  -- Orientación interna
    signal NO1_reg, NO0_reg : std_logic := '1';
begin

    -- Asignación de O desde O1 y O0 solo al inicio (al hacer reset)
    process (rst, O1, O0)
    begin
        if rst = '1' then  -- Reset asíncrono
            O <= "11";  -- Orientación inicial (Norte)
        else
            O <= O1 & O0;  -- Concatenamos O1 y O0 para formar la orientación interna
        end if;
    end process;

    -- Lógica de actualización de orientación con giros
    process (clk, rst)
    begin
        if rst = '1' then  -- Reset asíncrono
            O <= "11";  -- Orientación inicial (Norte)
            NO1_reg <= '1';
            NO0_reg <= '1';
        elsif rising_edge(clk) then
            -- Lógica de actualización de orientación basado en giros
            if GI = '1' and GD = '1' then
                -- Giro de 180 grados (cambio directo a la orientación opuesta)
                case O is
                    when "11" => O <= "00";  -- Norte -> Sur
                    when "10" => O <= "01";  -- Oeste -> Este
                    when "00" => O <= "11";  -- Sur -> Norte
                    when "01" => O <= "10";  -- Este -> Oeste
                    when others => O <= "11";  -- Default case
                end case;
            elsif GI = '1' then
                -- Giro a la izquierda (90 grados antihorario)
                case O is
                    when "11" => O <= "10";  -- Norte -> Oeste
                    when "10" => O <= "00";  -- Oeste -> Sur
                    when "00" => O <= "01";  -- Sur -> Este
                    when "01" => O <= "11";  -- Este -> Norte
                    when others => O <= "11";  -- Default case
                end case;
            elsif GD = '1' then
                -- Giro a la derecha (90 grados horario)
                case O is
                    when "11" => O <= "01";  -- Norte -> Este
                    when "01" => O <= "00";  -- Este -> Sur
                    when "00" => O <= "10";  -- Sur -> Oeste
                    when "10" => O <= "11";  -- Oeste -> Norte
                    when others => O <= "11";  -- Default case
                end case;
            end if;
        end if;
    end process;

    -- Salidas
    NO1_reg <= O(1);
    NO0_reg <= O(0);
    NO1 <= NO1_reg;
    NO0 <= NO0_reg;
    S1 <= O(1);  -- Asignar la parte más significativa de O a S1
    S0 <= O(0);  -- Asignar la parte menos significativa de O a S0
end architecture;
