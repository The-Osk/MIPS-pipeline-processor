
module Instruc_Mem(
input clk,//not used
input [31:0]out_PC_Address,
output reg [31:0] out_Instruction_Data
);
integer i;
reg [7:0] Instruction [1023:0];

initial
begin
for(i=0;i<=1023;i=i+1)begin
Instruction [i]=8'b00000000;
end
//put initial instructions here:
//

//Load Hazard Test (load t0,0t1 , add t2,t1,t3)
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101000;                                                                                                                     
//Instruction[3]='b01001001;
////01001001 00101000 00000000 00000000
//Instruction[4]='b00100000;                                                                                                                     
//Instruction[5]='b01010000;                                                                                                                     
//Instruction[6]='b00001011;                                                                                                                     
//Instruction[7]='b00000101;
////00000101 00001011 01010000 00100000

////Forwarding test add t1,t2,t2 -> add t3,t1,t2
//Instruction[0]='b00100000;                                                                                                                     
//Instruction[1]='b01001000;                                                                                                                     
//Instruction[2]='b01001010;                                                                                                                     
//Instruction[3]='b00000101;
////000001 01010 01010 01001 00000 100000
//	
//Instruction[4]='b00100000;                                                                                                                     
//Instruction[5]='b01010000;                                                                                                                     
//Instruction[6]='b00101001;                                                                                                                     
//Instruction[7]='b00000101;	
////00000101 00101001 01010000 00100000

//
////addi (worked)
//Instruction[0]='b11111110;                                                                                                                     
//Instruction[1]='b00110101;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b00100101;			

////lw (worked) 
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b01001001;

//
//add(worked)
Instruction[0]=8'b00100000;
Instruction[1]=8'b01011000;
Instruction[2]=8'b00101010;
Instruction[3]=8'b00000101;

//
////or(worked)
//Instruction[4]=8'b00100101;
//Instruction[5]=8'b01011000;
//Instruction[6]=8'b00101010;
//Instruction[7]=8'b00000101; 
//
////Nor(worked)
//Instruction[8]=8'b00100111;
//Instruction[9]=8'b01011000;
//Instruction[10]=8'b00101010;
//Instruction[11]=8'b00000101;
//
////sub(worked)
//Instruction[12]=8'b00100100;
//Instruction[13]=8'b01011000;
//Instruction[14]=8'b00101010;
//Instruction[15]=8'b00000101;
//
////sub unsigened (worked)
//Instruction[0]=8'b00100010;
//Instruction[1]=8'b01011000;
//Instruction[2]=8'b00101010;
//Instruction[3]=8'b00000101;

//addiu(worked)
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b10000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b00100001;

////andi(worked)
//Instruction[0]='b00010101;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b00110001;
//
////j(worked)
//Instruction[0]='b11111111;                                                                                                                     
//Instruction[1]='b11111111;                                                                                                                     
//Instruction[2]='b00111111;                                                                                                                 
//Instruction[3]='b00001000;

////jal(worked)
//Instruction[0]='b11111110;                                                                                                                     
//Instruction[1]='b11111111;                                                                                                                     
//Instruction[2]='b00111111;                                                                                                                     
//Instruction[3]='b00001100;
//
//jr ra(worked)
//Instruction[0]='b00001000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b11100000;                                                                                                                     
//Instruction[3]='b00000111;

////lbu(worked)
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b10001001;
//
////lui(worked)
//Instruction[0]='b00000100;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00001011;                                                                                                                     
//Instruction[3]='b00111100;
//
//

//
////ori(worked)
//Instruction[0]='b00111001;                                                                                                                    
//Instruction[1]='b00101011;                                                                                                                     
//Instruction[2]='b00000000;                                                                                                                     
//Instruction[3]='b00111001;
 
//
//
////slt (worked)
//Instruction[0]='b00101010;                                                                                                                     
//Instruction[1]='b01011000;                                                                                                                     
//Instruction[2]='b00101010;                                                                                                                     
//Instruction[3]='b00000101;

//
//
////sltu(worked)
//Instruction[0]='b00101011;                                                                                                                     
//Instruction[1]='b01011000;                                                                                                                     
//Instruction[2]='b00101010;                                                                                                                     
//Instruction[3]='b00000101;
//

////sll(worked)
//
//Instruction[0]='b01000000;                                                                                                                     
//Instruction[1]='b01011000;                                                                                                                     
//Instruction[2]='b00100000;                                                                                                                     
//Instruction[3]='b00000101;
////
//
////srl(worked)
//Instruction[0]='b01000010;                                                                                                                     
//Instruction[1]='b01011000;                                                                                                                     
//Instruction[2]='b00100000;                                                                                                                     
//Instruction[3]='b00000101;
//
//
////sw t[3],0t[1] (worked)
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b10101101;

//
////sb t[3] ,0t[1](worked)
//Instruction[0]='b00000000;                                                                                                                     
//Instruction[1]='b00000000;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b10100001;
////
////lwn t[0],t[1],t[2] (worked) its R[rt]=M[Rs+Rd] (worked)
//Instruction[0]='b00100001;                                                                                                                     
//Instruction[1]='b01000000;                                                                                                                     
//Instruction[2]='b00101010;                                                                                                                     
//Instruction[3]='b00000101;
//
//beq beq t3,t1,011111110000111 
//Instruction[0]='b00001110;                                                                                                                     
//Instruction[1]='b01111111;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b00010101;


////bne t3,t1,011111110000111 (worked)
//Instruction[0]='b00001110;                                                                                                                     
//Instruction[1]='b01111111;                                                                                                                     
//Instruction[2]='b00101011;                                                                                                                     
//Instruction[3]='b00010001;

////mult
//Instruction[0]='b00011000;                                                                                                                     
//Instruction[1]='b01011000;                                                                                                                     
//Instruction[2]='b00101010;        //000001 01001 01010 01011 00000 010000                                                                                                             
//Instruction[3]='b00000101;			//00000101 00101010 01011000 00010000



end



always @(*)//always read address and give corresponding instruction
begin
out_Instruction_Data={Instruction[out_PC_Address+3],Instruction[out_PC_Address+2],Instruction[out_PC_Address+1],Instruction[out_PC_Address]};//little endian
end
endmodule
