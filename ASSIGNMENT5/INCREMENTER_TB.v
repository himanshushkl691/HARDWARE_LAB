module INCREMENTER_TB;
   reg[31:0] in;
   wire [31:0] s;
   INCREMENTER inc0(s,in);
   initial
     begin
	$dumpfile("INCREMENTER_TB.vcd");
	$dumpvars(0,INCREMENTER_TB);
	in = 16;
	#10;
	in = 54;
	#10;
	in = 702;
	#10;
	in = 1999;
     end
endmodule // INCREMENTER_TB
