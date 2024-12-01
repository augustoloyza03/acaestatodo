library verilog;
use verilog.vl_types.all;
entity orientacion is
    port(
        clk             : in     vl_logic;
        gd              : in     vl_logic;
        gi              : in     vl_logic;
        reset           : in     vl_logic;
        tc1             : in     vl_logic;
        tc2             : in     vl_logic;
        clearcountdoblar: out    vl_logic;
        o0              : out    vl_logic;
        o1              : out    vl_logic
    );
end orientacion;
