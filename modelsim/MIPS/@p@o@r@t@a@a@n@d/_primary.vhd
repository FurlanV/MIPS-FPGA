library verilog;
use verilog.vl_types.all;
entity PORTAAND is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : out    vl_logic
    );
end PORTAAND;
