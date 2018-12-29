module AND_16BIT(out,in0,in1);
   input[15:0] in0,in1;
   output [15:0] out;
   AND and0[15:0](out,in0,in1);
endmodule // AND_16BIT
