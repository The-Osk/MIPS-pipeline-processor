module Reg_File(
output reg [31:0]out_Reg_File_Read_Data1,
output reg [31:0]out_Reg_File_Read_Data2,
input [4:0] out_IF_ID_Read_Address1,
input [4:0] out_IF_ID_Read_Address2,
input [4:0] out_IF_ID_Rd_Address,
input[4:0]  out_MEM_WB_Reg_Write_Address,
input[31:0] out_MEM_WB_Reg_Write_Data,
input[31:0] out_MEM_WB_Reg_Write_Data2,
input out_Control_Unit_Reg_Read_Ctrl,
input out_MEM_WB_Reg_Write_ctrl,
input out_MEM_WB_Reg_Write_HiLo_Ctrl,
input out_Control_Unit_mfhi,
input out_Control_Unit_mflo,
input clk
);

integer i;
//Zero Reg
reg [31:0] Zero=0;
//$at
reg[31:0] at;
//V0-V1
reg[31:0] V[1:0];
//a0-a3
reg[31:0] a[3:0];
//t0-t9
reg[31:0]  t[9:0];
//s01-s7
reg[31:0]  s[7:0];
//k0-k1
reg[31:0]  k[1:0];
//gp(global pointer)
reg[31:0]  gp;
//sp (Stack Pointer)
reg[31:0]  sp;
//fp (Frame Pointer)
reg[31:0]  fp;
//ra (Return Address)
reg[31:0]  ra;

reg[31:0] hi;
reg[31:0] low;

initial
begin
V[0]=0;
V[1]=0;
a[0]=0;
a[1]=0;
a[2]=0;
a[3]=0;
at=0;
hi = 0;
low = 0;
for(i=0;i<10;i=i+1)begin
t[i]=0;
end

t[1] = 4;
t[2] =7;
t[3] = 3;


for(i=0;i<8;i=i+1)begin
s[i]=0;
end
k[0]=0;
k[1]=0;
gp=0;
sp=0;
fp=0;
ra=127;
end

//always (writeback) then (read and give output )
always@(*)begin
if(out_MEM_WB_Reg_Write_ctrl==1)begin
case(out_MEM_WB_Reg_Write_Address)
1:at=out_MEM_WB_Reg_Write_Data;
2:V[0]=out_MEM_WB_Reg_Write_Data;
3:V[1]=out_MEM_WB_Reg_Write_Data;
4:a[0]=out_MEM_WB_Reg_Write_Data;
5:a[1]=out_MEM_WB_Reg_Write_Data;
6:a[2]=out_MEM_WB_Reg_Write_Data;
7:a[3]=out_MEM_WB_Reg_Write_Data;
8:t[0]=out_MEM_WB_Reg_Write_Data;
9:t[1]=out_MEM_WB_Reg_Write_Data;
10:t[2]=out_MEM_WB_Reg_Write_Data;
11:t[3]=out_MEM_WB_Reg_Write_Data;
12:t[4]=out_MEM_WB_Reg_Write_Data;
13:t[5]=out_MEM_WB_Reg_Write_Data;
14:t[6]=out_MEM_WB_Reg_Write_Data;
15:t[7]=out_MEM_WB_Reg_Write_Data;
16:t[8]=out_MEM_WB_Reg_Write_Data;
17:t[9]=out_MEM_WB_Reg_Write_Data;
18:s[0]=out_MEM_WB_Reg_Write_Data;
19:s[1]=out_MEM_WB_Reg_Write_Data;
20:s[2]=out_MEM_WB_Reg_Write_Data;
21:s[3]=out_MEM_WB_Reg_Write_Data;
22:s[4]=out_MEM_WB_Reg_Write_Data;
23:s[5]=out_MEM_WB_Reg_Write_Data;
24:s[6]=out_MEM_WB_Reg_Write_Data;
25:s[7]=out_MEM_WB_Reg_Write_Data;
26:k[0]=out_MEM_WB_Reg_Write_Data;
27:k[1]=out_MEM_WB_Reg_Write_Data;
28:gp=out_MEM_WB_Reg_Write_Data;
29:sp=out_MEM_WB_Reg_Write_Data;
30:fp=out_MEM_WB_Reg_Write_Data;
31:ra=out_MEM_WB_Reg_Write_Data;
endcase
end


if(out_Control_Unit_Reg_Read_Ctrl==1)begin 
case(out_IF_ID_Read_Address1)
0:out_Reg_File_Read_Data1=Zero;
1:out_Reg_File_Read_Data1=at;
2:out_Reg_File_Read_Data1=V[0];
3:out_Reg_File_Read_Data1=V[1];
4:out_Reg_File_Read_Data1=a[0];
5:out_Reg_File_Read_Data1=a[1];
6:out_Reg_File_Read_Data1=a[2];
7:out_Reg_File_Read_Data1=a[3];
8:out_Reg_File_Read_Data1=t[0];
9:out_Reg_File_Read_Data1=t[1];
10:out_Reg_File_Read_Data1=t[2];
11:out_Reg_File_Read_Data1=t[3];
12:out_Reg_File_Read_Data1=t[4];
13:out_Reg_File_Read_Data1=t[5];
14:out_Reg_File_Read_Data1=t[6];
15:out_Reg_File_Read_Data1=t[7];
16:out_Reg_File_Read_Data1=t[8];
17:out_Reg_File_Read_Data1=t[9];
18:out_Reg_File_Read_Data1=s[0];
19:out_Reg_File_Read_Data1=s[1];
20:out_Reg_File_Read_Data1=s[2];
21:out_Reg_File_Read_Data1=s[3];
22:out_Reg_File_Read_Data1=s[4];
23:out_Reg_File_Read_Data1=s[5];
24:out_Reg_File_Read_Data1=s[6];
25:out_Reg_File_Read_Data1=s[7];
26:out_Reg_File_Read_Data1=k[0];
27:out_Reg_File_Read_Data1=k[1];
28:out_Reg_File_Read_Data1=gp;
29:out_Reg_File_Read_Data1=sp;
30:out_Reg_File_Read_Data1=fp;
31:out_Reg_File_Read_Data1=ra;
endcase

case(out_IF_ID_Read_Address2)
0:out_Reg_File_Read_Data2=Zero;
1:out_Reg_File_Read_Data2=at;
2:out_Reg_File_Read_Data2=V[0];
3:out_Reg_File_Read_Data2=V[1];
4:out_Reg_File_Read_Data2=a[0];
5:out_Reg_File_Read_Data2=a[1];
6:out_Reg_File_Read_Data2=a[2];
7:out_Reg_File_Read_Data2=a[3];
8:out_Reg_File_Read_Data2=t[0];
9:out_Reg_File_Read_Data2=t[1];
10:out_Reg_File_Read_Data2=t[2];
11:out_Reg_File_Read_Data2=t[3];
12:out_Reg_File_Read_Data2=t[4];
13:out_Reg_File_Read_Data2=t[5];
14:out_Reg_File_Read_Data2=t[6];
15:out_Reg_File_Read_Data2=t[7];
16:out_Reg_File_Read_Data2=t[8];
17:out_Reg_File_Read_Data2=t[9];
18:out_Reg_File_Read_Data2=s[0];
19:out_Reg_File_Read_Data2=s[1];
20:out_Reg_File_Read_Data2=s[2];
21:out_Reg_File_Read_Data2=s[3];
22:out_Reg_File_Read_Data2=s[4];
23:out_Reg_File_Read_Data2=s[5];
24:out_Reg_File_Read_Data2=s[6];
25:out_Reg_File_Read_Data2=s[7];
26:out_Reg_File_Read_Data2=k[0];
27:out_Reg_File_Read_Data2=k[1];
28:out_Reg_File_Read_Data2=gp;
29:out_Reg_File_Read_Data2=sp;
30:out_Reg_File_Read_Data2=fp;
31:out_Reg_File_Read_Data2=ra;
endcase
end
if(out_Control_Unit_mfhi==1)begin
case(out_IF_ID_Rd_Address)
1:at=hi;
2:V[0]=hi;
3:V[1]=hi;
4:a[0]=hi;
5:a[1]=hi;
6:a[2]=hi;
7:a[3]=hi;
8:t[0]=hi;
9:t[1]=hi;
10:t[2]=hi;
11:t[3]=hi;
12:t[4]=hi;
13:t[5]=hi;
14:t[6]=hi;
15:t[7]=hi;
16:t[8]=hi;
17:t[9]=hi;
18:s[0]=hi;
19:s[1]=hi;
20:s[2]=hi;
21:s[3]=hi;
22:s[4]=hi;
23:s[5]=hi;
24:s[6]=hi;
25:s[7]=hi;
26:k[0]=hi;
27:k[1]=hi;
28:gp=hi;
29:sp=hi;
30:fp=hi;
31:ra=hi;
endcase
end

if(out_Control_Unit_mflo==1)begin
case(out_IF_ID_Rd_Address)
1:at=low;
2:V[0]=low;
3:V[1]=low;
4:a[0]=low;
5:a[1]=low;
6:a[2]=low;
7:a[3]=low;
8:t[0]=low;
9:t[1]=low;
10:t[2]=low;
11:t[3]=low;
12:t[4]=low;
13:t[5]=low;
14:t[6]=low;
15:t[7]=low;
16:t[8]=low;
17:t[9]=low;
18:s[0]=low;
19:s[1]=low;
20:s[2]=low;
21:s[3]=low;
22:s[4]=low;
23:s[5]=low;
24:s[6]=low;
25:s[7]=low;
26:k[0]=low;
27:k[1]=low;
28:gp=low;
29:sp=low;
30:fp=low;
31:ra=low;
endcase
end

if(out_MEM_WB_Reg_Write_HiLo_Ctrl) begin
	hi = out_MEM_WB_Reg_Write_Data2;
	low = out_MEM_WB_Reg_Write_Data;
end



end
endmodule
