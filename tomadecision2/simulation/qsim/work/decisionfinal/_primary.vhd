library verilog;
use verilog.vl_types.all;
entity decisionfinal is
    port(
        ea              : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        O1              : in     vl_logic;
        O0              : in     vl_logic;
        V0              : in     vl_logic_vector(3 downto 0);
        V1              : in     vl_logic_vector(3 downto 0);
        V2              : in     vl_logic_vector(3 downto 0);
        V3              : in     vl_logic_vector(3 downto 0);
        GI              : out    vl_logic;
        GD              : out    vl_logic;
        eg              : out    vl_logic
    );
end decisionfinal;
