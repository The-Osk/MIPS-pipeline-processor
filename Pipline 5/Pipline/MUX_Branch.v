module MUX_Branch(
input out_ID_EXE_Branch_or_Not,
input [31:0]out_ID_EXE_Branch_Address,
input [31:0]out_ID_EXE_PC_4,
input clk,
output reg [31:0]out_MUX_Branch_Branch_Address
);


always@(*)begin
case(out_ID_EXE_Branch_or_Not)
0:out_MUX_Branch_Branch_Address = out_ID_EXE_PC_4;
1:out_MUX_Branch_Branch_Address = out_ID_EXE_Branch_Address;

endcase
end
endmodule
