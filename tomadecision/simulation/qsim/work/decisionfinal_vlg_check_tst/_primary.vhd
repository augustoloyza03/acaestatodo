library verilog;
use verilog.vl_types.all;
entity decisionfinal_vlg_check_tst is
    port(
        ea              : in     vl_logic;
        eg              : in     vl_logic;
        GD              : in     vl_logic;
        GI              : in     vl_logic;
        NGD             : in     vl_logic;
        NGI             : in     vl_logic;
        NO0             : in     vl_logic;
        NO1             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end decisionfinal_vlg_check_tst;
