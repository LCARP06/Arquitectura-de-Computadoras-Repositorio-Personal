module SC8b (input [7:0] A, input [7:0] B, output [9:0] C, input CI);

wire acarreo;


SC4b sum1(
	.A(A[3:0]),
	.B(B[3:0]),
	.C(C[4:0]),
	.CI(0));

SC4b sum2(
	.A(A[7:4]),
	.B(B[7:4]),
	.C(C[9:4]),
	.CI(acarreo));




endmodule
