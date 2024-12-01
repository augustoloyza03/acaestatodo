library verilog;
use verilog.vl_types.all;
entity sensorlinea is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        sensorlinea     : in     vl_logic;
        sensorlimpio    : out    vl_logic
    );
end sensorlinea;
