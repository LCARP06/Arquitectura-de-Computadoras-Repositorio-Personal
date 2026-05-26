module R32b(input [31:0] R01, input [31:0] R02, output [31:0] RR);

assign RR = R01 - R02;

endmodule

