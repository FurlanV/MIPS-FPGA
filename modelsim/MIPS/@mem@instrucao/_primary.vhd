library verilog;
use verilog.vl_types.all;
entity MemInstrucao is
    port(
        address         : in     vl_logic_vector(31 downto 0);
        instruct        : out    vl_logic_vector(31 downto 0)
    );
end MemInstrucao;
