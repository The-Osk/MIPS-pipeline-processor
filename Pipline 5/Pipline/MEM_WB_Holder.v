//NOT USED !
module MEM_WB_Holder(
input out_MEM_WB_Reg_Write_ctrl,
input[31:0] out_MEM_WB_Reg_Write_Data,//out_MEM_WB_reg_Write_Data
input [4:0] out_MEM_WB_Reg_Write_Address,
input clk,
output reg  out_MEM_WB_Holder_Reg_Write_ctrl,
output reg [31:0] out_MEM_WB_Holder_Reg_Write_Data,//out_MEM_WB_reg_Write_Data
output reg [4:0] out_MEM_WB_Reg_Holder_Write_Address

);

always@(*)begin

out_MEM_WB_Holder_Reg_Write_ctrl=out_MEM_WB_Reg_Write_ctrl;
out_MEM_WB_Holder_Reg_Write_Data=out_MEM_WB_Reg_Write_Data;
out_MEM_WB_Reg_Holder_Write_Address=out_MEM_WB_Reg_Write_Address;

end
endmodule
