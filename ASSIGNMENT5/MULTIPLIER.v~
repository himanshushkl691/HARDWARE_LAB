module MULTIPLIER(prod,a,b);
   input[31:0] a,b;
   output [31:0] prod;
   reg [31:0] 	 prod,x;
   integer 	 i;
   always @(a,b)
     begin
	x = a;
	prod = 0;
	for(i = 0;i<b;i=i+1)
	  begin
	     if(b[i])
	       prod = prod + x;
	     x=x<<1;
	  end
     end // always @ (a,b)
endmodule // MULTIPLIER
