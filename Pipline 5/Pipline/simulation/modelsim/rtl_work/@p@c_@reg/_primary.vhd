library verilog;
use verilog.vl_types.all;
entity PC_Reg is
    port(
        initial_PC      : in     vl_logic_vector(31 downto 0);
        out_MUXPC_Address: in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        out_PC_Address  : out    vl_logic_vector(31 downto 0);
        Stall_Or_Not    : in     vl_logic
    );
end PC_Reg;
