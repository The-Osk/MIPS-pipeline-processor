module Test_CLK;
//module CLK(output reg CLK_Out);
wire CLK_Out;

CLK CLK_1(CLK_Out);
integer i;
initial
begin

for(i=0;i<100;i=i+1)
#100 $display("the clock signal %b ",CLK_Out);

end 
endmodule
