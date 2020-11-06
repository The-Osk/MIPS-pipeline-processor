module Reg_Dst_Holder(
input [4:0]out_ID_EXE_Reg_Destination_Address,
input clk,
output reg [4:0]out_Reg_Dst_Holder_Reg_Destination_Address

);


always@(*)begin

out_Reg_Dst_Holder_Reg_Destination_Address = out_ID_EXE_Reg_Destination_Address;

end
endmodule
