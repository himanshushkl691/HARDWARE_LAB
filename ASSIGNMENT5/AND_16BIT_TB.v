module AND_16BIT_TB;
   wire[15:0] out;
   reg [15:0] in0,in1;
   AND_16BIT and0(out,in0,in1);
   initial
     begin
	$dumpfile("AND_16BIT_TB.vcd");
	$dumpvars(0,AND_16BIT_TB);
	#10;
	in0 = 16;
	in1 = 43;
	#10;
	in0 = 9;
	in1 = 9;
     end // initial begin
endmodule // AND_16BIT_TB
