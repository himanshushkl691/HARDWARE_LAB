module HALF_ADDER_TB;
wire sum,carry;
reg a,b;
HALF_ADDER ha0(sum,carry,a,b);
initial
  begin
     $dumpfile("HALF_ADDER_TB.vcd");
     $dumpvars(0,HALF_ADDER_TB);
		#10;
		a = 1'b0;b = 1'b0;
		#10;
		a = 1'b0;b = 1'b1;
		#10;
		a = 1'b1;b = 1'b0;
		#10;
		a = 1'b1;b = 1'b1;
	end
endmodule
