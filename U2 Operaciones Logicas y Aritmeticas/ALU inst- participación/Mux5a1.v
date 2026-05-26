module mux5a1(input [31:0] suma, resta, _or, _and, slt,
			  input [3:0] ALUct1,
			  output reg[31:0] Resultado
);

//Bloque Secuencial:
always @(ALUct1)
	begin
		case(ALUct1)
		4'b0000:Resultado = suma;
		4'b0001:Resultado = resta;
		4'b0010:Resultado = _or;
		4'b0011:Resultado = _and;
		4'b0100:Resultado = slt;
		endcase
	end

endmodule