library verilog;
use verilog.vl_types.all;
entity ExtSinal is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        saida           : out    vl_logic_vector(31 downto 0)
    );
end ExtSinal;
