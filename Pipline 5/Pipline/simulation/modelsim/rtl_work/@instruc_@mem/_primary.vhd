library verilog;
use verilog.vl_types.all;
entity Instruc_Mem is
    port(
        clk             : in     vl_logic;
        out_PC_Address  : in     vl_logic_vector(31 downto 0);
        out_Instruction_Data: out    vl_logic_vector(31 downto 0)
    );
end Instruc_Mem;
