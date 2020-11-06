module Branch_Or_Not(

input  Zero,
input out_ID_EXE_Is_Brnch_not_Eql,
input out_ID_EXE_Is_Branch_on_Equl,

output reg out_Branch_Or_Not_Branch_Or_Not
);

always@(*)begin
out_Branch_Or_Not_Branch_Or_Not=((out_ID_EXE_Is_Branch_on_Equl & Zero) | (out_ID_EXE_Is_Brnch_not_Eql & ~Zero));
end
endmodule
