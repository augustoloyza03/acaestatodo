library verilog;
use verilog.vl_types.all;
entity avanzar_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        SENSOR_D        : in     vl_logic_vector(11 downto 0);
        SENSOR_I        : in     vl_logic_vector(11 downto 0);
        sampler_tx      : out    vl_logic
    );
end avanzar_vlg_sample_tst;
