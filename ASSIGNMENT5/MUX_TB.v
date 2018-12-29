module MUX2X1_TB;
wire out;
reg s0,in0,in1;
MUX2X1 mux0(out,s0,in0,in1);
initial
  begin
     $dumpfile("MUX2X1_TB.vcd");
     $dumpvars(0,MUX2X1_TB);
		#10;
		s0 = 1'b0;in0 = 1'b0;in1 = 1'b0;
		#10;
		s0 = 1'b0;in0 = 1'b0;in1 = 1'b1;
		#10;
		s0 = 1'b0;in0 = 1'b1;in1 = 1'b0;
		#10;
		s0 = 1'b0;in0 = 1'b1;in1 = 1'b1;
		#10;
		s0 = 1'b1;in0 = 1'b0;in1 = 1'b0;
		#10;
		s0 = 1'b1;in0 = 1'b0;in1 = 1'b1;
		#10;
		s0 = 1'b1;in0 = 1'b1;in1 = 1'b0;
		#10;
		s0 = 1'b1;in0 = 1'b1;in1 = 1'b1;
	end
endmodule
