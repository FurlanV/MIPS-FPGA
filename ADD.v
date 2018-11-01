module ADD(
	input wire[31:0] A,
	input wire[31:0] B,
	output wire[31:0] saida
);

reg[31:0] soma;

always @ (A or B)
begin
	soma = (A + B);
end

assign saida = soma;

endmodule
