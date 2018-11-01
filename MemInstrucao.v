module MemInstrucao(
input wire[31:0] address,
output wire[31:0] instruct
);

reg[31:0]Instruct_Mem[0:31];

initial
begin
	Instruct_Mem[0] = 32'b00000001010010111011000000100010;
	Instruct_Mem[1] = 32'b00000001000010011010100000100000;
end

assign instruct = Instruct_Mem[address/4];

endmodule

module PORTAAND(
input wire a,
input wire b,
output wire c
);

assign c = (a && b);

endmodule