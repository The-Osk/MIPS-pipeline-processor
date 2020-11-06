module MEM_signal_Holder(


input out_ID_EXE_Store_Byte,
input out_ID_EXE_Mem_Write,
input out_ID_EXE_Mem_Read,
input clk,


output reg out_MEM_signal_Holder_Store_Byte,
output reg out_MEM_signal_Mem_Write,
output reg out_MEM_signal_Mem_Read
);


always@(*)begin

out_MEM_signal_Holder_Store_Byte = out_ID_EXE_Store_Byte;

out_MEM_signal_Mem_Write = out_ID_EXE_Mem_Write;

out_MEM_signal_Mem_Read = out_ID_EXE_Mem_Read;




end 

endmodule