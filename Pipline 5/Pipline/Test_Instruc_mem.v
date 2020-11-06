module Test_Instruc_mem();
/*module Instruc_Mem(
input [31:0]Address,
output reg [31:0] Instruction_Data
);*/

reg [31:0]Address;
wire [31:0]Instruction_Data;
wire clk;

CLK CLK1(clk);
Instruc_Mem Instruc_Mem_1(clk,Address,Instruction_Data);


initial
begin

#100 Address=0;

#100 $display("the Address is = %b , and the Instruction_Data is = %b",Address,Instruction_Data);

begin


Address=3;

#100 $display("the Address is = %b , and the Instruction_Data is = %b",Address,Instruction_Data);


end


end
endmodule
