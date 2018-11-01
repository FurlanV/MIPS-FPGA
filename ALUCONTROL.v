module ALUCONTROL(
	input wire[1:0] aluOp,
	input wire[5:0] func,
	output wire[3:0] ControleALU
);

reg[3:0] _ControleALU;

always @ (aluOp or func)
begin

  if(aluOp == 0)
  begin
  _ControleALU <= 4'b0010;
  end
  else 
  if(aluOp == 1)
  begin
  _ControleALU <= 4'b0110;
  end
   else
  if(func == 6'b100000 && aluOp == 2)
    begin
    _ControleALU <= 4'b0010;
    end
  else
  if(func == 6'b100010 && aluOp == 2)
    begin
    _ControleALU <= 4'b0110;
    end
else
  if(func == 6'b100100 && aluOp == 2)
  begin
  _ControleALU <= 4'b0000;
  end
else 
  if(func == 6'b100101 && aluOp == 2)
  begin
  _ControleALU <= 4'b0001;
  end
else
  if(func == 6'b101010 && aluOp == 2)
  begin
  _ControleALU <= 4'b0111;
  end

  


end

assign ControleALU = _ControleALU;

endmodule
