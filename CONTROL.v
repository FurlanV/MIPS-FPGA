
module CONTROL(
	input wire[5:0] instruction,
	output wire regDst,
	output wire branch,
	output wire LeMem,
	output wire memParaReg,
	output wire[1:0] aluOp,
	output wire EscreveMem,
	output wire OrigAlu,
	output wire EscreveReg
);

reg[5:0] opcode;

reg _regDst;
reg _branch;
reg _LeMem;
reg _memParaReg;
reg[1:0] _aluOp;
reg _EscreveMem;
reg _OrigAlu;
reg _EscreveReg;

always @ (instruction)
begin
opcode = instruction;

case (opcode)
  6'b000000:  //formato r 
  begin
  _regDst <= 1'b1;
  _OrigAlu <= 1'b0;
  _memParaReg <= 1'b0;
  _EscreveReg <= 1'b1;
  _LeMem <= 1'b0;
  _EscreveMem <= 1'b0;
  _branch <= 1'b0;
  _aluOp <= 2'b10;
  end
  6'b100011:   //lw
  begin
   _regDst <= 1'b0;
  _OrigAlu <= 1'b1;
  _memParaReg <= 1'b1;
  _EscreveReg <= 1'b1;
  _LeMem <= 1'b1;
  _EscreveMem <= 1'b0;
  _branch <= 1'b0;
  _aluOp <= 2'b00;
  end
  6'b101011:   //sw
  begin
    _regDst <= 1'bx;
  _OrigAlu <= 1'b1;
  _memParaReg <= 1'bx;
  _EscreveReg <= 1'b0;
  _LeMem <= 1'b0;
  _EscreveMem <= 1'b1;
  _branch <= 1'b0;
  _aluOp <= 2'b00;
  end
  6'b000100:   //beq
  begin
  _regDst <= 1'bx;
  _OrigAlu <= 1'b0;
  _memParaReg <= 1'bx;
  _EscreveReg <= 1'b0;
  _LeMem <= 1'b0;
  _EscreveMem <= 1'b0;
  _branch <= 1'b1;
  _aluOp <= 2'b01;
  end
  endcase


end

assign regDst = _regDst;
assign branch = _branch;
assign LeMem = _LeMem;
assign  memParaReg = _memParaReg;
assign  aluOp = _aluOp;
assign  EscreveMem = _EscreveMem;
assign  OrigAlu = _OrigAlu;
assign  EscreveReg = _EscreveReg;


endmodule
