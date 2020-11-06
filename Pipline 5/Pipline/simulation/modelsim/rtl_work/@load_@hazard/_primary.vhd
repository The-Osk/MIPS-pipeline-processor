library verilog;
use verilog.vl_types.all;
entity Load_Hazard is
    port(
        out_ID_EXE_Mem_Read: in     vl_logic;
        out_ID_EXE_Reg_Write_Ctrl: in     vl_logic;
        out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address1: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Read_Address2: in     vl_logic_vector(4 downto 0);
        Stall_Or_Not    : out    vl_logic
    );
end Load_Hazard;
