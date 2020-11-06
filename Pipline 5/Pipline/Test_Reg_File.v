module Test_Reg_File();
/*
module Reg_File(
output reg [31:0]Read_Data1,
output reg [31:0]Read_Data2,
input [4:0]Read_Address1,
input [4:0]Read_Address2,
input[4:0]Write_Address,
input[31:0]Write_Data,
input  Read_Ctrl,
input Write_Ctrl,
input clk
);
*/

wire [31:0]Read_Data1;
wire [31:0]Read_Data2;
reg [4:0]Read_Address1;
reg [4:0]Read_Address2;
reg [4:0]Write_Address;
reg [31:0]Write_Data;
reg Read_Ctrl;
reg Write_Ctrl;

wire clk_out;

CLK CLK_1(clk_out);

Reg_File Reg_File_1(Read_Data1,Read_Data2,Read_Address1,Read_Address2,Write_Address,Write_Data,Read_Ctrl,Write_Ctrl,clk_out);


initial
begin

Read_Address1=18/*S[0]*/;Read_Address2=20/*S[3]*/;Write_Address=20/*S[3]*/;Write_Data=1023;Read_Ctrl=1;Write_Ctrl=1;


#100 Read_Address1=18/*S[0]*/;Read_Address2=20/*S[3]*/;Write_Address=18/*S[3]*/;Write_Data=1553;Read_Ctrl=1;Write_Ctrl=1;



end
endmodule
















