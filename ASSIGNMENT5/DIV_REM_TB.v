module DIV_REM_TB;
   reg[31:0] a,b;
   wire [31:0] quot,rem;
   DIV_REM divrem(quot,rem,a,b);
   initial
     begin
	$dumpfile("DIV_REM_TB.vcd");
	$dumpvars(0,DIV_REM_TB);
	
	a = 4;
	b = 16;
	#10;
	a = 11;
	b = 121;
     end
endmodule // DIV_REM_TB
