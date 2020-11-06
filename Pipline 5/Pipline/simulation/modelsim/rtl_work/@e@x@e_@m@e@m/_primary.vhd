library verilog;
use verilog.vl_types.all;
entity EXE_MEM is
    port(
        out_EXE_MEM_Reg_Write_ctrl: out    vl_logic;
        out_EXE_MEM_Mem_Or_Reg: out    vl_logic;
        out_EXE_MEM_Byte_word: out    vl_logic;
        out_EXE_MEM_Write_HiLo_Ctrl: out    vl_logic;
        out_EXE_MEM_Write_Floating: out    vl_logic;
        out_EXE_MEM_Store_Byte: out    vl_logic;
        out_EXE_MEM_Mem_Write: out    vl_logic;
        out_EXE_MEM_Mem_Read: out    vl_logic;
        out_EXE_MEM_Mem_Address: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_Read_Data2: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_ALU_Result: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_ALU_Result2: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_Reg_Write_Address: out    vl_logic_vector(4 downto 0);
        out_WB_singal_Holder_Reg_Write_Ctrl: in     vl_logic;
        out_WB_singal_Holder_Byte_Word: in     vl_logic;
        out_WB_singal_Holder_Mem_Or_Reg: in     vl_logic;
        out_ID_EXE_Reg_Write_HiLo_Ctrl: in     vl_logic;
        out_ID_EXE_Write_Floating: in     vl_logic;
        out_MEM_signal_Holder_Store_Byte: in     vl_logic;
        out_MEM_signal_Mem_Write: in     vl_logic;
        out_MEM_signal_Mem_Read: in     vl_logic;
        ALU_Result      : in     vl_logic_vector(31 downto 0);
        ALU_Result2     : in     vl_logic_vector(31 downto 0);
        out_Read_Data2_Holder_Read_Data2: in     vl_logic_vector(31 downto 0);
        out_Reg_Dst_Holder_Reg_Destination_Address: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic
    );
end EXE_MEM;
