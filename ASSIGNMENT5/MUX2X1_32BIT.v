module MUX2X1_32BIT(out,s0,in0,in1);
   input[31:0] in0,in1;
   output [31:0] out;
   input 	 s0;
   MUX2X1 mux0[31:0](out,s0,in0,in1);
endmodule // MUX2X1_16BIT
