library verilog;
use verilog.vl_types.all;
entity pruebaadc is
    port(
        ADC_DOUT        : in     vl_logic;
        df              : in     vl_logic;
        inclk0          : in     vl_logic;
        areset          : in     vl_logic;
        ADC_SCLK        : out    vl_logic;
        ADC_CS_N        : out    vl_logic;
        ADC_DIN         : out    vl_logic;
        M1I             : out    vl_logic;
        M0I             : out    vl_logic;
        M1D             : out    vl_logic;
        M0D             : out    vl_logic;
        Envio1          : out    vl_logic;
        Envio0          : out    vl_logic;
        ledcheckdf      : out    vl_logic
    );
end pruebaadc;
