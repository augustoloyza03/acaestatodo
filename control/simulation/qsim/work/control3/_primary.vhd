library verilog;
use verilog.vl_types.all;
entity control3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ea              : in     vl_logic;
        s               : in     vl_logic;
        O1              : in     vl_logic;
        O0              : in     vl_logic;
        M               : out    vl_logic_vector(3 downto 0)
    );
end control3;
