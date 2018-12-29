module SUBTRACTOR_TB;
   wire[31:0] diff;
   wire       borr;
   reg [31:0] a,b;
   reg 	      bin;
   SUBTRACTOR sub0(diff,borr,a,b,bin);
   integer    i,j;
   initial
     begin
	$dumpfile("SUBTRACTOR_TB.vcd");
	$dumpvars(0,SUBTRACTOR_TB);
	for (i = 0;i<=15;i=i+1)
	  for(j = 0 ;j<=15;j=j+1)
	    begin
	       a = i;
	       b = j;
	       bin = 0;
	       #10;
	    end
     end // initial begin
endmodule // SUBTRACTOR_TB
