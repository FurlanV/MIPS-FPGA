library verilog;
use verilog.vl_types.all;
entity MultiplexEscreveBancoReg is
    port(
        instrucao1      : in     vl_logic_vector(4 downto 0);
        instrucao2      : in     vl_logic_vector(4 downto 0);
        seletor         : in     vl_logic;
        saida           : out    vl_logic_vector(4 downto 0)
    );
end MultiplexEscreveBancoReg;
