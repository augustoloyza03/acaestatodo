library verilog;
use verilog.vl_types.all;
entity fin_vlg_check_tst is
    port(
        ADC_CS_N21      : in     vl_logic;
        ADC_DIN22       : in     vl_logic;
        ADC_SCLK20      : in     vl_logic;
        ea              : in     vl_logic;
        eg              : in     vl_logic;
        Md0             : in     vl_logic;
        Md1             : in     vl_logic;
        Mi0             : in     vl_logic;
        Mi1             : in     vl_logic;
        velD            : in     vl_logic;
        velI            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fin_vlg_check_tst;
