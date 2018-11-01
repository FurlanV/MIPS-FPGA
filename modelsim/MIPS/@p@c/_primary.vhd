library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        clock           : in     vl_logic;
        EnderecoEntrada : in     vl_logic_vector(31 downto 0);
        EnderecoSaida   : out    vl_logic_vector(31 downto 0)
    );
end PC;
