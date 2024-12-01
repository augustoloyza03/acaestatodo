library verilog;
use verilog.vl_types.all;
entity control3_vlg_check_tst is
    port(
        M               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end control3_vlg_check_tst;
