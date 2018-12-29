module MUX2X1_32BIT_TB;
   wire[31:0] out;
   reg [31:0] in0,in1;
   reg 	      s0;
   MUX2X1_32BIT mux0(out,s0,in0,in1);
   initial
     begin
	$dumpfile("MUX2X1_32BIT_TB.vcd");
	$dumpvars(0,MUX2X1_32BIT_TB);
	s0 = 1;
	in0 = 16;
	in1 = 14;
	#10;
	s0 = 0;
	in0 = 16;
	in1 = 14;
     end // initial begin
endmodule // MUX2X1_32BIT_TB
