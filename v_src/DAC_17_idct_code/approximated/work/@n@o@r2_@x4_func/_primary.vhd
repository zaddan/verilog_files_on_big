library verilog;
use verilog.vl_types.all;
entity NOR2_X4_func is
    port(
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        ZN              : out    vl_logic
    );
end NOR2_X4_func;
