module Forward_BMUX(
input [1:0]ForwardB,
input [31:0]ALU_Result,
input [31:0]out_Data_Mem_Read_Data,
input [31:0]out_Reg_File_Read_Data2,
output reg [31:0]out_Forward_BMUX_Read_Data2
);

always@(*)begin

out_Forward_BMUX_Read_Data2=out_Reg_File_Read_Data2;

if (ForwardB ==2'b01)begin
out_Forward_BMUX_Read_Data2=ALU_Result;
end
if(ForwardB==2'b10)begin
out_Forward_BMUX_Read_Data2=out_Data_Mem_Read_Data;
end

end
endmodule
