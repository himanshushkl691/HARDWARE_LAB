module DIV_REM(quot,rem,a,b);
   input[31:0] a,b;
   output [31:0] quot,rem;
   reg [31:0] 	 quot,rem;
   always@(a,b)
     begin
	quot = 0;
	rem = a;
	while(rem>=b)
	  begin
	     rem = rem - b;
	     quot = quot + 1;
	  end
     end
endmodule // DIV_REM
