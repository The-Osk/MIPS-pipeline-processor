library verilog;
use verilog.vl_types.all;
entity MUX_Branch is
    port(
        out_ID_EXE_Branch_or_Not: in     vl_logic;
        out_ID_EXE_Branch_Address: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_PC_4 : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        out_MUX_Branch_Branch_Address: out    vl_logic_vector(31 downto 0)
    );
end MUX_Branch;
