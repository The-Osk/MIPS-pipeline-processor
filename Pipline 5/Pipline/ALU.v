module ALU(
output reg  [31:0]ALU_Result,
output reg  [31:0]ALU_Result2,
input [31:0]out_ID_EXE_Op1,
input [31:0]out_ID_EXE_Op2,
input[5:0]out_ID_EXE_Operation,
input out_ID_EXE_isFloating,
input clk//not used
);

initial
begin
ALU_Result=0;
ALU_Result2=0;
end

reg signed[63:0] mul_result=0;
reg sign1,sign2;
reg[31:0] op1_To_Pos, op2_To_Pos;
always @( *) 
begin
	//add,addImm,addUnsigned
	if(out_ID_EXE_Operation == 6'b100000)
		ALU_Result = out_ID_EXE_Op1 + out_ID_EXE_Op2;

	//and, and Immediate
	if(out_ID_EXE_Operation == 6'b010100)	
		ALU_Result= out_ID_EXE_Op1 & out_ID_EXE_Op2;
	//nor
	if(out_ID_EXE_Operation == 6'b100111)
		 ALU_Result= ~(out_ID_EXE_Op1 | out_ID_EXE_Op2);

	//or , OR Immediate
	if(out_ID_EXE_Operation == 6'b100101)
		 ALU_Result = out_ID_EXE_Op1 | out_ID_EXE_Op2;

	//SetLessThan 
	if(out_ID_EXE_Operation == 6'b101010) begin
		if(out_ID_EXE_Op1 < out_ID_EXE_Op2)
 			ALU_Result=1;
		else
	 		ALU_Result=0;
	end

 	//SetLessThan Unsingned
	 if(out_ID_EXE_Operation == 6'b101011) begin
		if(out_ID_EXE_Op1 < out_ID_EXE_Op2)
			 ALU_Result=1;
		else
	 		ALU_Result=0;
	end
	
	//Shift left Logical
	if(out_ID_EXE_Operation == 6'b000000  && !out_ID_EXE_isFloating)	
		ALU_Result =out_ID_EXE_Op1<<out_ID_EXE_Op2;

	//shift right Arith.
	if(out_ID_EXE_Operation == 6'b000011) begin //sra
		ALU_Result=out_ID_EXE_Op1 >>> out_ID_EXE_Op2;
	end
	
	//shift right logical
	if(out_ID_EXE_Operation == 6'b000010)
		 ALU_Result=out_ID_EXE_Op1>>out_ID_EXE_Op2;

	//subtract ,sub, rt-rd or rd-rt
	if(out_ID_EXE_Operation == 6'b100100)
		 ALU_Result = out_ID_EXE_Op1 - out_ID_EXE_Op2;

	if(out_ID_EXE_Operation == 6'b100010)
		 ALU_Result= out_ID_EXE_Op1 - out_ID_EXE_Op2;
		 
		 
	if(out_ID_EXE_Operation == 6'b011000)begin //mul
		sign1 = out_ID_EXE_Op1[31];
		sign2 = out_ID_EXE_Op2[31];
		
		if(sign1 && sign2) begin
		   op1_To_Pos = -out_ID_EXE_Op1;
			//op1_To_Pos = op1_To_Pos + 1;
			op2_To_Pos = -out_ID_EXE_Op2;
			//op2_To_Pos = op2_To_Pos + 1;
			mul_result = op1_To_Pos * op2_To_Pos;
		end
		
		if(sign1 && !sign2) begin
		   op1_To_Pos = -out_ID_EXE_Op1;
			//op1_To_Pos = op1_To_Pos + 1;
			op2_To_Pos = out_ID_EXE_Op2;
			//op2_To_Pos = op2_To_Pos + 1;
			mul_result = op1_To_Pos * op2_To_Pos;
			mul_result = -mul_result;
		end
		
		if(!sign1 && sign2) begin
		   op1_To_Pos = out_ID_EXE_Op1;
			//op1_To_Pos = op1_To_Pos + 1;
			op2_To_Pos = -out_ID_EXE_Op2;
			//op2_To_Pos = op2_To_Pos + 1;
			mul_result = op1_To_Pos * op2_To_Pos;
			mul_result = -mul_result;
		end
		
		if(!sign1 && !sign2) begin
			mul_result = out_ID_EXE_Op1 * out_ID_EXE_Op2;
		end
		ALU_Result = mul_result[31:0];
		ALU_Result2 = mul_result[63:32];
		
	end
	
	if(out_ID_EXE_Operation == 6'b011001)begin //multu
		mul_result = out_ID_EXE_Op1 * out_ID_EXE_Op2;
		ALU_Result = mul_result[31:0];
		ALU_Result2 = mul_result[63:32];
	end
	

	if(out_ID_EXE_Operation == 6'b011010)begin //div
		ALU_Result = out_ID_EXE_Op1 / out_ID_EXE_Op2;
		ALU_Result2 = out_ID_EXE_Op1 % out_ID_EXE_Op2;
	end	 	

end
endmodule 

