module Read_Data2_Holder(

input [31:0]out_ID_EXE_Read_Data2,
input clk,
output reg [31:0]out_Read_Data2_Holder_Read_Data2
);


always@(*)begin


out_Read_Data2_Holder_Read_Data2 = out_ID_EXE_Read_Data2;

end
endmodule
