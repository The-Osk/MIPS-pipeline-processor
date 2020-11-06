library verilog;
use verilog.vl_types.all;
entity Op1_MUX is
    port(
        out_ID_EXE_Zero_Or_Rs: in     vl_logic_vector(1 downto 0);
        out_ID_EXE_Forward_AMUX_Read_Data1: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_PC_4 : in     vl_logic_vector(31 downto 0);
        out_Op1_MUX_Op1 : out    vl_logic_vector(31 downto 0)
    );
end Op1_MUX;
