library verilog;
use verilog.vl_types.all;
entity ALUCONTROL is
    port(
        aluOp           : in     vl_logic_vector(1 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        ControleALU     : out    vl_logic_vector(3 downto 0)
    );
end ALUCONTROL;
