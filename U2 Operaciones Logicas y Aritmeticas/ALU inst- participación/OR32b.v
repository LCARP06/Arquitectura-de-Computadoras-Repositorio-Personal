module OR32b(input [31:0] O01, input [31:0] O02, output [31:0] RO);

assign RO = O01 | O02;

endmodule

