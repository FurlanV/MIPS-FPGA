library verilog;
use verilog.vl_types.all;
entity arquivoOndas is
    port(
        clock           : in     vl_logic;
        hex0            : out    vl_logic_vector(6 downto 0)
    );
end arquivoOndas;
