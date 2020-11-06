library verilog;
use verilog.vl_types.all;
entity IF_ID is
    port(
        out_Instruction_Data: in     vl_logic_vector(31 downto 0);
        out_Add4_PC_4   : in     vl_logic_vector(31 downto 0);
        out_IF_ID_Opcode: out    vl_logic_vector(5 downto 0);
        out_IF_ID_Funct : out    vl_logic_vector(5 downto 0);
        out_IF_ID_PC_4  : out    vl_logic_vector(31 downto 0);
        out_IF_ID_Jump_Address: out    vl_logic_vector(31 downto 0);
        out_IF_ID_Read_Address1: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address2: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Immidiate: out    vl_logic_vector(15 downto 0);
        out_IF_ID_Shift_Amount: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Rt_Address: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Rd_Address: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Rs_Address: out    vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        Stall_Or_Not    : in     vl_logic
    );
end IF_ID;
