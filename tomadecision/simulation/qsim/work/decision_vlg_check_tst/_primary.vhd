library verilog;
use verilog.vl_types.all;
entity decision_vlg_check_tst is
    port(
        ea              : in     vl_logic;
        eg              : in     vl_logic;
        GD              : in     vl_logic;
        GI              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end decision_vlg_check_tst;
