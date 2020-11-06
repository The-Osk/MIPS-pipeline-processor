module Test_Data_Mem();
/*module Data_Mem(
output reg [31:0]Read_Data,
input [31:0]Mem_Address,
input [31:0]Write_Data,
input Store_Byte_or_Word,//1byte 0word
input Mem_Write,
input Mem_Read,
input clk);*/

wire [31:0]Read_Data;
reg [31:0]Mem_Address;
reg [31:0]Write_Data;
reg Store_Byte_or_Word;
reg Mem_Write;
reg Mem_Read;
wire clk_out;



CLK CLK1(clk_out);

Data_Mem Data_Mem_1(Read_Data,Mem_Address,Write_Data,Store_Byte_or_Word,Mem_Write,Mem_Read,clk_out);

initial
begin

#100 Mem_Address=4; Write_Data=1001; Store_Byte_or_Word=0; Mem_Write =1; Mem_Read =0;

#1 $display("the Address is = %b , and the Instruction_Data is = %b",Read_Data,Read_Data);



#100 Mem_Address=4; Write_Data=1023; Store_Byte_or_Word=0; Mem_Write =0; Mem_Read =1;

#101 $display("the Address is = %b , and the Instruction_Data is = %b",Read_Data,Read_Data);

#100 Mem_Address=1; Write_Data=1023; Store_Byte_or_Word=0; Mem_Write =0; Mem_Read =1;

#100 $display("the Address is = %b , and the Instruction_Data is = %b",Read_Data,Read_Data);

#100 Mem_Address=2; Write_Data=1023; Store_Byte_or_Word=0; Mem_Write =0; Mem_Read =1;

#100 $display("the Address is = %b , and the Instruction_Data is = %b",Read_Data,Read_Data);


end
endmodule
