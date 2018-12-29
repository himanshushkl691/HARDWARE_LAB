module ALU_TB;
   wire[31:0] out;
   reg [31:0] x,y;
   reg 	      s0,s1;
   ALU alu0(out,s1,s0,x,y);
   initial
     begin
	$dumpfile("ALU_TB.vcd");
	$dumpvars(0,ALU_TB);
	
	x = 73;
	y = 10;
	//multiply
	#100;
	s1 = 1'b0;
	s0 = 1'b0;
	//quotient
	#100;
	s1 = 1'b0;
	s0 = 1'b1;
	//remainder
	#100;
	s1 = 1'b1;
	s0 = 1'b0;
	#100;
	x = 730;
	y = 10;
	//multiply
	#100;
	s1 = 1'b0;
	s0 = 1'b0;
	//quotient
	#100;
	s1 = 1'b0;
	s0 = 1'b1;
	//remainder
	#100;
	s1 = 1'b1;
	s0 = 1'b0;
     end // initial begin
endmodule // ALU_TB
