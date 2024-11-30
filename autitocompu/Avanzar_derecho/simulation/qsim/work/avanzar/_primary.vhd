library verilog;
use verilog.vl_types.all;
entity avanzar is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        SENSOR_D        : in     vl_logic_vector(11 downto 0);
        SENSOR_I        : in     vl_logic_vector(11 downto 0);
        SALIDA_I        : out    vl_logic_vector(2 downto 0);
        SALIDA_D        : out    vl_logic_vector(2 downto 0)
    );
end avanzar;
