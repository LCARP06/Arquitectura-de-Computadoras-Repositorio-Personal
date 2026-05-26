module SC4b (input[3:0] A, input [3:0] B, output [4:0] C, input CI);

assign C = A + B + CI;


endmodule
