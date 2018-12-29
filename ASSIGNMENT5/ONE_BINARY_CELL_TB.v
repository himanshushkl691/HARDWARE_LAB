module BINARY_CELL_TB;
wire out;
reg in,clk,write,en;
ONE_BINARY_CELL obc(out,in,write,clk,en);
integer i,j,k,l;
initial
  begin
     $dumpfile("BINARY_CELL_TB.vcd");
     $dumpvars(0,BINARY_CELL_TB);
     
	en = 1;
	for (i = 0;i<=10;i=i+1)
	for (j = 0;j<=1;j=j+1)
	for (k = 0;k<=1;k=k+1)
	for (l = 0;l<=1;l=l+1)
	begin
		#2;in = j;#2;write = k;#2;clk = l;#10;
	end	
end
endmodule
