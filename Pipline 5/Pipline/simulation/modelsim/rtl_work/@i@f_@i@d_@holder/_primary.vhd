library verilog;
use verilog.vl_types.all;
entity IF_ID_Holder is
    port(
        out_IF_ID_Immidiate: in     vl_logic_vector(15 downto 0);
        out_IF_ID_Shift_Amount: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rt_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Rd_Address: in     vl_logic_vector(4 downto 0);
        out_IF_ID_Holder_Immidiate: out    vl_logic_vector(15 downto 0);
        out_IF_ID_Holder_Shift_Amount: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Holder_Rt_Address: out    vl_logic_vector(4 downto 0);
        out_IF_ID_Holder_Rd_Address: out    vl_logic_vector(4 downto 0);
        clk             : in     vl_logic
    );
end IF_ID_Holder;
