library verilog;
use verilog.vl_types.all;
entity Reg_File is
    port(
        out_Reg_File_Read_Data1: out    vl_logic_vector(31 downto 0);
        out_Reg_File_Read_Data2: out    vl_logic_vector(31 downto 0);
        out_IF_ID_Read_Address1: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address2: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rd_Address: in     vl_logic_vector(4 downto 0);
        out_MEM_WB_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        out_MEM_WB_Reg_Write_Data: in     vl_logic_vector(31 downto 0);
        out_MEM_WB_Reg_Write_Data2: in     vl_logic_vector(31 downto 0);
        out_Control_Unit_Reg_Read_Ctrl: in     vl_logic;
        out_MEM_WB_Reg_Write_ctrl: in     vl_logic;
        out_MEM_WB_Reg_Write_HiLo_Ctrl: in     vl_logic;
        out_Control_Unit_mfhi: in     vl_logic;
        out_Control_Unit_mflo: in     vl_logic;
        clk             : in     vl_logic
    );
end Reg_File;
