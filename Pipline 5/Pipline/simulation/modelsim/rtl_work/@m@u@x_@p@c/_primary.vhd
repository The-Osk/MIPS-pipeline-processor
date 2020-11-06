library verilog;
use verilog.vl_types.all;
entity MUX_PC is
    port(
        out_Add4_PC_4   : in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Jump_Address: in     vl_logic_vector(31 downto 0);
        out_MUX_Branch_Branch_Address: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Jump_Reg_Address: in     vl_logic_vector(31 downto 0);
        out_ID_EXE_pc_src: in     vl_logic_vector(1 downto 0);
        out_MUXPC_Address: out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic
    );
end MUX_PC;
