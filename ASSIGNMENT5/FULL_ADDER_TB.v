module FULL_ADDER_TB;
wire sum,carry;
reg a,b,cin;
FULL_ADDER fa0(sum,carry,a,b,cin);
initial
  begin
     $dumpfile("FULL_ADDER_TB.vcd");
     $dumpvars(0,FULL_ADDER_TB);
		#10;
		a = 1'b0;b = 1'b0;cin = 1'b0;
		#10;
		a = 1'b0;b = 1'b0;cin = 1'b1;
		#10;
		a = 1'b0;b = 1'b1;cin = 1'b0;
		#10;
		a = 1'b0;b = 1'b1;cin = 1'b1;
		#10;
		a = 1'b1;b = 1'b0;cin = 1'b0;
		#10;
		a = 1'b1;b = 1'b0;cin = 1'b1;
		#10;
		a = 1'b1;b = 1'b1;cin = 1'b0;
		#10
		a = 1'b1;b = 1'b1;cin = 1'b1;
	end
endmodule
