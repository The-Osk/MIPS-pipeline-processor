module Pipline();

/******************************************
*******************************************
**                                       **
**        Abdullah Aqqad 20160319        **
**          Osama Kuri 20160078          ** 
**                                       **  
**                                       **
*******************************************
******************************************/



wire clk;
wire [31:0]ALU_Result;
wire [31:0]ALU_Result2;
wire [31:0]out_ID_EXE_Op1;
wire [31:0]out_ID_EXE_Op2;
wire [5:0]out_ID_EXE_Operation;
wire [31:0]out_Reg_File_Read_Data1;
wire [31:0]out_Reg_File_Read_Data2;
wire [4:0]out_IF_ID_Read_Address1;
wire [4:0]out_IF_ID_Read_Address2;
wire [4:0]out_MEM_WB_Reg_Write_Address;
wire [31:0]out_MEM_WB_Reg_Write_Data;
wire [31:0]out_MEM_WB_Reg_Write_Data2;
wire [31:0]out_PC_Address;
wire [31:0]out_Instruction_Data;
wire [31:0]out_Data_Mem_Read_Data;
wire [31:0]out_EXE_MEM_Mem_Address;
wire [31:0]out_EXE_MEM_Read_Data2;
wire out_EXE_MEM_Store_Byte;
wire out_EXE_MEM_Mem_Write;
wire out_EXE_MEM_Mem_Read;
wire [31:0]out_Add4_PC_4;
wire [5:0]out_IF_ID_Opcode;
wire [5:0]out_IF_ID_Funct;
wire [31:0]out_IF_ID_PC_4;
wire [31:0]out_IF_ID_Jump_Address;
wire [15:0]out_IF_ID_Immidiate;
wire [4:0]out_IF_ID_Shift_Amount;
wire [4:0]out_IF_ID_Rt_Address;
wire [4:0]out_IF_ID_Rd_Address;
wire [4:0]out_IF_ID_Rs_Address;
wire [31:0]out_PC_Holder_PC_4;
wire [31:0]out_Jump_Address_Hold_Jump_Address;
wire [15:0]out_IF_ID_Holder_Immidiate;
wire [4:0]out_IF_ID_Holder_Shift_Amount;
wire [4:0]out_IF_ID_Holder_Rt_Address;
wire [4:0]out_IF_ID_Holder_Rd_Address;
wire out_Control_Unit_Reg_Destination;
wire out_Control_Unit_Reg_Wrt_Adrs_Slect;
wire out_Control_Unit_Is_Brnch_not_Eql;
wire out_Control_Unit_Is_Branch_on_Equl;
wire [1:0]out_Control_Unit_pc_src;
wire [1:0]out_Control_Unit_Zero_Or_Rs;
wire [2:0]out_Control_Unit_ALU_Src;
wire [5:0]out_Control_Unit_Operation;
wire out_Control_Unit_Store_Byte;
wire out_Control_Unit_Mem_Write;
wire out_Control_Unit_Mem_Read;
wire out_Control_Unit_Reg_Write_Ctrl;
wire out_Control_Unit_Byte_Word;
wire out_Control_Unit_Mem_Or_Reg;
wire out_Control_Unit_mflo;
wire out_Control_Unit_mfhi;			//mul hi low
wire out_Control_Unit_Write_HiLo_Ctrl;
wire out_MEM_WB_Reg_Write_HiLo_Ctrl;
wire out_ID_EXE_Reg_Write_Ctrl;
wire out_ID_EXE_Byte_Word;
wire out_ID_EXE_Mem_Or_Reg;
wire out_ID_EXE_Store_Byte;
wire out_ID_EXE_Mem_Write;
wire out_ID_EXE_Mem_Read;
wire out_ID_EXE_Reg_Write_HiLo_Ctrl;
wire [1:0]out_ID_EXE_pc_src;
wire [31:0]out_ID_EXE_Jump_Address;
wire [31:0]out_ID_EXE_Jump_Reg_Address;
wire out_ID_EXE_Branch_or_Not;
wire [31:0]out_ID_EXE_Branch_Address;
wire [31:0]out_ID_EXE_Read_Data2;
wire [4:0]out_ID_EXE_Reg_Destination_Address;
wire [31:0]out_ID_EXE_PC_4;
wire out_WB_singal_Holder_Reg_Write_Ctrl;
wire out_WB_singal_Holder_Byte_Word;
wire out_WB_singal_Holder_Mem_Or_Reg;
wire out_MEM_signal_Holder_Store_Byte;
wire out_MEM_signal_Mem_Write;
wire out_MEM_signal_Mem_Read;
wire [31:0]out_Read_Data2_Holder_Read_Data2;
wire [4:0]out_Reg_Dst_Holder_Reg_Destination_Address;
wire out_EXE_MEM_Reg_Write_ctrl;
wire out_EXE_MEM_Mem_Or_Reg;
wire out_EXE_MEM_Byte_word;
wire out_EXE_MEM_Write_HiLo_Ctrl;
wire [31:0]out_EXE_MEM_ALU_Result;
wire [31:0]out_EXE_MEM_ALU_Result2;
wire [4:0]out_EXE_MEM_Reg_Write_Address;
wire [31:0]out_MUX_Branch_Branch_Address;
wire [31:0]out_MUXPC_Address;
wire out_Control_Unit_Reg_Read_Ctrl;
wire out_MEM_WB_Reg_Write_ctrl;


wire [4:0]out_MEM_WB_Reg_Holder_Write_Address;
wire [31:0]out_MEM_WB_Holder_Reg_Write_Data;
wire out_MEM_WB_Holder_Reg_Write_ctrl;
wire out_EXE_MEM_Reg_Write_ctrl_saved;
wire out_EXE_MEM_Mem_Or_Reg_saved;
wire out_EXE_MEM_Byte_word_saved;
wire [31:0]out_EXE_MEM_ALU_Result_saved;
wire [4:0] out_EXE_MEM_Reg_Write_Address_saved;
wire [31:0]out_Forward_AMUX_Read_Data1;
wire [31:0]out_Forward_BMUX_Read_Data2;
wire [1:0]ForwardA;
wire [1:0]ForwardB;




//Clk
CLK CLK1(clk);

//MUX_PC											
MUX_PC MUX_PC1(
out_Add4_PC_4,
out_ID_EXE_Jump_Address,
out_MUX_Branch_Branch_Address,
out_ID_EXE_Jump_Reg_Address,
out_ID_EXE_pc_src,
out_MUXPC_Address,
clk);



//MUX_Branch
MUX_Branch MUX_Branch1(
out_ID_EXE_Branch_or_Not,
out_ID_EXE_Branch_Address,
out_ID_EXE_PC_4,
clk,
out_MUX_Branch_Branch_Address
);
	

//PC_Reg
PC_Reg PC_Reg1(
out_MUXPC_Address,
clk,
out_PC_Address
);

//PC_Add4
PC_Add4 PC_Add41(
out_PC_Address,
out_Add4_PC_4,
clk
);

//Instruc_Mem
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
out_IF_ID_Rd_Address,
out_IF_ID_Rs_Address,
clk
);

//////////////////////////////

//control_unit
control_unit control_unit1(
out_Control_Unit_Reg_Write_Ctrl,
out_Control_Unit_Reg_Read_Ctrl,
out_Control_Unit_Reg_Destination,
out_Control_Unit_Reg_Wrt_Adrs_Slect,
out_Control_Unit_Is_Brnch_not_Eql,
out_Control_Unit_Is_Branch_on_Equl,
out_Control_Unit_Store_Byte,
out_Control_Unit_Mem_Write,
out_Control_Unit_Mem_Read,
out_Control_Unit_Byte_Word,
out_Control_Unit_Mem_Or_Reg,
out_Control_Unit_mflo,
out_Control_Unit_mfhi,			//mul hi low
out_Control_Unit_Write_HiLo_Ctrl,					
out_Control_Unit_pc_src,  
out_Control_Unit_Zero_Or_Rs,
out_Control_Unit_ALU_Src,
out_Control_Unit_Operation,
out_IF_ID_Opcode, 
out_IF_ID_Funct,
clk
);

//Reg_File
Reg_File Reg_File1(
out_Reg_File_Read_Data1,
out_Reg_File_Read_Data2,
out_IF_ID_Read_Address1,
out_IF_ID_Read_Address2,
out_IF_ID_Rd_Address,
out_MEM_WB_Reg_Write_Address,
out_MEM_WB_Reg_Write_Data,
out_MEM_WB_Reg_Write_Data2,
out_Control_Unit_Reg_Read_Ctrl,
out_MEM_WB_Reg_Write_ctrl,
out_MEM_WB_Reg_Write_HiLo_Ctrl,
out_Control_Unit_mfhi,
out_Control_Unit_mflo,
clk
);

//Forward A MUX
Forward_AMUX Forward_AMUX1(
ForwardA,
ALU_Result,
out_Data_Mem_Read_Data,
out_Reg_File_Read_Data1,
out_Forward_AMUX_Read_Data1
);
//Forward + B MUX
Forward_BMUX Forward_BMUX1(
ForwardB,
ALU_Result,
out_Data_Mem_Read_Data,
out_Reg_File_Read_Data2,
out_Forward_BMUX_Read_Data2
);



//////////////////////////////////

//ID_EXE
ID_EXE ID_EXE1(
out_Control_Unit_Reg_Destination,
out_Control_Unit_Reg_Wrt_Adrs_Slect,
out_Control_Unit_Is_Brnch_not_Eql,
out_Control_Unit_Is_Branch_on_Equl,
out_Control_Unit_pc_src,
out_Control_Unit_Zero_Or_Rs,
out_Control_Unit_ALU_Src,
out_Control_Unit_Operation,
out_Control_Unit_Store_Byte,
out_Control_Unit_Mem_Write,
out_Control_Unit_Mem_Read,
out_Control_Unit_Reg_Write_Ctrl,
out_Control_Unit_Byte_Word,
out_Control_Unit_Mem_Or_Reg,
out_Control_Unit_Write_HiLo_Ctrl,
out_IF_ID_PC_4,
out_IF_ID_Jump_Address,
out_Forward_AMUX_Read_Data1,
out_Forward_BMUX_Read_Data2,
out_IF_ID_Immidiate,
out_IF_ID_Shift_Amount,
out_IF_ID_Rt_Address,
out_IF_ID_Rd_Address,
out_IF_ID_Rs_Address,
clk,
out_ID_EXE_Reg_Write_Ctrl,
out_ID_EXE_Byte_Word,
out_ID_EXE_Mem_Or_Reg,
out_ID_EXE_Store_Byte,
out_ID_EXE_Mem_Write,
out_ID_EXE_Mem_Read,
out_ID_EXE_Reg_Write_HiLo_Ctrl,
out_ID_EXE_pc_src,
out_ID_EXE_Jump_Address,
out_ID_EXE_Jump_Reg_Address,
out_ID_EXE_Op1,
out_ID_EXE_Op2,
out_ID_EXE_Branch_or_Not,
out_ID_EXE_Branch_Address,
out_ID_EXE_Read_Data2,
out_ID_EXE_Operation,
out_ID_EXE_Reg_Destination_Address,
out_ID_EXE_PC_4
);

//Forwarding Unit
Forwarding Forwarding1 (

ForwardA,
ForwardB,

out_ID_EXE_Reg_Write_Ctrl,
out_Control_Unit_Reg_Write_Ctrl,
out_ID_EXE_Reg_Destination_Address,//Destination of Primary R
out_EXE_MEM_Reg_Write_ctrl,
out_EXE_MEM_Reg_Write_Address,//Destination of primary I (Load)

out_IF_ID_Read_Address1,//Source 1 of Dependant R
out_IF_ID_Read_Address2//Source 2 of Dependant R


);

//ALU
ALU ALU1(
ALU_Result,
ALU_Result2,
out_ID_EXE_Op1,
out_ID_EXE_Op2,
out_ID_EXE_Operation,
clk
);






//Data_Mem
Data_Mem Data_Mem1(
out_Data_Mem_Read_Data,
out_EXE_MEM_Mem_Address,
out_EXE_MEM_Read_Data2,
out_EXE_MEM_Store_Byte,
out_EXE_MEM_Mem_Write,
out_EXE_MEM_Mem_Read,
clk);


//EXE_MEM
EXE_MEM EXE_MEM1(
out_EXE_MEM_Reg_Write_ctrl, 
out_EXE_MEM_Mem_Or_Reg,
out_EXE_MEM_Byte_word,
out_EXE_MEM_Write_HiLo_Ctrl,
   
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
out_ID_EXE_Store_Byte, 
out_ID_EXE_Mem_Write, 
out_ID_EXE_Mem_Read,			
ALU_Result,
ALU_Result2,
out_ID_EXE_Read_Data2,
out_ID_EXE_Reg_Destination_Address,
clk
);


//MEM_WB
MEM_WB MEM_WB1(
out_MEM_WB_Reg_Write_ctrl,
out_MEM_WB_Reg_Write_HiLo_Ctrl,
out_MEM_WB_Reg_Write_Data,
out_MEM_WB_Reg_Write_Data2,
out_MEM_WB_Reg_Write_Address,								
out_EXE_MEM_Reg_Write_ctrl, 
out_EXE_MEM_Mem_Or_Reg, 
out_EXE_MEM_Byte_word,
out_EXE_MEM_Write_HiLo_Ctrl,
clk, 
out_EXE_MEM_ALU_Result,
out_EXE_MEM_ALU_Result2,
out_Data_Mem_Read_Data,  
out_EXE_MEM_Reg_Write_Address						
);

















	
endmodule
