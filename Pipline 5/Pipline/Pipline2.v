module Pipline2(
input [31:0]initial_PC
);

wire clk;
wire [31:0]out_MUXPC_Address;
wire [31:0] out_PC_Address;
wire [31:0]out_Add4_PC_4;
wire [31:0] out_Instruction_Data;
wire [5:0] out_IF_ID_Opcode;
wire [5:0]out_IF_ID_Funct;
wire [31:0] out_IF_ID_PC_4;
wire [31:0]out_IF_ID_Jump_Address;
wire [4:0] out_IF_ID_Read_Address1;
wire [4:0]out_IF_ID_Read_Address2;
wire [15:0]out_IF_ID_Immidiate;
wire [4:0]out_IF_ID_Shift_Amount;
wire [4:0]out_IF_ID_Rt_Address;
wire [4:0]out_IF_ID_Rd_Address;
wire [4:0]out_IF_ID_Rs_Address;
wire Reg_Write_Ctrl;
wire Reg_Read_Ctrl;
wire Reg_Destination;
wire Reg_Wrt_Adrs_Slect;
wire Is_Brnch_not_Eql;
wire Is_Branch_on_Equl;
wire Store_Byte;
wire Mem_Write;
wire Mem_Read;
wire Byte_Word;
wire Mem_Or_Reg;
wire out_Control_Unit_mflo;
wire out_Control_Unit_mfhi;
wire [1:0] pc_src;
wire [1:0] Zero_Or_Rs;
wire [2:0] ALU_Src;
wire [5:0] Operation;
wire [31:0]out_Reg_File_Read_Data1;
wire [31:0]out_Reg_File_Read_Data2;
wire [4:0]  out_MEM_WB_Reg_Write_Address;
wire [31:0] out_MEM_WB_Reg_Write_Data;
wire [31:0] out_MEM_WB_Reg_Write_Data2;
wire out_MEM_WB_Reg_Write_ctrl;
wire out_MEM_WB_Reg_Write_HiLo_Ctrl;
wire [1:0]ForwardA;
wire [31:0]ALU_Result;
wire [31:0]out_Data_Mem_Read_Data;
wire [31:0]out_Forward_AMUX_Read_Data1;
wire [1:0]ForwardB;
wire [31:0]out_Forward_BMUX_Read_Data2;
wire out_Control_Unit_HiLo_Ctrl;
wire Zero;
wire out_ID_EXE_Is_Brnch_not_Eql;
wire out_ID_EXE_Is_Branch_on_Equl;
wire out_Branch_Or_Not_Branch_Or_Not;
wire [31:0]out_ID_EXE_Forward_AMUX_Read_Data1;
wire [31:0]out_ID_EXE_Forward_BMUX_Read_Data2;
wire [31:0]out_ID_EXE_PC_4;
wire [15:0]out_ID_EXE_Immidiate;
wire [31:0]out_Add_Branch_Branch_Address;
wire [1:0]out_ID_EXE_Zero_Or_Rs;
wire [31:0]out_Op1_MUX_Op1;
wire [2:0]out_ID_EXE_ALU_Src;
wire [4:0]out_ID_EXE_Shift_Amount;
wire [31:0]out_Op2_MUX_Op2;
wire [4:0]out_ID_EXE_Rt_Address;
wire [4:0]out_ID_EXE_Rd_Address;
wire out_ID_EXE_Reg_Destination;
wire [4:0]out_Reg_Destination_MUX_Reg_Write_Address;
wire out_ID_EXE_Reg_Wrt_Adrs_Slect;
wire [4:0]out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address;
wire out_ID_EXE_Reg_Write_Ctrl;
wire out_EXE_MEM_Reg_Write_ctrl;
wire [4:0]out_EXE_MEM_Reg_Write_Address;
wire [31:0]ALU_Result2;
wire [5:0]out_ID_EXE_Operation;
wire [31:0]out_EXE_MEM_Mem_Address;
wire [31:0]out_EXE_MEM_Read_Data2;
wire out_EXE_MEM_Store_Byte;
wire out_EXE_MEM_Mem_Write;
wire [31:0] out_EXE_MEM_Mem_Read;
wire out_EXE_MEM_Mem_Or_Reg;
wire out_EXE_MEM_Byte_word;
wire out_EXE_MEM_Write_HiLo_Ctrl;
wire [31:0]out_EXE_MEM_ALU_Result;
wire [31:0]out_EXE_MEM_ALU_Result2;
wire [31:0]out_ID_EXE_Jump_Address;
wire [31:0]out_MUX_Branch_Branch_Address;
wire [31:0]out_ID_EXE_Jump_Reg_Address;
wire [1:0]out_ID_EXE_pc_src;
wire out_ID_EXE_Reg_Write_HiLo_Ctrl;
wire out_ID_EXE_Byte_Word;
wire out_ID_EXE_Mem_Or_Reg;
wire out_ID_EXE_Store_Byte;
wire out_ID_EXE_Mem_Write;
wire out_ID_EXE_Mem_Read;
wire [4:0]out_ID_EXE_Rs_Address;
wire Stall_Or_Not;


wire out_ID_EXE_isFloating, out_ID_EXE_Write_Floating;
wire out_Control_Unit_isFloating, out_Control_Unit_Read_Floating, out_Control_Unit_Write_Floating;
wire out_EXE_MEM_Write_Floating;












//Clk
CLK CLK1(clk);
//Pc reg
PC_Reg PC_Reg1(
initial_PC,
out_MUXPC_Address,
clk,
out_PC_Address,
Stall_Or_Not
);

//Add4 
PC_Add4 PC_Add41(
out_PC_Address,
out_Add4_PC_4,
clk
);

//Instruction Memory
Instruc_Mem Instruc_Mem1(
clk,
out_PC_Address,
out_Instruction_Data
);
//IF_ID
IF_ID IF_ID1(
out_Instruction_Data,
out_Add4_PC_4,
out_IF_ID_Opcode,
out_IF_ID_Funct,
out_IF_ID_PC_4,
out_IF_ID_Jump_Address,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2,
out_IF_ID_Immidiate,
out_IF_ID_Shift_Amount,
out_IF_ID_Rt_Address,
out_IF_ID_Rd_Address,////???
out_IF_ID_Rs_Address,
clk,
Stall_Or_Not
);
//Control Unit
control_unit control_unit1(
			Reg_Write_Ctrl,
			Reg_Read_Ctrl,
			Reg_Destination,
			Reg_Wrt_Adrs_Slect,
			Is_Brnch_not_Eql,
			Is_Branch_on_Equl,
			Store_Byte,
			Mem_Write,
			Mem_Read,
			Byte_Word,
			Mem_Or_Reg,
			out_Control_Unit_mflo,
			out_Control_Unit_mfhi,
			out_Control_Unit_HiLo_Ctrl,//
			out_Control_Unit_isFloating,
			out_Control_Unit_Read_Floating,
			out_Control_Unit_Write_Floating,
			
			pc_src,
			Zero_Or_Rs,
			ALU_Src,
			Operation,
			out_IF_ID_Opcode,
			out_IF_ID_Funct,
			 clk
					);
					
//Reg File
Reg_File Reg_File1(
out_Reg_File_Read_Data1,
out_Reg_File_Read_Data2,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2,
out_IF_ID_Rd_Address,
out_MEM_WB_Reg_Write_Address,
out_MEM_WB_Reg_Write_Data,
out_MEM_WB_Reg_Write_Data2,
Reg_Read_Ctrl,
out_MEM_WB_Reg_Write_ctrl,
out_MEM_WB_Reg_Write_HiLo_Ctrl,
out_Control_Unit_mfhi,
out_Control_Unit_mflo,
clk
);
Floating_Reg_File Floating_Reg_File1(
out_Control_unit_Read_Floating,
out_MEM_WB_Write_Floating,
out_MEM_WB_Reg_Write_Address,
out_MEM_WB_Reg_Write_Data,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2,
clk
);

//Forward MUX A
Forward_AMUX Forward_AMUX1(
ForwardA,
ALU_Result,
out_Data_Mem_Read_Data,
out_Reg_File_Read_Data1,
out_Forward_AMUX_Read_Data1
);

//Forward MUX B
Forward_BMUX Forward_BMUX1(
ForwardB,
ALU_Result,
out_Data_Mem_Read_Data,
out_Reg_File_Read_Data2,
out_Forward_BMUX_Read_Data2
);

//ID_EXE
ID_EXE ID_EXE1(
Reg_Destination,
Reg_Wrt_Adrs_Slect,
Is_Brnch_not_Eql,
Is_Branch_on_Equl,
pc_src,
Zero_Or_Rs,
ALU_Src,
Operation,
Store_Byte,
Mem_Write,
Mem_Read,
Reg_Write_Ctrl,
Byte_Word,
Mem_Or_Reg,
out_Control_Unit_HiLo_Ctrl,
out_Control_Unit_isFloating,
out_Control_Unit_Write_Floating,
out_IF_ID_PC_4,
out_IF_ID_Jump_Address,
out_Forward_AMUX_Read_Data1,//**
out_Forward_BMUX_Read_Data2,
out_IF_ID_Immidiate,
out_IF_ID_Shift_Amount,
out_IF_ID_Rt_Address,
out_IF_ID_Rd_Address,
out_IF_ID_Rs_Address,
clk,
Stall_Or_Not,
out_ID_EXE_Reg_Write_Ctrl,
out_ID_EXE_Byte_Word,
out_ID_EXE_Mem_Or_Reg,
out_ID_EXE_Store_Byte,
out_ID_EXE_Mem_Write,
out_ID_EXE_Mem_Read,
out_ID_EXE_Reg_Write_HiLo_Ctrl,
out_ID_EXE_isFloating,
out_ID_EXE_Write_Floating,
out_ID_EXE_pc_src,
out_ID_EXE_Jump_Address,
out_ID_EXE_Jump_Reg_Address,
out_ID_EXE_PC_4,
out_ID_EXE_Reg_Destination,
out_ID_EXE_Reg_Wrt_Adrs_Slect,
out_ID_EXE_Is_Brnch_not_Eql,
out_ID_EXE_Is_Branch_on_Equl,
out_ID_EXE_Zero_Or_Rs,
out_ID_EXE_ALU_Src,
out_ID_EXE_Operation,
out_ID_EXE_Forward_AMUX_Read_Data1,
out_ID_EXE_Forward_BMUX_Read_Data2,
out_ID_EXE_Immidiate,
out_ID_EXE_Shift_Amount,
out_ID_EXE_Rt_Address,
out_ID_EXE_Rd_Address,
out_ID_EXE_Rs_Address
);

//Load Hazard
Load_Hazard Load_Hazard1(

out_ID_EXE_Mem_Read,
out_ID_EXE_Reg_Write_Ctrl,
out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2,
Stall_Or_Not
);

//Branch Or Not
Branch_Or_Not Branch_Or_Not1(
Zero,
out_ID_EXE_Is_Brnch_not_Eql,
out_ID_EXE_Is_Branch_on_Equl,
out_Branch_Or_Not_Branch_Or_Not
);

//Comparator
Comparator Comparator1(
out_ID_EXE_Forward_AMUX_Read_Data1,
out_ID_EXE_Forward_BMUX_Read_Data2,
Zero
);
//Add Branch
Add_Branch Add_Branch1(
out_ID_EXE_PC_4,
out_ID_EXE_Immidiate,
out_Add_Branch_Branch_Address
);

//Op1 MUX
Op1_MUX Op1_MUX1(
out_ID_EXE_Zero_Or_Rs,
out_ID_EXE_Forward_AMUX_Read_Data1,
out_ID_EXE_PC_4,
out_Op1_MUX_Op1
);

//Op2 Mux
Op2_MUX Op2_MUX1(
out_ID_EXE_ALU_Src,
out_ID_EXE_Forward_BMUX_Read_Data2,
out_ID_EXE_Immidiate,
out_ID_EXE_Shift_Amount,
out_Op2_MUX_Op2
);
//Reg Destination MUX 
Reg_Destination_MUX Reg_Destination_MUX1(

out_ID_EXE_Rt_Address,
out_ID_EXE_Rd_Address,
out_ID_EXE_Reg_Destination,
out_Reg_Destination_MUX_Reg_Write_Address
);

//Reg Destination Or Rd
Reg_Destination_Or_Ra_MUX Reg_Destination_Or_Ra_MUX1(
out_Reg_Destination_MUX_Reg_Write_Address,
out_ID_EXE_Reg_Wrt_Adrs_Slect,
out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address
);
//Forwarding
Forwarding Forwarding1(
ForwardA,
ForwardB,
out_ID_EXE_Reg_Write_Ctrl,
Reg_Write_Ctrl,
out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address,
out_EXE_MEM_Reg_Write_ctrl,
out_EXE_MEM_Reg_Write_Address,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2
);

//ALU
ALU ALU1(
ALU_Result,
ALU_Result2,
out_Op1_MUX_Op1,
out_Op2_MUX_Op2,
out_ID_EXE_Operation,
out_ID_EXE_isFloating,
clk//not used
);

//EXE_MEM
EXE_MEM EXE_MEM1(
out_EXE_MEM_Reg_Write_ctrl, 
out_EXE_MEM_Mem_Or_Reg, 
out_EXE_MEM_Byte_word,   
out_EXE_MEM_Write_HiLo_Ctrl,
out_EXE_MEM_Write_Floating,
out_EXE_MEM_Store_Byte, 
out_EXE_MEM_Mem_Write, 
out_EXE_MEM_Mem_Read,			
out_EXE_MEM_Mem_Address,
out_EXE_MEM_Read_Data2,
out_EXE_MEM_ALU_Result,
out_EXE_MEM_ALU_Result2,
out_EXE_MEM_Reg_Write_Address,
out_ID_EXE_Reg_Write_Ctrl, 
out_ID_EXE_Byte_Word, 
out_ID_EXE_Mem_Or_Reg, 
out_ID_EXE_Reg_Write_HiLo_Ctrl,
out_ID_EXE_Write_Floating,   
out_ID_EXE_Store_Byte, 
out_ID_EXE_Mem_Write, 
out_ID_EXE_Mem_Read,			//Mem control signals
								
ALU_Result, 
ALU_Result2,
										 out_ID_EXE_Forward_BMUX_Read_Data2,
out_Reg_Destination_Or_Ra_MUX_Reg_Destination_Address,
clk
);

//Data Memory 
Data_Mem Data_Mem1(
out_Data_Mem_Read_Data,
out_EXE_MEM_Mem_Address,
out_EXE_MEM_Read_Data2,//write data 
out_EXE_MEM_Store_Byte,//1byte 0word
out_EXE_MEM_Mem_Write,
out_EXE_MEM_Mem_Read,
clk);

//MEM_WB
MEM_WB MEM_WB1(
out_MEM_WB_Reg_Write_ctrl,
out_MEM_WB_Reg_Write_HiLo_Ctrl,
out_MEM_WB_Write_Floating,
out_MEM_WB_Reg_Write_Data,
out_MEM_WB_Reg_Write_Data2,
out_MEM_WB_Reg_Write_Address,								
out_EXE_MEM_Reg_Write_ctrl, 
out_EXE_MEM_Mem_Or_Reg, 
out_EXE_MEM_Byte_word,
out_EXE_MEM_Write_HiLo_Ctrl,
out_EXE_MEM_Write_Floating,
clk, 
out_EXE_MEM_ALU_Result, 
out_EXE_MEM_ALU_Result2,
out_Data_Mem_Read_Data, 
out_EXE_MEM_Reg_Write_Address						
);

//MUX PC
MUX_PC MUX_PC1(
out_Add4_PC_4,
out_ID_EXE_Jump_Address,
out_MUX_Branch_Branch_Address,
out_ID_EXE_Jump_Reg_Address,
out_ID_EXE_pc_src,
out_MUXPC_Address,
clk
);
//MUX Branch
MUX_Branch MUX_Branch1(
out_Branch_Or_Not_Branch_Or_Not,
out_Add_Branch_Branch_Address,
out_ID_EXE_PC_4,
clk,
out_MUX_Branch_Branch_Address
);



endmodule
