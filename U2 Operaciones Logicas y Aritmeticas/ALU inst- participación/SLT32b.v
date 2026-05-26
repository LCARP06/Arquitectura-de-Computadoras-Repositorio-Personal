module SLT32b(input [31:0] SLT01, input [31:0] SLT02, output [31:0] RSLT);

assign RSLT = SLT01 < SLT02 ? 1:0;

endmodule


