module divisorFrequencia(input wire clk, output reg clock = 0);
	reg[31:0] cont = 0;
	
	always @ (posedge clk)
	begin
		cont = cont + 1;
		
		if(cont == 50000000)
		begin
			clock = ~clock;
			cont = 0;
		end
	end
endmodule

module decodificador (input wire clock, input wire [3:0] entrada, output reg [6:0] saida);

	always @ (*)
	begin
		case(entrada)
			0: saida = 7'b1000000;
			1: saida = 7'b1111001;
			2: saida = 7'b0100100;
			3: saida = 7'b0110000;
			4: saida = 7'b0011001;
			5: saida = 7'b0010010;
			6: saida = 7'b0000010;
			7: saida = 7'b1111000;
			8: saida = 7'b0000000;
			9: saida = 7'b0010000;
			10: saida = 7'b0001000;
			11: saida = 7'b1100000;
			12: saida = 7'b1010110;
			13: saida = 7'b1000010;
			14: saida = 7'b0100001;
			15: saida = 7'b0111000;
		endcase
	end

endmodule

module arquivoOndas(input clock, output [6:0] hex0);

divisorFrequencia divisorFrequencia(clock, clk);

wire [31:0] ProxInst;

//wires
wire [31:0] SaidaPC;
wire[4:0] MultiplexEscreveMemRegs;
wire[31:0] MultiplexMemRegistrador;
wire[31:0] MuxSaidaMemoriaDados;
wire [31:0] Instrucao;
wire [31:0] DeslocEsq;
wire[31:0] ADDResultDesvio;
wire[31:0] EntradaPC;
wire AndBEQ;

//wires controle
wire regDst;
wire branch;
wire LeMem;
wire memParaReg;
wire[1:0] aluOp;
wire EscreveMem;
wire OrigAlu;
wire EscreveReg;
wire Reset;

//wires memoriaInstrucoes
wire[31:0] DadosLeitura1;
wire[31:0] DadosLeitura2;

//wires aluctrl
wire[3:0] ControleALU;

//wires alu
wire[31:0] ResultadoALU;
wire FlagZero;

//wires Extensor de sinal
wire[31:0] De16p32;

//wires Memoria de Dados
wire[31:0] LeituraMemDados;

PC ProgramaContador(
	clk,
	EntradaPC,
	SaidaPC
);

SOMA4 soma4(
	SaidaPC,
	ProxInst
); 

MemInstrucao memoriaInstrucoes(
	SaidaPC, 
	Instrucao
);

CONTROL controle(
	Instrucao[31:26], 
	regDst,
	branch,
	LeMem,
	memParaReg,
	aluOp,
	EscreveMem,
	OrigAlu,
	EscreveReg
);

MultiplexEscreveBancoReg muxEscreveBancoReg(
	Instrucao[20:16],
	Instrucao[15:11],
	regDst,
	MultiplexEscreveMemRegs
);

ALUCONTROL aluControle(
	aluOp,
	Instrucao[5:0],
	ControleALU
);

BANCOREGS bancoDeRegistradores
(
	Instrucao[25:21],
	Instrucao[20:16],
	MultiplexEscreveMemRegs,
	MuxSaidaMemoriaDados,
	EscreveReg,
	DadosLeitura1[31:0],
	DadosLeitura2[31:0]
);

ExtSinal extensorSinal(
	Instrucao[15:0],
	De16p32
);

MUX2_1_2 MultiplexSaidaBancoReg
(
	DadosLeitura2,
	De16p32,
	OrigAlu,
	MultiplexMemRegistrador
);

ALU alu(
	DadosLeitura1,
	MultiplexMemRegistrador,
	ControleALU,
	ResultadoALU,
	FlagZero
);

MEMDADOS memoriaDeDados(
	clk, 
	EscreveMem,
	LeMem,
	ResultadoALU,
	DadosLeitura2,
	LeituraMemDados
);

MUX2_1_2 MultiplexSaidaMemDados
(
	LeituraMemDados,
	ResultadoALU,
	memParaReg,
	MuxSaidaMemoriaDados
);

DESVIO2ESQ desvio2esquerda(
	De16p32,
	DeslocEsq
);

ADD add(
	ProxInst,
	DeslocEsq,
	ADDResultDesvio
);

PORTAAND branchAnd(
	branch,
	FlagZero,
	AndBEQ
);

MUX2_1_2 MultiplexDesvio
(
	ProxInst,
	ADDResultDesvio,
	AndBEQ,
	EntradaPC
);

decodificador decodificador2(clk, ResultadoALU, hex0);
endmodule
