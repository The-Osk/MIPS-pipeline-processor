module MEM_WB(

output reg  out_MEM_WB_Reg_Write_ctrl, out_MEM_WB_Reg_Write_HiLo_Ctrl, out_MEM_WB_Write_Floating,
output reg [31:0] out_MEM_WB_Reg_Write_Data, out_MEM_WB_Reg_Write_Data2,
output reg [4:0] out_MEM_WB_Reg_Write_Address,
								
input out_EXE_MEM_Reg_Write_ctrl, out_EXE_MEM_Mem_Or_Reg, 
input out_EXE_MEM_Byte_word,
		out_EXE_MEM_Write_HiLo_Ctrl,
		out_EXE_MEM_Write_Floating,
		clk, //control signals

input [31:0]out_EXE_MEM_ALU_Result, out_EXE_MEM_ALU_Result2,
input [31:0]out_Data_Mem_Read_Data,  //from memeory
input [4:0] out_EXE_MEM_Reg_Write_Address						
);

initial
begin

out_MEM_WB_Reg_Write_ctrl=0;
out_MEM_WB_Reg_Write_Data=32'b00000000000000000000000000000000;
out_MEM_WB_Reg_Write_Address=0;

end				 
			

always @(negedge clk)	begin


				out_MEM_WB_Reg_Write_ctrl=out_EXE_MEM_Reg_Write_ctrl;
				out_MEM_WB_Reg_Write_Address=out_EXE_MEM_Reg_Write_Address;
				out_MEM_WB_Reg_Write_Data2 = out_EXE_MEM_ALU_Result2;
				out_MEM_WB_Reg_Write_HiLo_Ctrl = out_EXE_MEM_Write_HiLo_Ctrl;
				out_MEM_WB_Write_Floating = out_EXE_MEM_Write_Floating;
			
		//calculate reg file write data(if ALU or  Data Memory)
           if(out_EXE_MEM_Mem_Or_Reg==0) begin
                            if(out_EXE_MEM_Byte_word== 0)
                                out_MEM_WB_Reg_Write_Data = out_Data_Mem_Read_Data;

                            else if(out_EXE_MEM_Byte_word==1) 
                                out_MEM_WB_Reg_Write_Data = out_Data_Mem_Read_Data & 64'b0000000000000000000000000000000000000000000000000000000011111111;
              end                                              					        // 0000000000000000000000000000000000000000000000000000000000000000
            //calculate reg file write data (if byte or word)
            if(out_EXE_MEM_Mem_Or_Reg==1) 
                out_MEM_WB_Reg_Write_Data = out_EXE_MEM_ALU_Result;
		   	
						
			
	  
				
end
				 
endmodule
