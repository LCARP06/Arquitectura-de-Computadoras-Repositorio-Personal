`timescale 1ns / 1ps

module DPTR_tb;

    reg clk;
    reg reset;

    DPTR uut (
        .clk(clk),
        .reset(reset)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        reset = 1;

        $readmemb("bubble_decodificado.mem",
                   uut.instruction_memory.mem);

        $readmemb("TestF1_BReg.mem",
                   uut.mem.mem);

        #20;
        reset = 0;

        #5000000;

        $display("========================================");
        $display("RESULTADO FINAL DE MEMORIA");
        $display("========================================");

        $display("mem[0] = %0d  (esperado: 1)", uut.mem.mem[0]);
        $display("mem[1] = %0d  (esperado: 2)", uut.mem.mem[1]);
        $display("mem[2] = %0d  (esperado: 3)", uut.mem.mem[2]);
        $display("mem[3] = %0d  (esperado: 4)", uut.mem.mem[3]);
        $display("mem[4] = %0d  (esperado: 5)", uut.mem.mem[4]);
        $display("mem[5] = %0d  (esperado: 6)", uut.mem.mem[5]);
        $display("mem[6] = %0d  (esperado: 7)", uut.mem.mem[6]);
        $display("mem[7] = %0d  (esperado: 8)", uut.mem.mem[7]);
        $display("mem[8] = %0d  (esperado: 9)", uut.mem.mem[8]);

        $display("========================================");

        $stop;
    end

endmodule