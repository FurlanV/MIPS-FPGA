module ALU(
	input wire[31:0] A,
	input wire[31:0] B,
	input wire[3:0] seletor,
	output wire[31:0] saida,
	output wire FlagZero
);

reg [31:0] _saida;

always @ (seletor)
begin

case(seletor)
  0: _saida <= A & B;
  1: _saida <= A | B;
  2: _saida <= A + B;
  6: _saida <= A - B;
  7: _saida <= A < B ? 1:0;
  12: _saida <= ~(A|B);
  default: _saida <=0;
endcase

end

assign saida = _saida;
assign FlagZero =(_saida==0);


endmodule
