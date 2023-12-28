`timescale 1 ps / 1 ps
module abs_dif_tb;
wire[3:0] out;
reg[3:0]  a, b;

initial 
begin
	a = 4'b0000;
	b = 4'b1111;

	while(a < 4'b1111)
	begin
		#10;
		a = a + 1'b1;
		b = b - 1'b1;
	end
	
end

abs_dif  abs_dif1(.aIn(a), .bIn(b), .out(out));



endmodule //float_add_tb