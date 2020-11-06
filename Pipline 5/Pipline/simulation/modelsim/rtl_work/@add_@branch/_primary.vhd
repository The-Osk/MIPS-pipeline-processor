library verilog;
use verilog.vl_types.all;
entity Add_Branch is
    port(
        out_ID_EXE_PC_4 : in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Immidiate: in     vl_logic_vector(15 downto 0);
        out_Add_Branch_Branch_Address: out    vl_logic_vector(31 downto 0)
    );
end Add_Branch;
