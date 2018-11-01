library verilog;
use verilog.vl_types.all;
entity ADD is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        saida           : out    vl_logic_vector(31 downto 0)
    );
end ADD;
