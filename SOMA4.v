module SOMA4(
	input wire[31:0] pc,
	output wire[31:0] nextPc
);


assign nextPc = (pc + 4'b0100);

endmodule
