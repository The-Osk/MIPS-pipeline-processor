module test();


integer i;
reg [31:0]initial_PC;
Pipline2 Pipline21(initial_PC);
initial
begin
initial_PC=0;
i=1;
#1 $display("jr $ra");
#1 $display("ra = %d ",Pipline21.Reg_File1.ra);
end

always@(negedge Pipline21.clk)begin
i=i+1;
#1 $display("cycle %d",i);
#1 $display("pc = %b",Pipline21.PC_Reg1.out_PC_Address);
end




endmodule 