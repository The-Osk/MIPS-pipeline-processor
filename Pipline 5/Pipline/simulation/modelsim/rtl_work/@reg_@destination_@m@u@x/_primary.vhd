library verilog;
use verilog.vl_types.all;
entity Reg_Destination_MUX is
    port(
        out_ID_EXE_Rt_Address: in     vl_logic_vector(4 downto 0);
        out_ID_EXE_Rd_Address: in     vl_logic_vector(4 downto 0);
        out_ID_EXE_Reg_Destination: in     vl_logic;
        out_Reg_Destination_MUX_Reg_Write_Address: out    vl_logic_vector(4 downto 0)
    );
end Reg_Destination_MUX;
