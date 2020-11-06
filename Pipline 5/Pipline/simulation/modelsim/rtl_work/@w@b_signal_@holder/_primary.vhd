library verilog;
use verilog.vl_types.all;
entity WB_signal_Holder is
    port(
        out_ID_EXE_Reg_Write_Ctrl: in     vl_logic;
        out_ID_EXE_Byte_Word: in     vl_logic;
        out_ID_EXE_Mem_Or_Reg: in     vl_logic;
        clk             : in     vl_logic;
        out_WB_singal_Holder_Reg_Write_Ctrl: out    vl_logic;
        out_WB_singal_Holder_Byte_Word: out    vl_logic;
        out_WB_singal_Holder_Mem_Or_Reg: out    vl_logic
    );
end WB_signal_Holder;
