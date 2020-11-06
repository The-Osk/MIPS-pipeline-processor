module PC_Reg(
input [31:0]initial_PC,
input [31:0] out_MUXPC_Address,
input clk,
output reg [31:0] out_PC_Address,
input Stall_Or_Not
);

initial
begin
#1 out_PC_Address=initial_PC;
end

always@(negedge clk)begin
if(Stall_Or_Not==0)begin
out_PC_Address=out_MUXPC_Address;
end
end
endmodule
