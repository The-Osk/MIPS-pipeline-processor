module CLK(output reg clk);

integer i;
initial begin
    clk = 1;
    for(i=0;i<100;i=i+1) 
         #100 clk = ~clk;
end
endmodule
