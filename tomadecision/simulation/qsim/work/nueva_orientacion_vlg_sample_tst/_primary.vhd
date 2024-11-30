library verilog;
use verilog.vl_types.all;
entity nueva_orientacion_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        GD              : in     vl_logic;
        GI              : in     vl_logic;
        O0              : in     vl_logic;
        O1              : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end nueva_orientacion_vlg_sample_tst;
