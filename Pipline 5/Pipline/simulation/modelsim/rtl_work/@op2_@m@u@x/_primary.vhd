library verilog;
use verilog.vl_types.all;
entity Op2_MUX is
    port(
        out_ID_EXE_ALU_Src: in     vl_logic_vector(2 downto 0);
        out_ID_EXE_Forward_BMUX_Read_Data2: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Immidiate: in     vl_logic_vector(15 downto 0);
        out_ID_EXE_Shift_Amount: in     vl_logic_vector(4 downto 0);
        out_Op2_MUX_Op2 : out    vl_logic_vector(31 downto 0)
    );
end Op2_MUX;
