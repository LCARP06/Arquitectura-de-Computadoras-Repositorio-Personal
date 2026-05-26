module BR(
input clk,
input WE,
input [4:0]AR1,
input [4:0]AR2,
input [4:0]AW,
input [31:0]DW,
output reg [31:0]DR1,
output reg [31:0]DR2
);

reg [31:0]mem[0:31];

integer i;
initial 
begin
    for (i = 0; i < 32; i = i + 1)
        mem[i] = 32'b0;
end

always @(*) begin
     DR1 = mem[AR1];
     DR2 = mem[AR2];
end

always @(posedge clk) begin
if(WE && AW != 5'd0)
     mem[AW] <= DW;
end

endmodule