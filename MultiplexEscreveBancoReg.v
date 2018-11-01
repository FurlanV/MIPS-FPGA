module MultiplexEscreveBancoReg(
	input wire[4:0] instrucao1,
	input wire[4:0] instrucao2,
	input wire seletor, // Sinal do controle
	output wire[4:0] saida
);

reg[4:0] SAIDA;

always @ (seletor or instrucao1 or instrucao2)
	begin
		case(seletor)
			0: SAIDA <= instrucao1;
			1: SAIDA <= instrucao2;
			default: SAIDA <= 0;
		endcase
end

assign saida = SAIDA;

endmodule
