module DESVIO2ESQ(
	input wire[31:0] in,
	output wire[31:0] saida
);

reg[31:0] temp;

always @(in)
begin
	temp <= (in << 2);
end

assign saida = temp;

endmodule