library verilog;
use verilog.vl_types.all;
entity fin is
    port(
        Mi1             : out    vl_logic;
        clk50M          : in     vl_logic;
        eg              : out    vl_logic;
        reset           : in     vl_logic;
        clearcountdoblar: out    vl_logic;
        sensor          : in     vl_logic;
        s               : in     vl_logic;
        ADC_DOUT        : in     vl_logic;
        Mi0             : out    vl_logic;
        Md1             : out    vl_logic;
        Md0             : out    vl_logic;
        ea              : out    vl_logic;
        ADC_SCLK20      : out    vl_logic;
        ADC_CS_N21      : out    vl_logic;
        ADC_DIN22       : out    vl_logic;
        velD            : out    vl_logic;
        velI            : out    vl_logic;
        o0              : out    vl_logic;
        \01\            : out    vl_logic;
        aleb            : out    vl_logic;
        q               : out    vl_logic_vector(15 downto 0)
    );
end fin;
