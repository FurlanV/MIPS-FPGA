library verilog;
use verilog.vl_types.all;
entity MEMDADOS is
    port(
        clk             : in     vl_logic;
        EscreveMem      : in     vl_logic;
        LeMem           : in     vl_logic;
        address         : in     vl_logic_vector(31 downto 0);
        writeData       : in     vl_logic_vector(31 downto 0);
        LeituraMemDados : out    vl_logic_vector(31 downto 0)
    );
end MEMDADOS;
