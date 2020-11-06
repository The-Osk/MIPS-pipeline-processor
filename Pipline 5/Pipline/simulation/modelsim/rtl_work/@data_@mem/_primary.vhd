library verilog;
use verilog.vl_types.all;
entity Data_Mem is
    port(
        out_Data_Mem_Read_Data: out    vl_logic_vector(31 downto 0);
        out_EXE_MEM_Mem_Address: in     vl_logic_vector(31 downto 0);
        out_EXE_MEM_Read_Data2: in     vl_logic_vector(31 downto 0);
        out_EXE_MEM_Store_Byte: in     vl_logic;
        out_EXE_MEM_Mem_Write: in     vl_logic;
        out_EXE_MEM_Mem_Read: in     vl_logic;
        clk             : in     vl_logic
    );
end Data_Mem;
