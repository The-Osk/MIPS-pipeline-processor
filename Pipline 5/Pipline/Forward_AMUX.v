module Forward_AMUX(
input [1:0]ForwardA,
input [31:0]ALU_Result,
input [31:0]out_Data_Mem_Read_Data,
input [31:0]out_Reg_File_Read_Data1,
output reg [31:0]out_Forward_AMUX_Read_Data1
);

always@(*)begin

out_Forward_AMUX_Read_Data1=out_Reg_File_Read_Data1;

if (ForwardA ==2'b01)begin
out_Forward_AMUX_Read_Data1=ALU_Result;
end
if(ForwardA==2'b10)begin
out_Forward_AMUX_Read_Data1=out_Data_Mem_Read_Data;
end

end 
endmodule
