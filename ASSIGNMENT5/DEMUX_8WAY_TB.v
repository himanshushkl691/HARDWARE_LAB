module DEMUX_8WAY_TB;
   reg s2,s1,s0,in;
   wire out0,out1,out2,out3,out4,out5,out6,out7;
   DEMUX_8WAY demux0(out0,out1,out2,out3,out4,out5,out6,out7,s2,s1,s0,in);
   initial
     begin
	$dumpfile("DEMUX_8WAY_TB.vcd");
	$dumpvars(0,DEMUX_8WAY_TB);
	
	in = 1'b1;
	#2;
	s2 = 1'b0;
	s1 = 1'b0;
	s0 = 1'b0;
	#2;
	s2 = 1'b0;
	s1 = 1'b0;
	s0 = 1'b1;
	#2;
	s2 = 1'b0;
	s1 = 1'b1;
	s0 = 1'b0;
	#2;
	s2 = 1'b0;
	s1 = 1'b1;
	s0 = 1'b1;
	#2;
	s2 = 1'b1;
	s1 = 1'b0;
	s0 = 1'b0;
     end // initial begin
endmodule // DEMUX_8WAY_TB

