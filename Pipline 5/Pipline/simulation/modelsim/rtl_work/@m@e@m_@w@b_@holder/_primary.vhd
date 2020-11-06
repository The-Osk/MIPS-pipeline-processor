library verilog;
use verilog.vl_types.all;
entity MEM_WB_Holder is
    port(
        out_MEM_WB_Reg_Write_ctrl: in     vl_logic;
        out_MEM_WB_Reg_Write_Data: in     vl_logic_vector(31 downto 0);
        out_MEM_WB_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        out_MEM_WB_Holder_Reg_Write_ctrl: out    vl_logic;
        out_MEM_WB_Holder_Reg_Write_Data: out    vl_logic_vector(31 downto 0);
        out_MEM_WB_Reg_Holder_Write_Address: out    vl_logic_vector(4 downto 0)
    );
end MEM_WB_Holder;
