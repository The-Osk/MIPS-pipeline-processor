module MUX_PC(
input [31:0]out_Add4_PC_4,
input [31:0]out_ID_EXE_Jump_Address,
input [31:0]out_MUX_Branch_Branch_Address,
input [31:0]out_ID_EXE_Jump_Reg_Address,
input [1:0]out_ID_EXE_pc_src,
output reg [31:0]out_MUXPC_Address,
input clk//not used 
);


always@(*)begin


if(out_ID_EXE_pc_src == 2'b00)begin
out_MUXPC_Address=out_Add4_PC_4;
end

if(out_ID_EXE_pc_src == 2'b01)begin
out_MUXPC_Address=out_MUX_Branch_Branch_Address;
end
if(out_ID_EXE_pc_src == 2'b10)begin
out_MUXPC_Address=out_ID_EXE_Jump_Address;
end
if(out_ID_EXE_pc_src == 2'b11)begin
out_MUXPC_Address=out_ID_EXE_Jump_Reg_Address;
end

end


endmodule
