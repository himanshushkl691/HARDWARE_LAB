module MUX3X1_32BIT(out,s1,s0,in0,in1,in2);
   input[31:0] in0,in1,in2;
   input s1,s0;
   output [31:0] out;
   wire [31:0] 	 out0;
   MUX2X1_32BIT mux0(out0,s0,in0,in1);
   MUX2X1_32BIT mux1(out,s1,out0,in2);
endmodule // MUX3X1
