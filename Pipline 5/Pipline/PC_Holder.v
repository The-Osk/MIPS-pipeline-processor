module PC_Holder(
input [31:0]out_IF_ID_PC_4,
output reg [31:0]out_PC_Holder_PC_4,
input clk);


always@(*)begin
out_PC_Holder_PC_4=out_IF_ID_PC_4;
end
endmodule
