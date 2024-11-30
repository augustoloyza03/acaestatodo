library verilog;
use verilog.vl_types.all;
entity fin_vlg_sample_tst is
    port(
        ADC_DOUT        : in     vl_logic;
        clk50M          : in     vl_logic;
        reset           : in     vl_logic;
        s               : in     vl_logic;
        sensor          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fin_vlg_sample_tst;
