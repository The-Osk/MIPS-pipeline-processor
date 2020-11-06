module Data_Mem(
output reg [31:0]out_Data_Mem_Read_Data,
input [31:0]out_EXE_MEM_Mem_Address,
input [31:0]out_EXE_MEM_Read_Data2,//write data 
input out_EXE_MEM_Store_Byte,//1byte 0word
input out_EXE_MEM_Mem_Write,
input out_EXE_MEM_Mem_Read,
input clk);




integer i;
reg [7:0] Location [1023:0];

initial
begin
for(i=0;i<=1023;i=i+1)begin
		Location [i]=8'b00000000;
end

//put initial data here:
Location [0]=8'b11111111;
Location [1]=8'b11111111;
Location [2]=8'b11111111;
Location [3]=8'b00110011;
end

always@(*)begin
if (out_EXE_MEM_Mem_Write == 1 && out_EXE_MEM_Store_Byte == 0)begin
		Location[out_EXE_MEM_Mem_Address]=out_EXE_MEM_Read_Data2[7:0];
		Location[out_EXE_MEM_Mem_Address+1]=out_EXE_MEM_Read_Data2[15:8];
		Location[out_EXE_MEM_Mem_Address+2]=out_EXE_MEM_Read_Data2[23:16];
		Location[out_EXE_MEM_Mem_Address+3]=out_EXE_MEM_Read_Data2[31:24];
end

if (out_EXE_MEM_Mem_Write == 1 && out_EXE_MEM_Store_Byte == 1)begin
		Location[out_EXE_MEM_Mem_Address]=out_EXE_MEM_Read_Data2[7:0];
end

if(out_EXE_MEM_Mem_Read==1)begin

		out_Data_Mem_Read_Data ={Location[out_EXE_MEM_Mem_Address+3],Location[out_EXE_MEM_Mem_Address+2],Location[out_EXE_MEM_Mem_Address+1],Location[out_EXE_MEM_Mem_Address]};//little endian

end
end

endmodule
