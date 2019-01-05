module COMPUTER_TB;
   wire[31:0] out;
   reg [31:0] instruction,x,y;
   reg [2:0]  address;
   reg 	      reset;
   COMPUTER comp0(out,instruction,address,reset,x,y);
   initial
     begin
	x = 3;y = 4;
	instruction = 32'b00000000000000000000010101000011;
	address = 0;
	reset = 1'b1;
	#100;
	x = 5;y=16;
	instruction = 32'b00000000000000000001010101000011;
	address = 1;
	reset = 1'b0;
	#100;
	x = 5;y = 16;
	instruction = 32'b00000000000000000010010101000011;
	address = 2;
	reset = 1'b0;
     end
endmodule // COMPUTER_TB
