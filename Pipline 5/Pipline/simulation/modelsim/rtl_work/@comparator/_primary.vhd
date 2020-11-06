library verilog;
use verilog.vl_types.all;
entity Comparator is
    port(
        out_ID_EXE_Forward_AMUX_Read_Data1: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Forward_BMUX_Read_Data2: in     vl_logic_vector(31 downto 0);
        Zero            : out    vl_logic
    );
end Comparator;
