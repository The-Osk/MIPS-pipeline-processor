module PC_Add4(
input [31:0]out_PC_Address,
output reg [31:0]out_Add4_PC_4,
input clk
);
//reg [31:0]out_PC_Address_saved;





always@(*)begin

out_Add4_PC_4= out_PC_Address + 4;
end
endmodule
