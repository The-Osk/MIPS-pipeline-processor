module Reg_Destination_MUX(

input [4:0]out_ID_EXE_Rt_Address,
input [4:0]out_ID_EXE_Rd_Address,
input out_ID_EXE_Reg_Destination,
output reg [4:0]out_Reg_Destination_MUX_Reg_Write_Address
);

always@(*)begin

case(out_ID_EXE_Reg_Destination)
0:out_Reg_Destination_MUX_Reg_Write_Address=out_ID_EXE_Rt_Address;
1:out_Reg_Destination_MUX_Reg_Write_Address=out_ID_EXE_Rd_Address;
endcase
end
endmodule
