module control_unit(
			output reg  Reg_Write_Ctrl,
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
							out_Control_Unit_HiLo_Ctrl,
							out_Control_Unit_isFloating,
							out_Control_Unit_Read_Floating,
							out_Control_Unit_Write_Floating, 							
					
			output reg[1:0] pc_src,Zero_Or_Rs,
			output reg[2:0] ALU_Src,
			output reg[5:0] operation,
			input [5:0] opcode,funct,
			input clk
					);
					
					initial begin
							pc_src = 2'b00;
							Reg_Write_Ctrl = 1'b0;
							Reg_Read_Ctrl = 1'b0;					//need to send fuct to aly control
							Zero_Or_Rs = 2'b00;
							Reg_Destination = 1'b0;
							Reg_Wrt_Adrs_Slect = 1'b0;
							Is_Brnch_not_Eql = 1'b0;
							Is_Branch_on_Equl = 1'b0;
							Store_Byte = 1'b0;
							Mem_Write = 1'b0;
							Mem_Read = 1'b0;
							Byte_Word = 1'b0;
							Mem_Or_Reg = 1'b0;
							operation = 6'b0;
							ALU_Src=3'b000;
							out_Control_Unit_mflo = 0;
							out_Control_Unit_mfhi = 0;
							out_Control_Unit_HiLo_Ctrl = 0;
					end
				//always read input and give output	
				always @(*) begin
				// reset the singals
							pc_src = 2'b00;
							Reg_Write_Ctrl = 1'b0;
							Reg_Read_Ctrl = 1'b0;					//need to send fuct to aly control
							Zero_Or_Rs = 2'b00;
							Reg_Destination = 1'b0;
							Reg_Wrt_Adrs_Slect = 1'b0;
							Is_Brnch_not_Eql = 1'b0;
							Is_Branch_on_Equl = 1'b0;
							Store_Byte = 1'b0;
							Mem_Write = 1'b0;
							Mem_Read = 1'b0;
							Byte_Word = 1'b0;
							Mem_Or_Reg = 1'b0;
							out_Control_Unit_mflo = 0;
							//out_Control_Unit_mfhi = 0;
							out_Control_Unit_HiLo_Ctrl = 0;
				
				// do nwe take the opcode as hex or bi
				//refactor the code later
							if (opcode == 6'b000001) begin //R-type
								
								if (funct == 6'b100000) begin //add
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b100000;
								Byte_Word = 1'b0;
								ALU_Src=3'b000;
								end
								
								if(funct == 6'b10100) begin  //and
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b10100;
								end
								
								if(funct == 6'b100111) begin  // nor
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b100111;
								end
								
								if(funct == 6'b100101) begin  // or
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b100101;
								end
								
								if(funct == 6'b101010) begin // slt
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b101010;
								end
								
								if(funct == 6'b101011) begin  // sltu
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b101011;
								end
								
								if(funct == 6'b000000) begin  //sll
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								ALU_Src = 3'b101;
								operation = 6'b000000;
								end
								
								if(funct == 6'b000010) begin //srl
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								ALU_Src = 3'b101;
								operation = 6'b000010;
								end
								
								if(funct == 6'b000011) begin //sra
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								ALU_Src = 3'b101;
								operation = 6'b000011;
								end								
								
								if(funct == 6'b100100) begin //sub
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b100100;
								end
								
								if(funct == 6'b100010) begin //subu
								Reg_Write_Ctrl= 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Reg_Destination =1'b1;
								Mem_Or_Reg = 2'b01;
								operation = 6'b100010;
								end
								
								
								if (funct == 6'b001000) begin //ja
									pc_src = 2'b11;
									Reg_Read_Ctrl= 2'b1;
									Mem_Or_Reg = 2'b1;
									operation =  000000;
								end
								
								if (funct == 6'b100001) begin //lwn
									Reg_Write_Ctrl = 1'b1;
									Reg_Read_Ctrl = 1'b1;
									Mem_Read = 1'b1;
									Reg_Destination=1'b1;
									operation = 6'b100000;
									
								end
								
								if (funct == 6'b010011) begin //swn
									Reg_Read_Ctrl = 1'b1;
									Mem_Write = 1'b1;
									operation = 6'b100000;
								end
								
								if(funct == 6'b011000) begin //mult
									out_Control_Unit_HiLo_Ctrl = 1'b1;
									Reg_Read_Ctrl = 1'b1;
									Mem_Or_Reg = 2'b01;
									operation = 6'b011000;
								end
								
								if(funct == 6'b011001) begin //multu
									out_Control_Unit_HiLo_Ctrl = 1'b1;
									Reg_Read_Ctrl = 1'b1;
									Mem_Or_Reg = 2'b01;
									operation = 6'b011001;
								end							
								
								if(funct == 6'b011010) begin //div
									out_Control_Unit_HiLo_Ctrl = 1'b1;
									Reg_Read_Ctrl = 1'b1;
									Mem_Or_Reg = 2'b01;
									operation = 6'b011010;
								
								end
								
								if(funct == 6'b011011) begin //divu
									out_Control_Unit_HiLo_Ctrl = 1'b1;
									Reg_Read_Ctrl = 1'b1;
									Mem_Or_Reg = 2'b01;
									operation = 6'b011011;
								
								end
								
								
								if(funct == 6'b010000) begin  //mfhi
									out_Control_Unit_mfhi = 1'b1;
								end
								
								if(funct == 6'b010010) begin  //mflo
									out_Control_Unit_mflo = 1'b1;
								end
								
							end
				
				
							if (opcode == 6'b001001) begin //Addi
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b001;					
								Mem_Or_Reg = 1'b1;
								operation = 6'b100000;
							end
				
				
							if(opcode == 6'b001000) begin //addiu
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b010;					
								Mem_Or_Reg = 1'b1;
								operation = 6'b100000;
							end		
				
				
							if(opcode == 6'b001100) begin //andi
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b001;					
								Mem_Or_Reg = 1'b1;
								operation = 6'b010100;
							end
			
							if(opcode == 6'b000101) begin //beq
								pc_src = 1'b01;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b000;
								Is_Branch_on_Equl = 1'b1;
								operation = 6'b100100;
							end
				
				
							if(opcode == 6'b000100) begin //bne
								pc_src = 1'b01;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b000;
								Is_Brnch_not_Eql = 1'b1;
								operation = 6'b100100;
							end
				
				
							if(opcode == 6'b100010) begin //lbu
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl=1'b1;
								Mem_Read = 1'b1;
								ALU_Src = 3'b001;	
								Byte_Word = 1'b1;
								operation = 6'b100000;
							end
				
				
							if(opcode == 6'b001111) begin //lui
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl=1'b0;
								Byte_Word=1'b0;
								Mem_Or_Reg=1'b1;
								Reg_Wrt_Adrs_Slect=1'b0;
								Reg_Destination=1'b0;
								ALU_Src = 3'b100;
								Zero_Or_Rs = 2'b10;
								operation = 6'b100000;
							end
				
				
							if(opcode == 6'b010010) begin //lw
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl=1'b1;
								Mem_Read = 1'b1;
								ALU_Src = 3'b001;
								operation = 6'b100000;
							end
				
				
							if(opcode == 6'b001110) begin //ori
								Reg_Write_Ctrl = 1'b1;
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b001;					
								Mem_Or_Reg = 1'b1;
								operation = 6'b100101;
							end
				
				
							if(opcode == 6'b101000) begin //sb
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b001;
								Mem_Write = 1'b1;
								Store_Byte = 1'b1;
								operation = 6'b100000;
							end
				
				
							if(opcode == 6'b101011) begin //sw
								Reg_Read_Ctrl = 1'b1;
								ALU_Src = 3'b001;
								Mem_Write = 1'b1;	
								operation = 6'b100000;
							end
			
							if(opcode == 6'b000010) begin //j
								pc_src = 2'b10;
								operation = 6'b100000;
							end
							
							if(opcode ==6'b000011) begin  //jal
								pc_src =2'b10;
								Reg_Write_Ctrl = 1;
								ALU_Src = 2'b11;
								Zero_Or_Rs = 2'b10;
								Reg_Wrt_Adrs_Slect = 1'b1;
								Mem_Or_Reg = 1'b1;
								operation = 6'b100000;
							end
							
							if(opcode == 6'b110001) begin //lw
								out_Control_Unit_Write_Floating = 1'b1;
								Reg_Read_Ctrl = 1'b1;
								Mem_Read = 1'b1;
								ALU_Src = 3'b001;
								operation = 6'b100000;
							end			
			
			
				end
endmodule
					
				