library verilog;
use verilog.vl_types.all;
entity decisionfinal_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk1            : in     vl_logic;
        clk8            : in     vl_logic;
        O0              : in     vl_logic;
        O1              : in     vl_logic;
        reset           : in     vl_logic;
        reset2          : in     vl_logic;
        reset3          : in     vl_logic;
        V1              : in     vl_logic_vector(3 downto 0);
        V2              : in     vl_logic_vector(3 downto 0);
        V3              : in     vl_logic_vector(3 downto 0);
        V4              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end decisionfinal_vlg_sample_tst;
