module ADDER_32BIT_TB;
   wire[31:0] sum;
   wire       carry;
   reg [31:0] a,b;
   reg 	      cin;
   ADDER_32BIT add0(sum,carry,a,b,cin);
   integer    i,j;
   initial
     begin
	$dumpfile("ADDER_32BIT_TB.vcd");
	$dumpvars(0,ADDER_32BIT_TB);
	for (i = 0;i<=15;i=i+1)
	  for(j = 0 ;j<=15;j=j+1)
	    begin
	       a = i;
	       b = j;
	       cin = 0;
	       #10;
	    end
     end
endmodule // ADDER_32BIT_TB
