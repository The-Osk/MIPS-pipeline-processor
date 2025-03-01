module Floating_Reg_File(//output reg [31:0] out_Floating_Reg_File_Read_Data_1, out_Floating_Reg_File_Read_Data_2,
								 input out_Control_unit_Read_Floating, out_MEM_WB_Write_Floating,
								 input[4:0] out_MEM_WB_Reg_Write_Address,
								 input[31:0] out_MEM_WB_Reg_Write_Data,
								 input[4:0]  out_IF_ID_Read_Address_1, out_IF_ID_Read_Address_2,
								 input clk	
								);		
								
		integer i;
		reg [31:0] f[31:0];
		
		initial begin
			for(i=0;i<31;i=i+1) begin
				f[i]  = 0;
			end
			
			f[1] = 32'b00111111100110011001100110011010;
			f[2] = 32'b00111111100110011001100110011010;
			
			
		end
	
	
					
		always @(*) begin
				if(out_MEM_WB_Write_Floating)begin
					f[out_MEM_WB_Reg_Write_Address] = out_MEM_WB_Reg_Write_Data;
				end
				
				
//				if(out_Control_unit_Read_Floating)begin
//					out_Floating_Reg_File_Read_Data_1 = f[out_IF_ID_Read_Address_1];
//					out_Floating_Reg_File_Read_Data_2 = f[out_IF_ID_Read_Address_2];
//				end
		
		end
		
endmodule