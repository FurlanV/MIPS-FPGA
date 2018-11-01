library verilog;
use verilog.vl_types.all;
entity decodificador is
    port(
        clock           : in     vl_logic;
        entrada         : in     vl_logic_vector(3 downto 0);
        saida           : out    vl_logic_vector(6 downto 0)
    );
end decodificador;
