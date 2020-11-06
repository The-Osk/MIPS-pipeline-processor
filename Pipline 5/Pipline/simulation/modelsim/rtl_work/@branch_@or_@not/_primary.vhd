library verilog;
use verilog.vl_types.all;
entity Branch_Or_Not is
    port(
        Zero            : in     vl_logic;
        out_ID_EXE_Is_Brnch_not_Eql: in     vl_logic;
        out_ID_EXE_Is_Branch_on_Equl: in     vl_logic;
        out_Branch_Or_Not_Branch_Or_Not: out    vl_logic
    );
end Branch_Or_Not;
