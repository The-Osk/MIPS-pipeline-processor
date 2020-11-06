module IF_ID_Holder(


input [15:0] out_IF_ID_Immidiate,
input [4:0]  out_IF_ID_Shift_Amount,
input [4:0]  out_IF_ID_Rt_Address,
input [4:0]  out_IF_ID_Rd_Address,



output reg[15:0]  out_IF_ID_Holder_Immidiate,
output reg [4:0]  out_IF_ID_Holder_Shift_Amount,
output reg[4:0]   out_IF_ID_Holder_Rt_Address,
output reg[4:0]   out_IF_ID_Holder_Rd_Address,


input clk);




always@(*)begin

out_IF_ID_Holder_Immidiate=out_IF_ID_Immidiate;
out_IF_ID_Holder_Shift_Amount=out_IF_ID_Shift_Amount;
out_IF_ID_Holder_Rt_Address=out_IF_ID_Rt_Address;
out_IF_ID_Holder_Rd_Address=out_IF_ID_Rd_Address;






end
endmodule
