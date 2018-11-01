library verilog;
use verilog.vl_types.all;
entity CONTROL is
    port(
        instruction     : in     vl_logic_vector(5 downto 0);
        regDst          : out    vl_logic;
        branch          : out    vl_logic;
        LeMem           : out    vl_logic;
        memParaReg      : out    vl_logic;
        aluOp           : out    vl_logic_vector(1 downto 0);
        EscreveMem      : out    vl_logic;
        OrigAlu         : out    vl_logic;
        EscreveReg      : out    vl_logic
    );
end CONTROL;
