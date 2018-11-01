module MEMDADOS(
input wire clk, 
input wire EscreveMem,
input wire LeMem,
input wire[31:0] address,
input wire[31:0] writeData,
output wire[31:0] LeituraMemDados
);
reg[31:0]dataMem[0:31];

reg[31:0] temp;

always @ (negedge clk)
begin
if(EscreveMem == 1'b1)
begin
dataMem[address] <= writeData; 
end
else if(LeMem == 1'b1)
temp <= dataMem[address];

end



assign LeituraMemDados = temp;

endmodule
