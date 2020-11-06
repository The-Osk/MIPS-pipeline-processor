library verilog;
use verilog.vl_types.all;
entity PC_Holder is
    port(
        out_IF_ID_PC_4  : in     vl_logic_vector(31 downto 0);
        out_PC_Holder_PC_4: out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end PC_Holder;
