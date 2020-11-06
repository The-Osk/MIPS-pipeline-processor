library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        Reg_Write_Ctrl  : out    vl_logic;
        Reg_Read_Ctrl   : out    vl_logic;
        Reg_Destination : out    vl_logic;
        Reg_Wrt_Adrs_Slect: out    vl_logic;
        Is_Brnch_not_Eql: out    vl_logic;
        Is_Branch_on_Equl: out    vl_logic;
        Store_Byte      : out    vl_logic;
        Mem_Write       : out    vl_logic;
        Mem_Read        : out    vl_logic;
        Byte_Word       : out    vl_logic;
        Mem_Or_Reg      : out    vl_logic;
        out_Control_Unit_mflo: out    vl_logic;
        out_Control_Unit_mfhi: out    vl_logic;
        out_Control_Unit_HiLo_Ctrl: out    vl_logic;
        out_Control_Unit_isFloating: out    vl_logic;
        out_Control_Unit_Read_Floating: out    vl_logic;
        out_Control_Unit_Write_Floating: out    vl_logic;
        pc_src          : out    vl_logic_vector(1 downto 0);
        Zero_Or_Rs      : out    vl_logic_vector(1 downto 0);
        ALU_Src         : out    vl_logic_vector(2 downto 0);
        operation       : out    vl_logic_vector(5 downto 0);
        opcode          : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        clk             : in     vl_logic
    );
end control_unit;
