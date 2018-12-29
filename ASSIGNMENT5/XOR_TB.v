module XOR_TB;
wire out;
reg in0,in1;
XOR xor0(out,in0,in1);
initial
  begin
     $dumpfile("XOR_TB.vcd");
     $dumpvars(0,XOR_TB);
		#10;
		in0 = 1'b0;in1 = 1'b0;
		#10;
		in0 = 1'b0;in1 = 1'b1;
		#10;
		in0 = 1'b1;in1 = 1'b0;
		#10;
		in0 = 1'b1;in1 = 1'b1;
	end
endmodule
