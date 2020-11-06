library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        ALU_Result      : out    vl_logic_vector(31 downto 0);
        ALU_Result2     : out    vl_logic_vector(31 downto 0);
        out_ID_EXE_Op1  : in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Op2  : in     vl_logic_vector(31 downto 0);
        out_ID_EXE_Operation: in     vl_logic_vector(5 downto 0);
        out_ID_EXE_isFloating: in     vl_logic;
        clk             : in     vl_logic
    );
end ALU;
