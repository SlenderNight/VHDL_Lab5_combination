`timescale 1 ps / 1 ps
module ModeComparator_tb;

wire[7:0] out;
reg[7:0]  a, b;
reg m;

initial
begin
	//取最大值
	m = 0;
	a = 8'b00000000;
	b = 8'b11111111;

	while(a < 8'b11111111)
	begin
		#10;
		a = a + 1'b1;
		b = b - 1'b1;
	end

	//取最小值
	m = 1;
	a = 8'b00000000;
	b = 8'b11111111;

	while(a < 8'b11111111)
	begin
		#10;
		a = a + 1'b1;
		b = b - 1'b1;
	end
end

ModeComparator  ModeComparator1(.a(a),.b(b),.m(m),.y(out));

endmodule 