library verilog;
use verilog.vl_types.all;
entity decisionfinal is
    port(
        ea              : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        clk1            : in     vl_logic;
        clk8            : in     vl_logic;
        reset3          : in     vl_logic;
        O1              : in     vl_logic;
        O0              : in     vl_logic;
        V1              : in     vl_logic_vector(3 downto 0);
        V2              : in     vl_logic_vector(3 downto 0);
        V3              : in     vl_logic_vector(3 downto 0);
        V4              : in     vl_logic_vector(3 downto 0);
        eg              : out    vl_logic;
        GI              : out    vl_logic;
        GD              : out    vl_logic;
        NO0             : out    vl_logic;
        NO1             : out    vl_logic;
        NGI             : out    vl_logic;
        reset2          : in     vl_logic;
        NGD             : out    vl_logic
    );
end decisionfinal;
