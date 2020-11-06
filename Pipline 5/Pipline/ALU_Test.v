module ALU_Test;
//this module is a ALU Test bench
reg [31:0] out_ID_EXE_Op1;
reg [31:0] out_ID_EXE_Op2;
reg [5:0] out_ID_EXE_Operation;
wire [31:0] ALU_Result;
wire clk;

CLK CLK1(clk);

 ALU ALU1(
//this module is an ALU
ALU_Result,
//output reg ALU_zero,
out_ID_EXE_Op1,
out_ID_EXE_Op2,
out_ID_EXE_Operation,
clk
);
//ALU Abdullah(Result,Zero,Op1,Op2,Operation);
//case 0

initial
begin

out_ID_EXE_Op1=32'h01; out_ID_EXE_Op2=32'h0A;out_ID_EXE_Operation='h20;



end
endmodule
