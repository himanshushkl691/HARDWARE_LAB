module RAM8_32BIT_TB;
   wire[31:0] out;
   reg 	      write,clk,en;
   reg [2:0]  address;
   reg [31:0] in;
   RAM8_32BIT ram0(out,in,write,address,clk,en);
   initial
     begin
	$dumpfile("RAM8_32BIT_TB.vcd");
	$dumpvars(0,RAM8_32BIT_TB);
	
	en = 1'b1;

	in = 193;
	write = 1'b1;
	address = 7;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	in = 14;
	write = 1'b1;
	address = 5;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	write = 1'b0;
	address = 7;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	#10;
	write = 1'b0;
	address = 5;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
     end // initial begin
endmodule // RAM8_32BIT

	
