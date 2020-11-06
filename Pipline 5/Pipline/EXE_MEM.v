module EXE_MEM(
						output reg  out_EXE_MEM_Reg_Write_ctrl, 
										out_EXE_MEM_Mem_Or_Reg, 
										out_EXE_MEM_Byte_word,   //WB control signals
										out_EXE_MEM_Write_HiLo_Ctrl,
										out_EXE_MEM_Write_Floating,
										
									   out_EXE_MEM_Store_Byte, 
										out_EXE_MEM_Mem_Write, 
										out_EXE_MEM_Mem_Read,			//Mem control signals
										
						output reg [31:0] out_EXE_MEM_Mem_Address,
												out_EXE_MEM_Read_Data2,
												out_EXE_MEM_ALU_Result, out_EXE_MEM_ALU_Result2,
						output reg[4:0]   out_EXE_MEM_Reg_Write_Address,
										
						input out_WB_singal_Holder_Reg_Write_Ctrl, out_WB_singal_Holder_Byte_Word, out_WB_singal_Holder_Mem_Or_Reg, out_ID_EXE_Reg_Write_HiLo_Ctrl, out_ID_EXE_Write_Floating,   //WB control signals
								out_MEM_signal_Holder_Store_Byte, out_MEM_signal_Mem_Write, out_MEM_signal_Mem_Read,			//Mem control signals
								
						input	[31:0] ALU_Result, ALU_Result2,
										 out_Read_Data2_Holder_Read_Data2,
						input [4:0]	 out_Reg_Dst_Holder_Reg_Destination_Address,
						input		clk
						
						
						);
						
						initial
						begin
						
						
						  out_EXE_MEM_Reg_Write_ctrl=0; 
						  out_EXE_MEM_Mem_Or_Reg=0;
						  out_EXE_MEM_Byte_word=0; 
						  out_EXE_MEM_Store_Byte=0;
						  out_EXE_MEM_Mem_Write=0;
						  out_EXE_MEM_Mem_Read=0;	
						  out_EXE_MEM_Mem_Address=0;
						  out_EXE_MEM_Read_Data2=0;
						  out_EXE_MEM_ALU_Result=0;
						  out_EXE_MEM_Reg_Write_Address=0;
						  out_EXE_MEM_Write_HiLo_Ctrl=0;
										
						end
						
						
						
						always @(negedge clk) begin
								out_EXE_MEM_Reg_Write_ctrl = out_WB_singal_Holder_Reg_Write_Ctrl;
								out_EXE_MEM_Mem_Or_Reg = out_WB_singal_Holder_Mem_Or_Reg;
								out_EXE_MEM_Byte_word = out_WB_singal_Holder_Byte_Word ;
								out_EXE_MEM_Store_Byte = out_MEM_signal_Holder_Store_Byte;					//control singals
								out_EXE_MEM_Mem_Write = out_MEM_signal_Mem_Write;
								out_EXE_MEM_Mem_Read = out_MEM_signal_Mem_Read;
								out_EXE_MEM_Write_HiLo_Ctrl = out_ID_EXE_Reg_Write_HiLo_Ctrl;
								out_EXE_MEM_Write_Floating = out_ID_EXE_Write_Floating;
								
								
								out_EXE_MEM_ALU_Result = ALU_Result;
								out_EXE_MEM_ALU_Result2 =ALU_Result2;
								
								
								out_EXE_MEM_Mem_Address = ALU_Result;
								out_EXE_MEM_Read_Data2 = out_Read_Data2_Holder_Read_Data2;
								
								out_EXE_MEM_Reg_Write_Address = out_Reg_Dst_Holder_Reg_Destination_Address; 
								
								
						
						
						end
						
endmodule