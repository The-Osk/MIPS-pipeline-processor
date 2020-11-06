module ID_EXE(
input out_Control_Unit_Reg_Destination,
input out_Control_Unit_Reg_Wrt_Adrs_Slect,
input out_Control_Unit_Is_Brnch_not_Eql,
input out_Control_Unit_Is_Branch_on_Equl,
input [1:0]out_Control_Unit_pc_src,
input [1:0]out_Control_Unit_Zero_Or_Rs,
input [2:0]out_Control_Unit_ALU_Src,
input [5:0]out_Control_Unit_Operation,
//mem signals
input out_Control_Unit_Store_Byte,
input out_Control_Unit_Mem_Write,
input out_Control_Unit_Mem_Read,
//WB signals
input out_Control_Unit_Reg_Write_Ctrl,
input out_Control_Unit_Byte_Word,
input out_Control_Unit_Mem_Or_Reg,
input out_Control_Unit_Write_HiLo_Ctrl,
input	out_Control_Unit_isFloating,
input	out_Control_Unit_Write_Floating, 		
input [31:0]out_PC_Holder_PC_4,
input [31:0]out_IF_ID_Jump_Address,
input [31:0]out_Forward_AMUX_Read_Data1,//**
input [31:0]out_Forward_BMUX_Read_Data2,
input [15:0]out_IF_ID_Immidiate,
input [4:0]out_IF_ID_Shift_Amount,
input [4:0]out_IF_ID_Rt_Address,
input [4:0]out_IF_ID_Rd_Address,
input [4:0]out_IF_ID_Rs_Address,
input clk,
input Stall_Or_Not,
output reg out_ID_EXE_Reg_Write_Ctrl,
output reg out_ID_EXE_Byte_Word,
output reg out_ID_EXE_Mem_Or_Reg,
output reg out_ID_EXE_Store_Byte,
output reg out_ID_EXE_Mem_Write,
output reg out_ID_EXE_Mem_Read,
output reg out_ID_EXE_Reg_Write_HiLo_Ctrl,
output reg out_ID_EXE_isFloating,
output reg out_ID_EXE_Write_Floating, 
output reg[1:0] out_ID_EXE_pc_src,
output reg [31:0]out_ID_EXE_Jump_Address,
output reg [31:0]out_ID_EXE_Jump_Reg_Address,
output reg [31:0]out_ID_EXE_PC_4,
output reg out_ID_EXE_Reg_Destination,
output reg out_ID_EXE_Reg_Wrt_Adrs_Slect,
output reg out_ID_EXE_Is_Brnch_not_Eql,
output reg out_ID_EXE_Is_Branch_on_Equl,
output reg [1:0]out_ID_EXE_Zero_Or_Rs,
output reg [2:0]out_ID_EXE_ALU_Src,
output reg [5:0]out_ID_EXE_Operation,
output reg [31:0]out_ID_EXE_Forward_AMUX_Read_Data1,
output reg [31:0]out_ID_EXE_Forward_BMUX_Read_Data2,
output reg [15:0]out_ID_EXE_Immidiate,
output reg [4:0]out_ID_EXE_Shift_Amount,
output reg [4:0]out_ID_EXE_Rt_Address,
output reg [4:0]out_ID_EXE_Rd_Address,
output reg [4:0]out_ID_EXE_Rs_Address
);

initial
begin
out_ID_EXE_Reg_Write_Ctrl=0;
  out_ID_EXE_Byte_Word=0;
  out_ID_EXE_Mem_Or_Reg=0;
  out_ID_EXE_Store_Byte=0;
  out_ID_EXE_Mem_Write=0;
  out_ID_EXE_Mem_Read=0;
  out_ID_EXE_Reg_Write_HiLo_Ctrl=0;
 out_ID_EXE_pc_src=0;
  out_ID_EXE_Jump_Address=0;
 out_ID_EXE_Jump_Reg_Address=0;
out_ID_EXE_PC_4=0;
  out_ID_EXE_Reg_Destination=0;
  out_ID_EXE_Reg_Wrt_Adrs_Slect=0;
  out_ID_EXE_Is_Brnch_not_Eql=0;
  out_ID_EXE_Is_Branch_on_Equl=0;
 out_ID_EXE_Zero_Or_Rs=0;
out_ID_EXE_ALU_Src=0;
 out_ID_EXE_Operation=0;
 out_ID_EXE_Forward_AMUX_Read_Data1=0;
out_ID_EXE_Forward_BMUX_Read_Data2=0;
  out_ID_EXE_Immidiate=0;
out_ID_EXE_Shift_Amount=0;
  out_ID_EXE_Rt_Address=0;
  out_ID_EXE_Rd_Address=0;
 out_ID_EXE_Rs_Address=0;
 out_ID_EXE_isFloating = 0;
out_ID_EXE_Write_Floating = 0; 
end
always@(negedge clk)begin
if(Stall_Or_Not==0)begin
out_ID_EXE_Reg_Write_Ctrl= out_Control_Unit_Reg_Write_Ctrl;
out_ID_EXE_Byte_Word= out_Control_Unit_Byte_Word;
out_ID_EXE_Mem_Or_Reg= out_Control_Unit_Mem_Or_Reg;
out_ID_EXE_Store_Byte= out_Control_Unit_Store_Byte;
out_ID_EXE_Mem_Write= out_Control_Unit_Mem_Write;
out_ID_EXE_Mem_Read= out_Control_Unit_Mem_Read;
out_ID_EXE_Reg_Write_HiLo_Ctrl = out_Control_Unit_Write_HiLo_Ctrl;
out_ID_EXE_pc_src = out_Control_Unit_pc_src;
out_ID_EXE_Jump_Address = out_IF_ID_Jump_Address;
out_ID_EXE_Jump_Reg_Address=out_Forward_AMUX_Read_Data1;
out_ID_EXE_PC_4 = out_PC_Holder_PC_4;
out_ID_EXE_Reg_Destination=out_Control_Unit_Reg_Destination;
out_ID_EXE_Reg_Wrt_Adrs_Slect=out_Control_Unit_Reg_Wrt_Adrs_Slect;
out_ID_EXE_Is_Brnch_not_Eql=out_Control_Unit_Is_Brnch_not_Eql;
out_ID_EXE_Is_Branch_on_Equl=out_Control_Unit_Is_Branch_on_Equl;
out_ID_EXE_Zero_Or_Rs=out_Control_Unit_Zero_Or_Rs;
out_ID_EXE_ALU_Src=out_Control_Unit_ALU_Src;
out_ID_EXE_Operation=out_Control_Unit_Operation;
out_ID_EXE_Forward_AMUX_Read_Data1=out_Forward_AMUX_Read_Data1;//**
out_ID_EXE_Forward_BMUX_Read_Data2=out_Forward_BMUX_Read_Data2;
out_ID_EXE_Immidiate=out_IF_ID_Immidiate;
out_ID_EXE_Shift_Amount=out_IF_ID_Shift_Amount;
out_ID_EXE_Rt_Address=out_IF_ID_Rt_Address;
out_ID_EXE_Rd_Address=out_IF_ID_Rd_Address;
out_ID_EXE_Rs_Address=out_IF_ID_Rs_Address;
out_ID_EXE_isFloating = out_Control_Unit_isFloating;
out_ID_EXE_Write_Floating = out_Control_Unit_Write_Floating;
end
else if(Stall_Or_Not==1)begin
out_ID_EXE_Reg_Write_Ctrl=0;
out_ID_EXE_Byte_Word=0;
out_ID_EXE_Mem_Or_Reg=0;
out_ID_EXE_Store_Byte=0;
out_ID_EXE_Mem_Write=0;
out_ID_EXE_Mem_Read=0;
out_ID_EXE_Reg_Write_HiLo_Ctrl=0;
out_ID_EXE_pc_src=0;
out_ID_EXE_Jump_Address=0;
out_ID_EXE_Jump_Reg_Address=0;
out_ID_EXE_PC_4=0;
out_ID_EXE_Reg_Destination=0;
out_ID_EXE_Reg_Wrt_Adrs_Slect=0;
out_ID_EXE_Is_Brnch_not_Eql=0;
out_ID_EXE_Is_Branch_on_Equl=0;
out_ID_EXE_Zero_Or_Rs=0;
out_ID_EXE_ALU_Src=0;
out_ID_EXE_Operation=0;
out_ID_EXE_Forward_AMUX_Read_Data1=0;
out_ID_EXE_Forward_BMUX_Read_Data2=0;
out_ID_EXE_Immidiate=0;
out_ID_EXE_Shift_Amount=0;
out_ID_EXE_Rt_Address=0;
out_ID_EXE_Rd_Address=0;
out_ID_EXE_Rs_Address=0;
out_ID_EXE_isFloating = 0;
out_ID_EXE_Write_Floating = 0; 
end
end
endmodule
