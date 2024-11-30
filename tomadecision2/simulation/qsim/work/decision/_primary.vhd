library verilog;
use verilog.vl_types.all;
entity decision is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        V0              : in     vl_logic_vector(3 downto 0);
        V3              : in     vl_logic_vector(3 downto 0);
        V1              : in     vl_logic_vector(3 downto 0);
        V2              : in     vl_logic_vector(3 downto 0);
        O1              : in     vl_logic;
        O0              : in     vl_logic;
        ea              : out    vl_logic;
        GI              : out    vl_logic;
        GD              : out    vl_logic;
        eg              : out    vl_logic
    );
end decision;
