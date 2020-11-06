module WB_signal_Holder(

input out_ID_EXE_Reg_Write_Ctrl,
input out_ID_EXE_Byte_Word,
input out_ID_EXE_Mem_Or_Reg,
input clk,//not used
output reg out_WB_singal_Holder_Reg_Write_Ctrl,
output reg out_WB_singal_Holder_Byte_Word,
output reg out_WB_singal_Holder_Mem_Or_Reg
);

always@(*)begin
out_WB_singal_Holder_Reg_Write_Ctrl=out_ID_EXE_Reg_Write_Ctrl;
out_WB_singal_Holder_Byte_Word=out_ID_EXE_Byte_Word;
out_WB_singal_Holder_Mem_Or_Reg=out_ID_EXE_Mem_Or_Reg;


end 
endmodule