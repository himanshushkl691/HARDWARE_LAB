module ALU(out,s,x,y);
   input[31:0] x,y;
   output [31:0] out;
   input 	 s;
   wire [31:0] 	 in0,in1,in2;
   ADDER_32BIT add0(in0,,x,y,0);
   SUBTRACTOR sub0(in1,,x,y,0);
   /*MULTIPLIER mult0(in0,x,y);
   DIV_REM divrem0(in1,in2,x,y);
   MUX3X1_32BIT mux0(out,s1,s0,in0,in1,in2);*/
   MUX2X1_32BIT mux0(out,s,in0,in1);
endmodule // ALU


