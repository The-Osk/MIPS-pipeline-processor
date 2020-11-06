module Forwarding (

output reg [1:0]ForwardA,
output reg [1:0]ForwardB,

input out_ID_EXE_Reg_Write_Ctrl,
input out_Control_Unit_Reg_Write_Ctrl,
input [4:0]out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address,//Destination of Primary R

input out_EXE_MEM_Reg_Write_ctrl,
input [4:0]out_EXE_MEM_Reg_Write_Address,//Destination of primary I (Load)

input [4:0]out_IF_ID_Read_Address1,//Source 1 of Dependant R
input [4:0]out_IF_ID_Read_Address2//Source 2 of Dependant R


);

always@(*)begin

ForwardA=0;
ForwardB=0;

//ALU to ALU
//If both Primary and Dependant R instruction will write on Reg_File:
if(out_ID_EXE_Reg_Write_Ctrl==1 && out_Control_Unit_Reg_Write_Ctrl==1)begin
//check Dependancy:
if (out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address==out_IF_ID_Read_Address1)begin
ForwardA=1;
end
if (out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address==out_IF_ID_Read_Address2)begin
ForwardB=1;
end
end

//MEM to ALU
if(out_EXE_MEM_Reg_Write_ctrl==1 && out_EXE_MEM_Reg_Write_ctrl==1 )begin 
if(out_EXE_MEM_Reg_Write_Address==out_IF_ID_Read_Address1)begin
ForwardA=2;
end
if(out_EXE_MEM_Reg_Write_Address==out_IF_ID_Read_Address2)begin
ForwardB=2;
end
end

end
endmodule
