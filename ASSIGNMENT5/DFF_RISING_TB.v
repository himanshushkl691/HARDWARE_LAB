module DFF_RISING_TB;
   reg clk,d;
   wire q,q_bar;
   DFF_RISING dff0(q,q_bar,d,clk);
   initial
     begin
	$dumpfile("DFF_RISING_TB.vcd");
	$dumpvars(0,DFF_RISING_TB);
	
	d = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;
	
	#10;
	d = 1'b1;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;

     end // initial begin
endmodule // DFF_RISING_TB

	
