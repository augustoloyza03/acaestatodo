library verilog;
use verilog.vl_types.all;
entity orientacion_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        gd              : in     vl_logic;
        gi              : in     vl_logic;
        reset           : in     vl_logic;
        tc1             : in     vl_logic;
        tc2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end orientacion_vlg_sample_tst;
