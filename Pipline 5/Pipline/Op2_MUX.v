module Op2_MUX(

input [2:0]out_ID_EXE_ALU_Src,
input [31:0]out_ID_EXE_Forward_BMUX_Read_Data2,
input [15:0]out_ID_EXE_Immidiate,
input [4:0]out_ID_EXE_Shift_Amount,

output reg [31:0]out_Op2_MUX_Op2
);

always@(*)begin
case(out_ID_EXE_ALU_Src)
0:out_Op2_MUX_Op2=out_ID_EXE_Forward_BMUX_Read_Data2;
1:if(out_ID_EXE_Immidiate[15]==1)begin
	out_Op2_MUX_Op2={16'b1111111111111111,out_ID_EXE_Immidiate};
	end
	else if(out_ID_EXE_Immidiate[15] ==0)begin
	out_Op2_MUX_Op2={16'b0000000000000000,out_ID_EXE_Immidiate};
	end
2:out_Op2_MUX_Op2={16'b0000000000000000,out_ID_EXE_Immidiate};
3:out_Op2_MUX_Op2=4;
4:out_Op2_MUX_Op2={out_ID_EXE_Immidiate,16'b0000000000000000};
5:out_Op2_MUX_Op2=out_ID_EXE_Shift_Amount;
endcase
end
endmodule
