module COMPUTER_TB;
   wire[31:0] out;
   reg [31:0] instruction,x,y;
   reg [2:0]  address;
   reg 	      reset;
   COMPUTER comp0(out,instruction,address,reset,x,y);
   integer i,j;
   initial
     begin
	x = 3;y = 4;
	j = y;
	y = 3;
	for (i = 1;i<j;i= i+1)
	begin
		instruction = 32'b00000000000000000000010100110100;
		address = 0;
		reset = 1'b1;
		x <= out;
		#1000;
	end
     end
endmodule // COMPUTER_TB
