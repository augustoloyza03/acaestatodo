library verilog;
use verilog.vl_types.all;
entity doblar2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dd              : in     vl_logic_vector(11 downto 0);
        df              : in     vl_logic;
        di              : in     vl_logic_vector(11 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end doblar2_vlg_sample_tst;
