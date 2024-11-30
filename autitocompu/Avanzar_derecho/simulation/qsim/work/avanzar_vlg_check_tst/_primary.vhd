library verilog;
use verilog.vl_types.all;
entity avanzar_vlg_check_tst is
    port(
        SALIDA_D        : in     vl_logic_vector(2 downto 0);
        SALIDA_I        : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end avanzar_vlg_check_tst;
