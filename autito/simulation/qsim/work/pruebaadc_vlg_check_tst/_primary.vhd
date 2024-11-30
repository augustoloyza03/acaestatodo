library verilog;
use verilog.vl_types.all;
entity pruebaadc_vlg_check_tst is
    port(
        ADC_CS_N        : in     vl_logic;
        ADC_DIN         : in     vl_logic;
        ADC_SCLK        : in     vl_logic;
        Envio0          : in     vl_logic;
        Envio1          : in     vl_logic;
        ledcheckdf      : in     vl_logic;
        M0D             : in     vl_logic;
        M0I             : in     vl_logic;
        M1D             : in     vl_logic;
        M1I             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pruebaadc_vlg_check_tst;
