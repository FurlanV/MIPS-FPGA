module MUX2_1_2(
	input wire[31:0] instrucao1,
	input wire[31:0] instrucao2,
	input wire seletor, // Sinal do controle
	output wire[31:0] saida
);

reg[31:0] SAIDA_MUX;

always @ (seletor or instrucao1 or instrucao2)
begin

case(seletor)
  0: SAIDA_MUX <= instrucao1;
  1: SAIDA_MUX <= instrucao2;
  default: SAIDA_MUX <= 0;
endcase
end

assign saida = SAIDA_MUX;


endmodule
