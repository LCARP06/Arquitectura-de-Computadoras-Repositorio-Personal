module S32b(input [31:0] S01, input [31:0] S02, output [31:0] RS);

assign RS = S01 + S02;

endmodule
