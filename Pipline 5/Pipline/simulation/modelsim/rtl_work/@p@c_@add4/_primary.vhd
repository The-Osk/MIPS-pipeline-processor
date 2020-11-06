library verilog;
use verilog.vl_types.all;
entity PC_Add4 is
    port(
        out_PC_Address  : in     vl_logic_vector(31 downto 0);
        out_Add4_PC_4   : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end PC_Add4;
