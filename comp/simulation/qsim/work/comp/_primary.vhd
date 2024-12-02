library verilog;
use verilog.vl_types.all;
entity comp is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        salida1         : out    vl_logic;
        salida2         : out    vl_logic
    );
end comp;
