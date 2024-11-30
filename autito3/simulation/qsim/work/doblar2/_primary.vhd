library verilog;
use verilog.vl_types.all;
entity doblar2 is
    port(
        clk             : in     vl_logic;
        df              : in     vl_logic;
        reset           : in     vl_logic;
        di              : in     vl_logic_vector(11 downto 0);
        dd              : in     vl_logic_vector(11 downto 0);
        M1I             : out    vl_logic;
        M0I             : out    vl_logic;
        M1D             : out    vl_logic;
        M0D             : out    vl_logic;
        velmi           : out    vl_logic;
        velmd           : out    vl_logic;
        Envio1          : out    vl_logic;
        Envio0          : out    vl_logic;
        ledcheckdf      : out    vl_logic;
        ledcheckdi      : out    vl_logic;
        ledcheckdd      : out    vl_logic;
        ledcheckm0i     : out    vl_logic;
        ledcheckm1i     : out    vl_logic;
        ledcheckm0d     : out    vl_logic;
        ledcheckm1d     : out    vl_logic
    );
end doblar2;
