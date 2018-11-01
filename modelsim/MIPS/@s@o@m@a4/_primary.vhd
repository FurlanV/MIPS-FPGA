library verilog;
use verilog.vl_types.all;
entity SOMA4 is
    port(
        pc              : in     vl_logic_vector(31 downto 0);
        nextPc          : out    vl_logic_vector(31 downto 0)
    );
end SOMA4;
