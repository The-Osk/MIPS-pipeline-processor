library verilog;
use verilog.vl_types.all;
entity Forward_BMUX is
    port(
        ForwardB        : in     vl_logic_vector(1 downto 0);
        ALU_Result      : in     vl_logic_vector(31 downto 0);
        out_Data_Mem_Read_Data: in     vl_logic_vector(31 downto 0);
        out_Reg_File_Read_Data2: in     vl_logic_vector(31 downto 0);
        out_Forward_BMUX_Read_Data2: out    vl_logic_vector(31 downto 0)
    );
end Forward_BMUX;
