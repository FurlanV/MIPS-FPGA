module PC(
	input wire clock,
	input wire[31:0]  EnderecoEntrada,
	output wire[31:0] EnderecoSaida
);

reg [32:0] endereco = 32'b00000000000000000000000000000000;

always @ (posedge clock)
begin
	endereco = EnderecoEntrada;
end

assign EnderecoSaida = endereco;


endmodule
