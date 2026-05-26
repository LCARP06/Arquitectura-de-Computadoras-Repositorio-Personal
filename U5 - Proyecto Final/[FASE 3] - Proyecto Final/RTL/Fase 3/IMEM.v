module IMEM(
    input [31:0] Address,
    output [31:0] Instruction
);

reg [31:0] mem [0:63];  

initial
begin
    $readmemb("bubble_decodificado.mem", mem);
end

assign Instruction = mem[Address[7:2]];  

endmodule
