library verilog;
use verilog.vl_types.all;
entity Reg_Destination_Or_Ra_MUX is
    port(
        out_Reg_Destination_MUX_Reg_Write_Address: in     vl_logic_vector(4 downto 0);
        out_ID_EXE_Reg_Wrt_Adrs_Slect: in     vl_logic;
        out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address: out    vl_logic_vector(4 downto 0)
    );
end Reg_Destination_Or_Ra_MUX;
