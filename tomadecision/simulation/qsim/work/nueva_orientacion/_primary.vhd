library verilog;
use verilog.vl_types.all;
entity nueva_orientacion is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        O1              : in     vl_logic;
        O0              : in     vl_logic;
        GI              : in     vl_logic;
        GD              : in     vl_logic;
        enable          : in     vl_logic;
        NO1             : out    vl_logic;
        NO0             : out    vl_logic;
        S1              : out    vl_logic;
        S0              : out    vl_logic
    );
end nueva_orientacion;
