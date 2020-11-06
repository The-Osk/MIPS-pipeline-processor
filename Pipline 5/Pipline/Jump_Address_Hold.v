module Jump_Address_Hold(
input [31:0]out_IF_ID_Jump_Address,
output reg [31:0]out_Jump_Address_Hold_Jump_Address,
input clk);


initial
begin
out_Jump_Address_Hold_Jump_Address=0;
end

always@(*)begin
	out_Jump_Address_Hold_Jump_Address = out_IF_ID_Jump_Address;
end
endmodule
