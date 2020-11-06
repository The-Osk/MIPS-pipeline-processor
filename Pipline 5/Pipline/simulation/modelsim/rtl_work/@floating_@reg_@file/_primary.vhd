library verilog;
use verilog.vl_types.all;
entity Floating_Reg_File is
    port(
        out_Control_unit_Read_Floating: in     vl_logic;
        out_MEM_WB_Write_Floating: in     vl_logic;
        out_MEM_WB_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        out_MEM_WB_Reg_Write_Data: in     vl_logic_vector(31 downto 0);
        out_IF_ID_Read_Address_1: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address_2: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic
    );
end Floating_Reg_File;
