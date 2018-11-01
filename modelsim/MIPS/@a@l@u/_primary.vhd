library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        seletor         : in     vl_logic_vector(3 downto 0);
        saida           : out    vl_logic_vector(31 downto 0);
        FlagZero        : out    vl_logic
    );
end ALU;
