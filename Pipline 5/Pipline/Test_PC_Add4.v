module Test_PC_Add4();
/*module PC_Add4(
input [31:0]PC,
output reg [31:0]PC_4
);*/

reg [31:0]PC;
wire [31:0]PC_4;
PC_Add4 PC_Add4_1(PC,PC_4);

initial
begin

PC=0;
#1 $display("PC +4 = %d",PC_4);

#1 PC=4;
#1 $display("PC +4 = %d",PC_4);

end 
endmodule
