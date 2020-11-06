module Comparator(

input[31:0]out_ID_EXE_Forward_AMUX_Read_Data1,
input [31:0]out_ID_EXE_Forward_BMUX_Read_Data2,
output reg Zero
);

always@(*)begin
if((out_ID_EXE_Forward_AMUX_Read_Data1-out_ID_EXE_Forward_BMUX_Read_Data2) !=0)begin
		Zero=0;
		end
else begin
		Zero=1;
		end
	end
endmodule
	