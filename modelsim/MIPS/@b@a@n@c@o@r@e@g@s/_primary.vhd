library verilog;
use verilog.vl_types.all;
entity BANCOREGS is
    port(
        rRegister1      : in     vl_logic_vector(4 downto 0);
        rRegister2      : in     vl_logic_vector(4 downto 0);
        writeRegister   : in     vl_logic_vector(4 downto 0);
        data            : in     vl_logic_vector(31 downto 0);
        EscreveReg      : in     vl_logic;
        DadosLeitura1   : out    vl_logic_vector(31 downto 0);
        DadosLeitura2   : out    vl_logic_vector(31 downto 0)
    );
end BANCOREGS;
