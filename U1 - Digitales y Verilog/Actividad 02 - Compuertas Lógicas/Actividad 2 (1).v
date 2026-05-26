module ACT2(input a, input b, output c, output d, output e, output f, output g, output h, output i, output j);

assign c = a & b; //AND
assign d = a | b; //OR
assign e = ~(a & b); //NAND
assign f = ~(a | b); //NOR
assign g = a ^ b; //XOR
assign h = a ~^ b; //XNOR
assign i = ~a; //NOT
assign j = ~b; //NOT

endmodule