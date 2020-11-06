library verilog;
use verilog.vl_types.all;
entity Reg_Dst_Holder is
    port(
        out_ID_EXE_Reg_Destination_Address: in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        out_Reg_Dst_Holder_Reg_Destination_Address: out    vl_logic_vector(4 downto 0)
    );
end Reg_Dst_Holder;
