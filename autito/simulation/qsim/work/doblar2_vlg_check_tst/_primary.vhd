library verilog;
use verilog.vl_types.all;
entity doblar2_vlg_check_tst is
    port(
        Envio0          : in     vl_logic;
        Envio1          : in     vl_logic;
        ledcheckdd      : in     vl_logic;
        ledcheckdf      : in     vl_logic;
        ledcheckdi      : in     vl_logic;
        ledcheckm0d     : in     vl_logic;
        ledcheckm0i     : in     vl_logic;
        ledcheckm1d     : in     vl_logic;
        ledcheckm1i     : in     vl_logic;
        M0D             : in     vl_logic;
        M0I             : in     vl_logic;
        M1D             : in     vl_logic;
        M1I             : in     vl_logic;
        velmd           : in     vl_logic;
        velmi           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end doblar2_vlg_check_tst;
