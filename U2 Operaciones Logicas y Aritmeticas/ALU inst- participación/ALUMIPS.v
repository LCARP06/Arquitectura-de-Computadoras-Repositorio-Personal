module ALUMIPS (input [31:0] A, input [31:0] B, input [3:0] Sel, output [31:0] R);

	wire c1[31:0], c2[31:0], c3[31:0], c4[31:0], c5[31:0];

	S32b suma(
	.S01(A[31:0]),
	.S02(B[31:0]),
	.RS(c1[31:0])
	);
	
	R32b resta(
	.R01(A[31:0]),
	.R02(B[31:0]),
	.RR(c2[31:0])
	);
	
	OR32b _or(
	.O01(A[31:0]),
	.O02(B[31:0]),
	.RO(c3[31:0])
	);
	
	AND32b _and(
	.A01(A[31:0]),
	.A02(B[31:0]),
	.AR(c4[31:0])
	);
	
	SLT32b slt(
	.SLT01(A[31:0]),
	.SLT02(B[31:0]),
	.RSLT(c5[31:0])
	);

	mux5a1 Multiplex(
		.suma(c1[31:0]),
		.resta(c2[31:0]),
		._or(c3[31:0]),
		._and(c4[31:0]),
		.slt(c5[31:0]),
		.ALUct1(Sel[3:0]),
		.Resultado(R[31:0])
	);



endmodule 
