module Add_Branch(
input [31:0]out_ID_EXE_PC_4,
input [15:0]out_ID_EXE_Immidiate,
output reg [31:0]out_Add_Branch_Branch_Address
);

always@(*)begin
if(out_ID_EXE_Immidiate[15]==0)begin
	out_Add_Branch_Branch_Address=({16'b0000000000000000,out_ID_EXE_Immidiate}<<2)+out_ID_EXE_PC_4;
	end
else if(out_ID_EXE_Immidiate[15]==1)begin
out_Add_Branch_Branch_Address=({16'b1111111111111111,out_ID_EXE_Immidiate}<<2)+out_ID_EXE_PC_4;
	end
	end
	endmodule
	