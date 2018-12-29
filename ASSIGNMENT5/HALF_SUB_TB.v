module HALF_SUB_TB;
wire diff,borr;
reg a,b;
HALF_SUB hs0(diff,borr,a,b);
initial
  begin
     $dumpfile("HALF_SUB_TB.vcd");
     $dumpvars(0,HALF_SUB_TB);
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
