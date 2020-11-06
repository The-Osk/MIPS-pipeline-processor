module IF_ID(
input [31:0] out_Instruction_Data,
input [31:0] out_Add4_PC_4,
output reg [5:0]out_IF_ID_Opcode,
output reg [5:0]out_IF_ID_Funct,
output reg [31:0] out_IF_ID_PC_4,
output reg [31:0]out_IF_ID_Jump_Address,
output reg [4:0]out_IF_ID_Read_Address1,
output reg[4:0]out_IF_ID_Read_Address2,
output reg[15:0]out_IF_ID_Immidiate,
output reg [4:0]out_IF_ID_Shift_Amount,
output reg[4:0]out_IF_ID_Rt_Address,
output reg[4:0]out_IF_ID_Rd_Address,
output reg[4:0]out_IF_ID_Rs_Address,
input clk,
input Stall_Or_Not
);

initial
begin
out_IF_ID_Opcode=0;
out_IF_ID_Funct=0;
out_IF_ID_PC_4=0;
out_IF_ID_Jump_Address=0;
out_IF_ID_Read_Address1=0;
out_IF_ID_Read_Address2=0;
out_IF_ID_Immidiate=0;
out_IF_ID_Shift_Amount=0;
out_IF_ID_Rt_Address=0;
out_IF_ID_Rd_Address=0;
out_IF_ID_Rs_Address = 0;
end
always@(negedge clk)begin
if(Stall_Or_Not==0)begin
out_IF_ID_Opcode=out_Instruction_Data[31:26];
out_IF_ID_PC_4=out_Add4_PC_4;
out_IF_ID_Funct=out_Instruction_Data[5:0];
out_IF_ID_Jump_Address={out_Add4_PC_4[31:28],out_Instruction_Data[27:0]<<2};
out_IF_ID_Read_Address1=out_Instruction_Data[25:21];
out_IF_ID_Read_Address2=out_Instruction_Data[20:16];
out_IF_ID_Immidiate=out_Instruction_Data[15:0];
out_IF_ID_Shift_Amount=out_Instruction_Data[10:6];
out_IF_ID_Rt_Address=out_Instruction_Data[20:16];
out_IF_ID_Rd_Address=out_Instruction_Data[15:11];
//in case of lwn swn
if (((out_Instruction_Data[31:26] == 6'b000001) && (out_Instruction_Data[5:0] ==6'b100001))/*lwn*/  | ((out_Instruction_Data[31:26] == 6'b000001) && (out_Instruction_Data[5:0] ==6'b010011))/*swn*/)begin
out_IF_ID_Opcode=out_Instruction_Data[31:26];
out_IF_ID_PC_4=out_Add4_PC_4;
out_IF_ID_Funct=out_Instruction_Data[5:0];
out_IF_ID_Jump_Address={out_Add4_PC_4[31:28],out_Instruction_Data[27:0]<<2};
out_IF_ID_Read_Address1=out_Instruction_Data[25:21];
out_IF_ID_Read_Address2=out_Instruction_Data[15:11];//Address of Rd
out_IF_ID_Immidiate=out_Instruction_Data[15:0];
out_IF_ID_Shift_Amount=out_Instruction_Data[10:6];
out_IF_ID_Rs_Address=out_Instruction_Data[25:21];
out_IF_ID_Rt_Address=out_Instruction_Data[20:16];
out_IF_ID_Rd_Address=out_Instruction_Data[15:11];
end
end
end

endmodule
