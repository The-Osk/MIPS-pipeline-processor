module Op1_MUX(

input [1:0]out_ID_EXE_Zero_Or_Rs,
input [31:0]out_ID_EXE_Forward_AMUX_Read_Data1,
input [31:0]out_ID_EXE_PC_4,
output reg [31:0] out_Op1_MUX_Op1);

always@(*)begin
case(out_ID_EXE_Zero_Or_Rs)
0:out_Op1_MUX_Op1=out_ID_EXE_Forward_AMUX_Read_Data1;
1:out_Op1_MUX_Op1=out_ID_EXE_PC_4;
2:out_Op1_MUX_Op1=0;
endcase
end
endmodule
