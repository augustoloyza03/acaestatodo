library verilog;
use verilog.vl_types.all;
entity sensorlinea_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sensorlinea     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sensorlinea_vlg_sample_tst;
