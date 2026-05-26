module MASTER_SPI (input clk, output SS, output MOSI, input MISO);

endmodule


module SLAVE_SPI (input clk, input SS, input MOSI, output MISO);

endmodule


module SPI_top(input CLK);
    wire c1, c2, c3;
    

    //instancia de MASTER_SPI

    MASTER_SPI puppeter(.clk(CLK), .ss(c2), .MOSI(c1), .MISO(c3));

    SLAVE_SPI mupet(.clk(CLK), .SS(c2), .MOSI(c1), .MISO(c3));



endmodule
