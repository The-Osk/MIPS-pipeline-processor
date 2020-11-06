library verilog;
use verilog.vl_types.all;
entity MEM_WB is
    port(
        out_MEM_WB_Reg_Write_ctrl: out    vl_logic;
        out_MEM_WB_Reg_Write_HiLo_Ctrl: out    vl_logic;
        out_MEM_WB_Write_Floating: out    vl_logic;
        out_MEM_WB_Reg_Write_Data: out    vl_logic_vector(31 downto 0);
        out_MEM_WB_Reg_Write_Data2: out    vl_logic_vector(31 downto 0);
        out_MEM_WB_Reg_Write_Address: out    vl_logic_vector(4 downto 0);
        out_EXE_MEM_Reg_Write_ctrl: in     vl_logic;
        out_EXE_MEM_Mem_Or_Reg: in     vl_logic;
        out_EXE_MEM_Byte_word: in     vl_logic;
        out_EXE_MEM_Write_HiLo_Ctrl: in     vl_logic;
        out_EXE_MEM_Write_Floating: in     vl_logic;
        clk             : in     vl_logic;
        out_EXE_MEM_ALU_Result: in     vl_logic_vector(31 downto 0);
        out_EXE_MEM_ALU_Result2: in     vl_logic_vector(31 downto 0);
        out_Data_Mem_Read_Data: in     vl_logic_vector(31 downto 0);
        out_EXE_MEM_Reg_Write_Address: in     vl_logic_vector(4 downto 0)
    );
end MEM_WB;
