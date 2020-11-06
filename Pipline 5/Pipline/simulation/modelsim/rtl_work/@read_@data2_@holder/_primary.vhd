library verilog;
use verilog.vl_types.all;
entity Read_Data2_Holder is
    port(
        out_ID_EXE_Read_Data2: in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        out_Read_Data2_Holder_Read_Data2: out    vl_logic_vector(31 downto 0)
    );
end Read_Data2_Holder;
