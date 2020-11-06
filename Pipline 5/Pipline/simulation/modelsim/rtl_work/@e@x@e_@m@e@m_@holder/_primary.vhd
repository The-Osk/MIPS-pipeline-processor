library verilog;
use verilog.vl_types.all;
entity EXE_MEM_Holder is
    port(
        out_EXE_MEM_Reg_Write_ctrl: in     vl_logic;
        out_EXE_MEM_Mem_Or_Reg: in     vl_logic;
        out_EXE_MEM_Byte_word: in     vl_logic;
        out_EXE_MEM_ALU_Result: in     vl_logic_vector(31 downto 0);
        out_EXE_MEM_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        out_EXE_MEM_Reg_Write_ctrl_saved: out    vl_logic;
        out_EXE_MEM_Mem_Or_Reg_saved: out    vl_logic;
        out_EXE_MEM_Byte_word_saved: out    vl_logic;
        out_EXE_MEM_ALU_Result_saved: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_Reg_Write_Address_saved: out    vl_logic_vector(4 downto 0)
    );
end EXE_MEM_Holder;
