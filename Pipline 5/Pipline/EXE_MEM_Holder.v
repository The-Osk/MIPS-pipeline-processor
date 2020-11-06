module EXE_MEM_Holder(


						input out_EXE_MEM_Reg_Write_ctrl, out_EXE_MEM_Mem_Or_Reg, out_EXE_MEM_Byte_word,   //WB control signals
									 
						input [31:0] out_EXE_MEM_ALU_Result,
						input [4:0] out_EXE_MEM_Reg_Write_Address,
						input clk,
						
						output reg out_EXE_MEM_Reg_Write_ctrl_saved, out_EXE_MEM_Mem_Or_Reg_saved, out_EXE_MEM_Byte_word_saved,   //WB control signals			 
						output reg [31:0] 	out_EXE_MEM_ALU_Result_saved,
						output reg [4:0] out_EXE_MEM_Reg_Write_Address_saved

);



always@(*)begin
out_EXE_MEM_Reg_Write_ctrl_saved=out_EXE_MEM_Reg_Write_ctrl;

out_EXE_MEM_Mem_Or_Reg_saved=out_EXE_MEM_Mem_Or_Reg;

out_EXE_MEM_Byte_word_saved=out_EXE_MEM_Byte_word;







out_EXE_MEM_ALU_Result_saved=out_EXE_MEM_ALU_Result;

out_EXE_MEM_Reg_Write_Address_saved=out_EXE_MEM_Reg_Write_Address;







end

endmodule
