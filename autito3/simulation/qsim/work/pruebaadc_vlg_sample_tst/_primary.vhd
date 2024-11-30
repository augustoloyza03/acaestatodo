library verilog;
use verilog.vl_types.all;
entity pruebaadc_vlg_sample_tst is
    port(
        ADC_DOUT        : in     vl_logic;
        areset          : in     vl_logic;
        df              : in     vl_logic;
        inclk0          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pruebaadc_vlg_sample_tst;
