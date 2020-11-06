library verilog;
use verilog.vl_types.all;
entity MEM_signal_Holder is
    port(
        out_ID_EXE_Store_Byte: in     vl_logic;
        out_ID_EXE_Mem_Write: in     vl_logic;
        out_ID_EXE_Mem_Read: in     vl_logic;
        clk             : in     vl_logic;
        out_MEM_signal_Holder_Store_Byte: out    vl_logic;
        out_MEM_signal_Mem_Write: out    vl_logic;
        out_MEM_signal_Mem_Read: out    vl_logic
    );
end MEM_signal_Holder;
