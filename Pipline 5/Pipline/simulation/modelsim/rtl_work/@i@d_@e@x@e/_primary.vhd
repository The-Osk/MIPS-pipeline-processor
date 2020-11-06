library verilog;
use verilog.vl_types.all;
entity ID_EXE is
    port(
        out_Control_Unit_Reg_Destination: in     vl_logic;
        out_Control_Unit_Reg_Wrt_Adrs_Slect: in     vl_logic;
        out_Control_Unit_Is_Brnch_not_Eql: in     vl_logic;
        out_Control_Unit_Is_Branch_on_Equl: in     vl_logic;
        out_Control_Unit_pc_src: in     vl_logic_vector(1 downto 0);
        out_Control_Unit_Zero_Or_Rs: in     vl_logic_vector(1 downto 0);
        out_Control_Unit_ALU_Src: in     vl_logic_vector(2 downto 0);
        out_Control_Unit_Operation: in     vl_logic_vector(5 downto 0);
        out_Control_Unit_Store_Byte: in     vl_logic;
        out_Control_Unit_Mem_Write: in     vl_logic;
        out_Control_Unit_Mem_Read: in     vl_logic;
        out_Control_Unit_Reg_Write_Ctrl: in     vl_logic;
        out_Control_Unit_Byte_Word: in     vl_logic;
        out_Control_Unit_Mem_Or_Reg: in     vl_logic;
        out_Control_Unit_Write_HiLo_Ctrl: in     vl_logic;
        out_Control_Unit_isFloating: in     vl_logic;
        out_Control_Unit_Write_Floating: in     vl_logic;
        out_PC_Holder_PC_4: in     vl_logic_vector(31 downto 0);
        out_IF_ID_Jump_Address: in     vl_logic_vector(31 downto 0);
        out_Forward_AMUX_Read_Data1: in     vl_logic_vector(31 downto 0);
        out_Forward_BMUX_Read_Data2: in     vl_logic_vector(31 downto 0);
        out_IF_ID_Immidiate: in     vl_logic_vector(15 downto 0);
        out_IF_ID_Shift_Amount: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rt_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rd_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rs_Address: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        Stall_Or_Not    : in     vl_logic;
        out_ID_EXE_Reg_Write_Ctrl: out    vl_logic;
        out_ID_EXE_Byte_Word: out    vl_logic;
        out_ID_EXE_Mem_Or_Reg: out    vl_logic;
        out_ID_EXE_Store_Byte: out    vl_logic;
        out_ID_EXE_Mem_Write: out    vl_logic;
        out_ID_EXE_Mem_Read: out    vl_logic;
        out_ID_EXE_Reg_Write_HiLo_Ctrl: out    vl_logic;
        out_ID_EXE_isFloating: out    vl_logic;
        out_ID_EXE_Write_Floating: out    vl_logic;
        out_ID_EXE_pc_src: out    vl_logic_vector(1 downto 0);
        out_ID_EXE_Jump_Address: out    vl_logic_vector(31 downto 0);
        out_ID_EXE_Jump_Reg_Address: out    vl_logic_vector(31 downto 0);
        out_ID_EXE_PC_4 : out    vl_logic_vector(31 downto 0);
        out_ID_EXE_Reg_Destination: out    vl_logic;
        out_ID_EXE_Reg_Wrt_Adrs_Slect: out    vl_logic;
        out_ID_EXE_Is_Brnch_not_Eql: out    vl_logic;
        out_ID_EXE_Is_Branch_on_Equl: out    vl_logic;
        out_ID_EXE_Zero_Or_Rs: out    vl_logic_vector(1 downto 0);
        out_ID_EXE_ALU_Src: out    vl_logic_vector(2 downto 0);
        out_ID_EXE_Operation: out    vl_logic_vector(5 downto 0);
        out_ID_EXE_Forward_AMUX_Read_Data1: out    vl_logic_vector(31 downto 0);
        out_ID_EXE_Forward_BMUX_Read_Data2: out    vl_logic_vector(31 downto 0);
        out_ID_EXE_Immidiate: out    vl_logic_vector(15 downto 0);
        out_ID_EXE_Shift_Amount: out    vl_logic_vector(4 downto 0);
        out_ID_EXE_Rt_Address: out    vl_logic_vector(4 downto 0);
        out_ID_EXE_Rd_Address: out    vl_logic_vector(4 downto 0);
        out_ID_EXE_Rs_Address: out    vl_logic_vector(4 downto 0)
    );
end ID_EXE;
